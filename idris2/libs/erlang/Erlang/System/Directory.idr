module Erlang.System.Directory

import Erlang
import public Erlang.System.File


export
createDir : HasIO io => String -> io (Either FileError ())
createDir dirPath = do
  result <- erlUnsafeCall ErlTerm "file" "make_dir" [MkBinary dirPath]
  pure $ erlDecodeDef
    (Left unknownError)
    (exact (MkAtom "ok") *> pure (Right ())
      <|> map Left error)
    result

export
changeDir : HasIO io => String -> io Bool
changeDir dirPath = do
  result <- erlUnsafeCall ErlTerm "file" "set_cwd" [MkBinary dirPath]
  pure $ erlDecodeDef False (exact (MkAtom "ok") *> pure True) result

export
currentDir : HasIO io => io (Maybe String)
currentDir = do
  result <- erlUnsafeCall ErlTerm "file" "get_cwd" []
  pure $ erlDecodeMay (map (\(MkTuple2 _ dirPath) => dirPath) (tuple2 (exact (MkAtom "ok")) string)) result

export
removeDir : HasIO io => String -> io ()
removeDir dirPath = do
  erlUnsafeCall ErlTerm "file" "del_dir_r" [MkBinary dirPath]
  pure ()

-- TODO: Should this function return `.` and `..`? The Chez codegen does this
export
dirEntries : HasIO io => String -> io (Either FileError (List String))
dirEntries dirPath = do
  result <- erlUnsafeCall ErlTerm "file" "list_dir" [MkBinary dirPath]
  pure $ erlDecodeDef
    (Left unknownError)
    (map (\(MkTuple2 _ files) => Right files) (tuple2 (exact (MkAtom "ok")) (list string))
      <|> map Left error)
    result

export
dirExists : HasIO io => String -> io Bool
dirExists dirPath = do
  result <- erlUnsafeCall ErlTerm "filelib" "is_dir" [MkBinary dirPath]
  pure $ erlDecodeDef False (exact (MkAtom "true") *> pure True) result
