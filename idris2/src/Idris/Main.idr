module Main

import Compiler.Common
import Compiler.Erlang.Erlang
import Idris.Driver

main : IO ()
main = mainWithCodegens [("erlang", codegenErlang)]
