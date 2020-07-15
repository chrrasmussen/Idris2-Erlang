module Libraries.Utils.Escript

import Data.List
import Erlang


export
getEscriptPath : IO (Maybe String)
getEscriptPath = do
  Right result <- erlCall "escript" "script_name" []
    | Left _ => pure Nothing
  pure $ erlDecodeMay (map (\(MkCharlist str) => str) charlist) result

export
data EscriptHandle : Type where
  MkEscriptHandle : (zipHandle : ErlTerm) -> EscriptHandle

export
openArchive : (archivePath : String) -> IO (Maybe EscriptHandle)
openArchive archivePath = do
  extractResult <- pure $ erlUnsafeCall ErlTerm "escript" "extract" [MkCharlist archivePath, the (ErlList _) []]
  let Right sections = erlDecode (okTuple any) extractResult
    | Left _ => pure Nothing
  archiveResult <- pure $ erlUnsafeCall ErlTerm "proplists" "lookup" [MkAtom "archive", sections]
  let Right (MkTuple2 _ archive) = erlDecode (tuple2 any any) archiveResult
    | Left _ => pure Nothing
  zipOpenResult <- pure $ erlUnsafeCall ErlTerm "zip" "zip_open" [archive, the (ErlList _) [MkAtom "memory"]]
  let Right zipHandle = erlDecode (okTuple any) zipOpenResult
    | Left _ => pure Nothing
  pure $ Just $ MkEscriptHandle zipHandle

export
closeArchive : EscriptHandle -> IO ()
closeArchive (MkEscriptHandle zipHandle) = do
  ignore $ pure $ erlUnsafeCall ErlTerm "zip" "zip_close" [zipHandle]

export
listFiles : EscriptHandle -> IO (Maybe (List String))
listFiles (MkEscriptHandle zipHandle) = do
  result <- pure $ erlUnsafeCall ErlTerm "zip" "zip_list_dir" [zipHandle]
  let Right files = erlDecode (okTuple (list row)) result
    | Left _ => pure Nothing
  pure $ Just (mapMaybe id files)
  where
    zipFile : ErlDecoder String
    zipFile = map (\(MkTuple6 _ (MkCharlist fname) _ _ _ _) => fname) (tuple6 (exact (MkAtom "zip_file")) charlist any any any any)
    row : ErlDecoder (Maybe String)
    row = map Just zipFile <|> (any *> pure Nothing)

export
readFile : EscriptHandle -> (filePath : String) -> IO (Maybe String)
readFile (MkEscriptHandle zipHandle) filePath = do
  zipGetResult <- pure $ erlUnsafeCall ErlTerm "zip" "zip_get" [MkCharlist filePath, zipHandle]
  let Right (MkTuple2 _ contents) = erlDecode (okTuple (tuple2 charlist string)) zipGetResult
    | Left _ => pure Nothing
  pure $ Just contents
