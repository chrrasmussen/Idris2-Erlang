module Erlang.System.Directory

import Erlang
import public Erlang.System.File


export
createDir : String -> IO (Either FileError ())
createDir dir = do
  result <- erlUnsafeCall ErlTerm "file" "make_dir" [dir]
  pure $ erlDecodeDef
    (Left unknownError)
    (exact (MkAtom "ok") *> pure (Right ())
      <|> map Left error)
    result

export
changeDir : String -> IO Bool
changeDir dir = do
  result <- erlUnsafeCall ErlTerm "file" "set_cwd" [dir]
  pure $ erlDecodeDef False (exact (MkAtom "ok") *> pure True) result

export
currentDir : IO (Maybe String)
currentDir = do
  result <- erlUnsafeCall ErlTerm "file" "get_cwd" []
  pure $ erlDecodeMay (map (\(MkTuple2 _ dir) => dir) (tuple2 (exact (MkAtom "ok")) string)) result

export
removeDir : String -> IO ()
removeDir dirName = do
  erlUnsafeCall ErlTerm "file" "del_dir_r" [dirName]
  pure ()

-- TODO: Should this function return `.` and `..`? The Chez codegen does this
export
dirEntries : String -> IO (Either FileError (List String))
dirEntries dir = do
  result <- erlUnsafeCall ErlTerm "file" "list_dir" [dir]
  pure $ erlDecodeDef
    (Left unknownError)
    (map (\(MkTuple2 _ files) => Right files) (tuple2 (exact (MkAtom "ok")) (list string))
      <|> map Left error)
    result

export
dirExists : String -> IO Bool
dirExists dir = do
  result <- erlUnsafeCall ErlTerm "filelib" "is_dir" [dir]
  pure $ erlDecodeDef False (exact (MkAtom "true") *> pure True) result
