module Main

import Idris.Driver
import Compiler.Erlang.Erlang

main : IO ()
main = mainWithCodegens [("erlang", codegenErlang)]
