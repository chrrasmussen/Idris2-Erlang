module Idris.Main

import Data.So
import Idris.Driver
import Compiler.Common
import Compiler.Erlang.Erlang
import Libraries.Utils.System
import Erlang
import Erlang.System

%cg erlang export exports

codegens : List (String, Codegen)
codegens = [("erlang", codegenErlang)]


softExitDecoder : ErlDecoder ExitCode
softExitDecoder = (\(MkTuple2 _ code) => toExitCode (cast code)) <$> tuple2 (exact softExitAtom) integer
  where
    toExitCode : Int -> ExitCode
    toExitCode code =
      case choose (not $ code == 0) of
        Left prf => ExitFailure code
        Right contra => ExitSuccess

tryMainWithCodegens : List String -> IO (Either ExitCode ())
tryMainWithCodegens args = do
  Right result <- erlTryCatch $ mainWithCodegens codegens args
    | Left (MkTuple3 _ reason _) =>
      let Right code = erlDecode softExitDecoder reason
            | Left _ => pure $ Right ()
      in pure $ Left code
  pure $ Right ()

||| Program executed via `idris2 --exec main Idris.Main.idr`
main : IO ()
main = do
  (_ :: args) <- getArgs
    | _ => putStrLn "Invalid command line"
  Right () <- tryMainWithCodegens args
    | Left code => exitWith code
  pure ()

erlMain : List String -> IO ErlTerm
erlMain args = do
  ignore $ pure $ erlUnsafeCall ErlTerm "io" "setopts" [the (ErlList _) [MkTuple2 (MkAtom "encoding") (MkAtom "unicode")]]
  Right () <- tryMainWithCodegens args
    | Left code => exitWith code
  pure $ toErlTerm (MkAtom "ok")

||| Program executed via `erl -noshell -run Idris.Main start`
erlInitStart : IO ErlTerm
erlInitStart = do
  (_ :: args) <- getArgs
    | _ => pure $ toErlTerm $ MkTuple2 (MkAtom "error") (MkAtom "invalid_args")
  erlMain args

||| Program executed via `escript idris2`
erlEscriptMain : List ErlCharlist -> IO ErlTerm
erlEscriptMain args = do
  let stringArgs = map (\(MkCharlist x) => x) args
  erlMain stringArgs

||| Program run directly from Erlang
erlRun : ErlTerm -> IO ErlTerm
erlRun rawArgs = do
  let args = erlDecodeDef
        (the (List String) [])
        (list string <|>
          map (map (\(MkCharlist x) => x)) (list charlist))
        rawArgs
  Right () <- tryMainWithCodegens args
    | Left code => pure $ toErlTerm (MkAtom "error")
  pure $ toErlTerm (MkAtom "ok")


exports : ErlExport
exports =
  Fun "start" (MkIOFun0 erlInitStart)
    <+> Fun "main" (MkIOFun1 erlEscriptMain)
    <+> Fun "run" (MkIOFun1 erlRun)
