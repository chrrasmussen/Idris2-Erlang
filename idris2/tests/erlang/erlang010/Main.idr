module Main

import Erlang.System

main : IO ()
main = do
  args <- getArgs
  printLn args
