module Main

import Erlang


%cg erlang export exports


printHello : IO ()
printHello =
  putStrLn "Hello"


exports : ErlExport
exports =
  Fun "foo" 42 <+>
    Fun "print_hello" (MkErlIOFun0 printHello)
