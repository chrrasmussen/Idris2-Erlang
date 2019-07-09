module Compiler.Erlang.FileUtils

%default total

-- TODO: Should write tests
-- TODO: Only handles forward slash as path separator

export
quoted : String -> String
quoted path = "'" ++ path ++ "'"

export
isAbsolutePath : String -> Bool
isAbsolutePath path =
  case unpack path of
    '/' :: _ => True
    _ => False

export
dirname : String -> Maybe String
dirname path =
  let components = filter (/= "") $ split (== '/') path
  in case reverse components of
    _ :: dirComponents@(_ :: _) =>
      let prefix = if isAbsolutePath path then "/" else ""
      in Just (prefix ++ concat (intersperse "/" (reverse dirComponents)))
    _ => Nothing

export
basename : String -> Maybe String
basename path =
  let components = filter (/= "") $ split (== '/') path
  in case reverse components of
    filename :: _ => Just filename
    _ => Nothing

export
extension : String -> Maybe String
extension path = do
  filename <- basename path
  let components = split (== '.') filename
  case reverse components of
    ext :: _ :: _ => Just ext
    _ => Nothing

export
rootname : String -> String
rootname path =
  case extension path of
    Nothing => path
    Just ext => substr 0 (minus (length path) (length ext + 1)) path

export
joinPaths : List String -> Maybe String
joinPaths [] = Nothing
joinPaths paths@(mainPath :: subPaths) =
  if all (not . isAbsolutePath) subPaths
    then Just (concat (intersperse "/" paths))
    else Nothing
