module Main

import Erlang


%cg erlang export exports


printHello : IO ErlAtom
printHello = do
  putStrLn "Hello"
  pure (MkAtom "ok")


exports : ErlExport
exports =
  Fun "foo" 42 <+>
    Fun "print_hello" (MkIOFun0 printHello)
