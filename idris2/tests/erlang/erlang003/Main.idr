module Main

import Erlang.System.File

main : IO ()
main = do
  Right tempFile <- openFile "temp.txt" WriteTruncate
    | Left _ => putStrLn "Failed to open"
  fPutStr tempFile "Hello world"
  closeFile tempFile
  Right contents <- readFile "temp.txt"
    | Left _ => putStrLn "Failed to read file"
  putStrLn contents
