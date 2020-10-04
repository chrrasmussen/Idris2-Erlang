module Erlang.System.File

import Data.List
import Data.Strings
import Erlang


%default total


public export
data Mode = Read | WriteTruncate | Append | ReadWrite | ReadWriteTruncate | ReadAppend

public export
data FileError
  = GenericFileError Int -- errno
  | FileReadError
  | FileWriteError
  | FileNotFound
  | PermissionDenied
  | FileExists

export
Show FileError where
  show (GenericFileError errno) = "File error: " ++ show errno
  show FileReadError = "File Read Error"
  show FileWriteError = "File Write Error"
  show FileNotFound = "File Not Found"
  show PermissionDenied = "Permission Denied"
  show FileExists = "File Exists"

export
unknownError : FileError
unknownError = GenericFileError 0

export
reason : ErlDecoder FileError
reason =
  (exact (MkAtom "enoent") *> pure FileNotFound)
    <|> (exact (MkAtom "eacces") *> pure PermissionDenied)
    <|> (exact (MkAtom "eexist") *> pure FileExists)
    <|> pure unknownError

export
error : ErlDecoder FileError
error =
  errorTuple reason


export
data File : Type where
  FHandle : ErlTerm -> File

export
stdin : File
stdin = FHandle (toErlTerm (MkAtom "standard_io"))

export
stdout : File
stdout = FHandle (toErlTerm (MkAtom "standard_io"))

export
stderr : File
stderr = FHandle (toErlTerm (MkAtom "standard_error"))

-- TODO: Match on all cases of Mode?
fileModes : Mode -> ErlTerm
fileModes mode =
  let flags = case mode of
        Read          => [MkAtom "read"]
        WriteTruncate => [MkAtom "write"]
        Append        => [MkAtom "append"]
        ReadWrite     => [MkAtom "read", MkAtom "write"]
        _ => []
  in toErlTerm $ the (List ErlAtom) (MkAtom "binary" :: flags)

export
openFile : HasIO io => (filePath : String) -> Mode -> io (Either FileError File)
openFile filePath mode = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "open" [filePath, fileModes mode]
  pure $ erlDecodeDef (Left unknownError)
    (map (\pid => Right (FHandle (toErlTerm pid))) (okTuple pid)
      <|> map Left error)
    result

export
closeFile : HasIO io => File -> io ()
closeFile (FHandle f) = do
  pure $ erlUnsafeCall ErlTerm "file" "close" [f]
  pure ()

export
fGetLine : HasIO io => File -> io (Either FileError String)
fGetLine (FHandle f) = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "read_line" [f]
  pure $ erlDecodeDef (Left unknownError)
    (map Right (okTuple string)
      <|> exact (MkAtom "eof") *> pure (Right "")
      <|> map Left error)
    result

export
fGetChar : HasIO io => File -> io (Either FileError Char)
fGetChar (FHandle f) = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "read" [f, 1]
  pure $ erlDecodeDef (Left unknownError)
    (map (\(MkCharlist str) => maybe (Left FileReadError) (Right . fst) (strUncons str)) (okTuple charlist)
      <|> exact (MkAtom "eof") *> pure (Left FileReadError)
      <|> map Left error)
    result

export
fPutStr : HasIO io => File -> String -> io (Either FileError ())
fPutStr (FHandle f) str = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "write" [f, str]
  pure $ erlDecodeDef (Left unknownError)
    (exact (MkAtom "ok") *> pure (Right ())
      <|> map Left error)
    result

export
fPutStrLn : HasIO io => File -> String -> io (Either FileError ())
fPutStrLn f str = fPutStr f (str ++ "\n")

export
fEOF : HasIO io => File -> io Bool
fEOF (FHandle f) = do
  readResult <- pure $ erlUnsafeCall ErlTerm "file" "read" [f, 1]
  erlDecodeDef (pure True)
    (okTuple any *> pure scanBack <|>
      exact (MkAtom "eof") *> pure (pure True) <|>
      errorTuple any *> pure (pure True))
    readResult
  where
    -- If `file:read/2` returns `{ok, _}` we need to scan back to the original position
    scanBack : io Bool
    scanBack = do
      scanResult <- pure $ erlUnsafeCall ErlTerm "file" "position" [f, MkTuple2 (MkAtom "cur") (-1)]
      pure $ erlDecodeDef True
        (okTuple any *> pure False <|>
          errorTuple any *> pure True)
        scanResult

export
readFile : HasIO io => String -> io (Either FileError String)
readFile file = do
  readResult <- pure $ erlUnsafeCall ErlTerm "file" "read_file" [file]
  pure $ erlDecodeDef (Left FileReadError)
    (Right <$> okTuple string <|>
      Left <$> error)
    readResult

export
writeFile : HasIO io => (filepath : String) -> (contents : String) -> io (Either FileError ())
writeFile filePath contents = do
  Right h <- openFile filePath WriteTruncate
    | Left err => pure (Left err)
  Right () <- fPutStr h contents
    | Left err => do
      closeFile h
      pure (Left err)
  closeFile h
  pure (Right ())


-- TODO: Is this necessary? Currently a no-op.
export
fflush : HasIO io => File -> io ()
fflush (FHandle f) = do
  pure ()

fileInfo : HasIO io => (filePath : String) -> (fieldIndex : Nat) -> ErlDecoder a -> io (Either FileError a)
fileInfo filePath fieldIndex decoder = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "read_file_info" [filePath, the (ErlList _) [MkTuple2 (MkAtom "time") (MkAtom "posix")]]
  let Right info = erlDecodeDef
        (Left unknownError)
        (map Right (okTuple any)
          <|> map Left error)
        result
        | Left err => pure (Left err)
  -- Returns an exception if index does not exist
  Right fieldValue <- erlCall "erlang" "element" [cast fieldIndex + 2, info]
    | Left _ => pure (Left unknownError)
  pure $ erlDecodeDef
    (Left unknownError)
    (map Right decoder)
    fieldValue

export
fileSize : HasIO io => (filePath : String) -> io (Either FileError Int)
fileSize filePath =
   fileInfo filePath 0 (map cast integer)

export
fileAccessTime : HasIO io => (filePath : String) -> io (Either FileError Int)
fileAccessTime filePath =
  fileInfo filePath 3 (map cast integer)

export
fileModifiedTime : HasIO io => (filePath : String) -> io (Either FileError Int)
fileModifiedTime filePath =
  fileInfo filePath 4 (map cast integer)

export
fileStatusTime : HasIO io => (filePath : String) -> io (Either FileError Int)
fileStatusTime filePath =
  fileInfo filePath 5 (map cast integer)

export
removeFile : HasIO io => String -> io (Either FileError ())
removeFile filePath = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "delete" [filePath]
  pure $ erlDecodeDef
    (Left unknownError)
    ((exact (MkAtom "ok") *> pure (Right ()))
      <|> map Left error)
    result

-- TODO: Add `fPoll`? It is not used in the project.


namespace FileMode
  public export
  data FileMode = Read | Write | Execute

public export
record Permissions where
  constructor MkPermissions
  user   : List FileMode
  group  : List FileMode
  others : List FileMode

mkMode : Permissions -> Int
mkMode p =
  getMs (user p) * 64 + getMs (group p) * 8 + getMs (others p)
  where
    getM : FileMode -> Int
    getM Read = 4
    getM Write = 2
    getM Execute = 1

    getMs : List FileMode -> Int
    getMs = sum . map getM

export
chmodRaw : HasIO io => (filePath : String) -> Int -> io (Either FileError ())
chmodRaw filePath p = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "change_mode" [filePath, p]
  pure $ erlDecodeDef
    (Left unknownError)
    ((exact (MkAtom "ok") *> pure (Right ()))
      <|> map Left error)
    result

export
chmod : HasIO io => String -> Permissions -> io (Either FileError ())
chmod fname p = chmodRaw fname (mkMode p)
