module Main

import System.File

main : IO ()
main = do
  Right tempFile <- openFile "temp.txt" WriteTruncate
  fPutStr tempFile "Hello world"
  closeFile tempFile
  Right contents <- readFile "temp.txt"
  putStrLn contents
