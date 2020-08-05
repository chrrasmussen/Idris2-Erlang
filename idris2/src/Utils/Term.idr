module Utils.Term

import Data.Strings
import Erlang

systemCmd : String -> IO String
systemCmd cmd = do
  MkCharlist result <- pure $ erlUnsafeCall ErlCharlist "os" "cmd" [MkCharlist cmd]
  pure result

export
setupTerm : IO ()
setupTerm = pure ()

export
getTermCols : IO Int
getTermCols = do
  size <- systemCmd "tput cols"
  pure (cast (trim size))

export
getTermLines : IO Int
getTermLines = do
  size <- systemCmd "tput lines"
  pure (cast (trim size))
