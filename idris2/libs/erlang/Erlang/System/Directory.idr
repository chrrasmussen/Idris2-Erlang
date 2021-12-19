module Erlang.System.Directory

import Erlang
import public Erlang.System.File


%default total


export
createDir : HasIO io => String -> io (Either FileError ())
createDir dirPath = do
  result <- erlUnsafeCall ErlTerm "file" "make_dir" [dirPath]
  pure $ erlDecodeDef
    (Left unknownError)
    (exact (MkAtom "ok") *> pure (Right ())
      <|> map Left error)
    result

export
changeDir : HasIO io => String -> io Bool
changeDir dirPath = do
  result <- erlUnsafeCall ErlTerm "file" "set_cwd" [dirPath]
  pure $ erlDecodeDef False (exact (MkAtom "ok") *> pure True) result

export
currentDir : HasIO io => io (Maybe String)
currentDir = do
  result <- erlUnsafeCall ErlTerm "file" "get_cwd" []
  pure $ erlDecodeMay (map (\(MkCharlist dirPath) => dirPath) (okTuple charlist)) result

export
removeDir : HasIO io => String -> io ()
removeDir dirPath = do
  ignore $ erlUnsafeCall ErlTerm "file" "del_dir_r" [dirPath]

-- TODO: Should this function return `.` and `..`? The Chez codegen does this
export
listDir : HasIO io => String -> io (Either FileError (List String))
listDir dirPath = do
  result <- erlUnsafeCall ErlTerm "file" "list_dir" [dirPath]
  pure $ erlDecodeDef
    (Left unknownError)
    (map (\files => Right (map (\(MkCharlist file) => file) files)) (okTuple (list charlist))
      <|> map Left error)
    result

export
dirExists : HasIO io => String -> io Bool
dirExists dirPath = do
  result <- erlUnsafeCall ErlTerm "filelib" "is_dir" [dirPath]
  pure $ erlDecodeDef False (exact (MkAtom "true") *> pure True) result
