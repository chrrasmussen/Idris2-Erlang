module Erlang.System.File

import Data.List
import Data.Strings
import Erlang


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
  map (\(MkTuple2 _ reason) => reason) (tuple2 (exact (MkAtom "error")) reason)


export
data File : Type where
  FHandle : ErlTerm -> File

export
stdin : File
stdin = FHandle (cast (MkAtom "standard_io"))

export
stdout : File
stdout = FHandle (cast (MkAtom "standard_io"))

export
stderr : File
stderr = FHandle (cast (MkAtom "standard_error"))

-- TODO: Match on all cases of Mode?
fileModes : Mode -> ErlTerm
fileModes mode =
  let flags = case mode of
        Read          => [MkAtom "read"]
        WriteTruncate => [MkAtom "write"]
        Append        => [MkAtom "append"]
        ReadWrite     => [MkAtom "read", MkAtom "write"]
        _ => []
  in cast $ the (List ErlAtom) (MkAtom "binary" :: flags)

export
openFile : (filePath : String) -> Mode -> IO (Either FileError File)
openFile filePath mode = do
  result <- erlUnsafeCall ErlTerm "file" "open" [MkBinary filePath, fileModes mode]
  pure $ erlDecodeDef (Left unknownError)
    (map (\(MkTuple2 ok pid) => Right (FHandle (cast pid))) (tuple2 (exact (MkAtom "ok")) pid)
      <|> map Left error)
    result

export
closeFile : File -> IO ()
closeFile (FHandle f) = do
  erlUnsafeCall ErlTerm "file" "close" [f]
  pure ()

export
fGetLine : File -> IO (Either FileError String)
fGetLine (FHandle f) = do
  result <- erlUnsafeCall ErlTerm "file" "read_line" [f]
  pure $ erlDecodeDef (Left unknownError)
    (map (\(MkTuple2 ok line) => Right (erlUnsafeCast String line)) (tuple2 (exact (MkAtom "ok")) any)
      <|> exact (MkAtom "eof") *> pure (Right "")
      <|> map Left error)
    result

export
fGetChar : File -> IO (Either FileError Char)
fGetChar (FHandle f) = do
  result <- erlUnsafeCall ErlTerm "file" "read" [f, 1]
  pure $ erlDecodeDef (Left unknownError)
    (map (\(MkTuple2 ok character) => Right character) (tuple2 (exact (MkAtom "ok")) codepoint)
      <|> exact (MkAtom "eof") *> pure (Left FileReadError)
      <|> map Left error)
    result

export
fPutStr : File -> String -> IO (Either FileError ())
fPutStr (FHandle f) str = do
  result <- erlUnsafeCall ErlTerm "file" "write" [f, str]
  pure $ erlDecodeDef (Left unknownError)
    (exact (MkAtom "ok") *> pure (Right ())
      <|> map Left error)
    result

export
fPutStrLn : File -> String -> IO (Either FileError ())
fPutStrLn f str = fPutStr f (str ++ "\n")

export
fEOF : File -> IO Bool
fEOF (FHandle f) = do
  readResult <- erlUnsafeCall ErlTerm "file" "read" [f, 1]
  erlDecodeDef (pure True)
    (tuple2 (exact (MkAtom "ok")) any *> pure scanBack <|>
      exact (MkAtom "eof") *> pure (pure True) <|>
      tuple2 (exact (MkAtom "error")) any *> pure (pure True))
    readResult
  where
    -- If `file:read/2` returns `{ok, _}` we need to scan back to the original position
    scanBack : IO Bool
    scanBack = do
      scanResult <- erlUnsafeCall ErlTerm "file" "position" [f, MkTuple2 (MkAtom "cur") (-1)]
      pure $ erlDecodeDef True
        (tuple2 (exact (MkAtom "ok")) any *> pure False <|>
          tuple2 (exact (MkAtom "error")) any *> pure True)
        scanResult

export
readFile : String -> IO (Either FileError String)
readFile file = do
  Right h <- openFile file Read
    | Left err => pure (Left err)
  Right content <- read [] h
    | Left err => do
      closeFile h
      pure (Left err)
  closeFile h
  pure (Right (fastAppend content))
  where
    read : List String -> File -> IO (Either FileError (List String))
    read acc h = do
      eof <- fEOF h
      if eof
        then pure (Right (reverse acc))
        else do
          Right str <- fGetLine h
            | Left err => pure (Left err)
          read (str :: acc) h

export
writeFile : (filepath : String) -> (contents : String) -> IO (Either FileError ())
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
fflush : File -> IO ()
fflush (FHandle f) = do
  pure ()

fileInfo : (filePath : String) -> (fieldIndex : Nat) -> ErlDecoder a -> IO (Either FileError a)
fileInfo filePath fieldIndex decoder = do
  result <- erlUnsafeCall ErlTerm "file" "read_file_info" [MkBinary filePath, the (ErlList _) [MkTuple2 (MkAtom "time") (MkAtom "posix")]]
  let Right (MkTuple2 _ info) = erlDecodeDef
        (Left unknownError)
        (map Right (tuple2 (exact (MkAtom "ok")) any)
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
fileSize : (filePath : String) -> IO (Either FileError Int)
fileSize filePath =
   fileInfo filePath 0 (map cast integer)

export
fileAccessTime : (filePath : String) -> IO (Either FileError Int)
fileAccessTime filePath =
  fileInfo filePath 3 (map cast integer)

export
fileModifiedTime : (filePath : String) -> IO (Either FileError Int)
fileModifiedTime filePath =
  fileInfo filePath 4 (map cast integer)

export
fileStatusTime : (filePath : String) -> IO (Either FileError Int)
fileStatusTime filePath =
  fileInfo filePath 5 (map cast integer)

export
removeFile : String -> IO (Either FileError ())
removeFile filePath = do
  result <- erlUnsafeCall ErlTerm "file" "delete" [MkBinary filePath]
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
chmodRaw : (filePath : String) -> Int -> IO (Either FileError ())
chmodRaw filePath p = do
  result <- erlUnsafeCall ErlTerm "file" "change_mode" [MkBinary filePath, p]
  pure $ erlDecodeDef
    (Left unknownError)
    ((exact (MkAtom "ok") *> pure (Right ()))
      <|> map Left error)
    result

export
chmod : String -> Permissions -> IO (Either FileError ())
chmod fname p = chmodRaw fname (mkMode p)
