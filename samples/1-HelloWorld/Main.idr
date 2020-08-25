module Main


||| Hello world program.
main : IO ()
main = do
  putStrLn "Hello Joe!"


||| An interactive program that asks for your name.
main2 : IO ()
main2 = do
  putStr "What's your name? "
  name <- getLine
  putStrLn ("Hello, " ++ name ++ "!")
