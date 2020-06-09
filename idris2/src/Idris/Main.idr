module Idris.Main

import Idris.Driver
import Compiler.Common
import Compiler.Erlang.Erlang
import Erlang
import Erlang.System

%cg erlang export exports

codegens : List (String, Codegen)
codegens = [("erlang", codegenErlang)]

main : IO ()
main = do
  (_ :: args) <- getArgs
    | _ => putStrLn "Invalid command line"
  mainWithCodegens codegens args

erlMain : List String -> IO ErlTerm
erlMain args = do
  ignore $ pure $ erlUnsafeCall ErlTerm "io" "setopts" [the (ErlList _) [MkTuple2 (MkAtom "encoding") (MkAtom "unicode")]]
  mainWithCodegens codegens args
  pure $ toErlTerm (MkAtom "ok")

erlInitStart : IO ErlTerm
erlInitStart = do
  (_ :: args) <- getArgs
    | _ => pure $ toErlTerm $ MkTuple2 (MkAtom "error") (MkAtom "invalid_args")
  erlMain args

erlEscriptMain : List ErlCharlist -> IO ErlTerm
erlEscriptMain args = do
  let stringArgs = map (\(MkCharlist x) => x) args
  erlMain stringArgs

exports : ErlExport
exports =
  Fun "start" (MkIOFun0 erlInitStart)
    <+> Fun "main" (MkIOFun1 erlEscriptMain)
