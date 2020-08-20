module Dummy

import Erlang.System.Directory

main : IO ()
main = do
  True <- dirExists "custom_build"
    | False => putStrLn "Could not find build directory"
  putStrLn "Found build directory"
