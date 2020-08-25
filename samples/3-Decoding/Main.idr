module Main

import Erlang


readFile : String -> IO (Maybe String)
readFile filename = do
  Right result <- erlCall "file" "read_file" [filename]
    | Left _ => do
      putStrLn "Failed to read file"
      pure Nothing
  let Right (MkTuple2 ok content) = erlDecode
        (tuple2 (exact (MkAtom "ok")) string)
        result
    | Left _ => do
      putStrLn "Failed to decode"
      pure Nothing
  pure $ Just content


main : IO ()
main = do
  Just content <- readFile "secret.txt"
    | Nothing => putStrLn "Failed to read content"
  putStrLn content


examplePerson : ErlAnyMap
examplePerson = insert "loves_idris" (MkAtom "true") $ insert "age" 33 $ insert "name" "Christian" empty

record Person where
  constructor MkPerson
  name : String
  age : Integer
  lovesIdris : Bool

Show Person where
  show (MkPerson name age lovesIdris) = "(MkPerson " ++ show name ++ " " ++ show age ++ " " ++ show lovesIdris ++ ")"

main2 : IO ()
main2 = do
  let Just result = erlDecodeMay
        (mapSubset
          [ "name" := string
          , "age" := integer
          , "loves_idris" := bool
          ])
        examplePerson
    | Nothing => putStrLn "Unable to decode person"
  let name = get "name" result
  let age = get "age" result
  let lovesIdris = get "loves_idris" result
  printLn (MkPerson name age lovesIdris)
