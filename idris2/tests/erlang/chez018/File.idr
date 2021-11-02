import Data.List
import Data.String
import Erlang.System.File

-- Copied from `System.File`. Testing the indiviudual functions
-- like `fGetLine`. This function is not total.
-- `readLine` is tested in `erlang/erlang003`.
idrisReadFile : HasIO io => String -> io (Either FileError String)
idrisReadFile file = do
  Right h <- openFile file Read
    | Left err => pure (Left err)
  Right content <- read [] h
    | Left err => do
      closeFile h
      pure (Left err)
  closeFile h
  pure (Right (fastConcat content))
  where
    read : List String -> File -> io (Either FileError (List String))
    read acc h = do
      eof <- fEOF h
      if eof
        then pure (Right (reverse acc))
        else do
          Right str <- fGetLine h
            | Left err => pure (Left err)
          read (str :: acc) h

main : IO ()
main
    = do Right ok <- idrisReadFile "test.txt"
               | Left err => printLn err
         putStr ok
         ignore $ writeFile "testout.txt" "abc\ndef\n"
         Right ok <- idrisReadFile "testout.txt"
               | Left err => printLn err
         putStr ok
         Right ok <- idrisReadFile "notfound"
               | Left err => printLn err
         putStr ok
