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

toFileError : Int -> FileError
toFileError 1 = FileReadError
toFileError 2 = FileWriteError
toFileError 3 = FileNotFound
toFileError 4 = PermissionDenied
toFileError x = GenericFileError (x - 256)

public export
data FileT : Bool -> Type where
  FHandle : ErlTerm -> FileT bin

public export
File : Type
File = FileT False

public export
BinaryFile : Type
BinaryFile = FileT True

export
stdin : File
stdin = FHandle (cast (MkErlAtom "standard_io"))

export
stdout : File
stdout = FHandle (cast (MkErlAtom "standard_io"))

export
stderr : File
stderr = FHandle (cast (MkErlAtom "standard_error"))

-- TODO: Match on all cases of Mode?
fileModes : (isBinary : Bool) -> Mode -> ErlTerm
fileModes isBinary mode =
  let flags = case mode of
        Read          => [MkErlAtom "read"]
        WriteTruncate => [MkErlAtom "write"]
        Append        => [MkErlAtom "append"]
        ReadWrite     => [MkErlAtom "read", MkErlAtom "write"]
        _ => []
      binMode = if isBinary then [MkErlAtom "binary"] else []
  in cast $ the (List ErlAtom) (flags ++ binMode)

-- TODO: Is FileReadError correct?
internalOpenFile : (isBinary : Bool) -> String -> Mode -> IO (Either FileError (FileT isBinary))
internalOpenFile isBinary filePath mode = do
  Right result <- erlCall "file" "open" [filePath, fileModes isBinary mode]
    | Left ex => pure (Left FileReadError)
  pure $ erlDecodeDef (Left FileReadError)
    (map (\(MkErlTuple2 ok pid) => Right (FHandle (cast pid))) (tuple2 (exact (MkErlAtom "ok")) pid))
    result

export
openFile : String -> Mode -> IO (Either FileError File)
openFile = internalOpenFile False

export
openBinaryFile : String -> Mode -> IO (Either FileError BinaryFile)
openBinaryFile = internalOpenFile True

export
closeFile : FileT t -> IO ()
closeFile (FHandle f) = do
  erlCall "file" "close" [f]
  pure ()

export
fGetLine : (h : File) -> IO (Either FileError String)
fGetLine (FHandle f) = do
  Right result <- erlCall "file" "read_line" [f]
    | Left ex => pure (Left FileReadError)
  pure $ erlDecodeDef (Left FileReadError)
    (map (\(MkErlTuple2 ok line) => Right (erlUnsafeCast String line)) (tuple2 (exact (MkErlAtom "ok")) any) <|>
      exact (MkErlAtom "eof") *> pure (Right ""))
    result

export
fPutStr : (h : File) -> String -> IO (Either FileError ())
fPutStr (FHandle f) str = do
  Right result <- erlCall "file" "write" [f, str]
    | Left ex => pure (Left FileWriteError)
  pure $ erlDecodeDef (Left FileWriteError)
    (exact (MkErlAtom "ok") *> pure (Right ()))
    result

export
fPutStrLn : (h : File) -> String -> IO (Either FileError ())
fPutStrLn f str = fPutStr f (str ++ "\n")

export
fEOF : (h : File) -> IO Bool
fEOF (FHandle f) = do
  Right readResult <- erlCall "file" "read" [f, 1]
    | Left ex => pure True
  erlDecodeDef (pure True)
    (tuple2 (exact (MkErlAtom "ok")) any *> pure scanBack <|>
      exact (MkErlAtom "eof") *> pure (pure True) <|>
      tuple2 (exact (MkErlAtom "error")) any *> pure (pure True))
    readResult
  where
    -- If `file:read/2` returns `{ok, _}` we need to scan back to the original position
    scanBack : IO Bool
    scanBack = do
      Right scanResult <- erlCall "file" "position" [f, MkErlTuple2 (MkErlAtom "cur") (-1)]
        | Left ex => pure True
      pure $ erlDecodeDef True
        (tuple2 (exact (MkErlAtom "ok")) any *> pure False <|>
          tuple2 (exact (MkErlAtom "error")) any *> pure True)
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
