module Idris.Main

import Compiler.Common
import Compiler.Erlang.Erlang
import Idris.Driver
import Compiler.Common

main : IO ()
main = mainWithCodegens [("erlang", codegenErlang)]
