module Main

import Language.Reflection
import Erlang

%default total
%language ElabReflection


%runElab generateAtomHelpers ["ok", "error"]


main : IO ()
main = do
  printLn A_ok
  printLn A_error
