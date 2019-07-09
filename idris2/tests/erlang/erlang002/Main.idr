module Main

import Data.Strings

lorem : String
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

main : IO ()
main = do
  printLn (prim__strIndex lorem 10)
  printLn (prim__strIndex lorem 50)
  printLn (prim__strIndex lorem 100)
  printLn (prim__strIndex lorem 200)
