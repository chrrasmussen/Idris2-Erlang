module Idris.Main

import Data.So
import Idris.Driver
import Compiler.Common
import Compiler.Erlang.Erlang
import Libraries.Utils.System
import Erlang
import Erlang.Debug
import Erlang.System

%cg erlang export exports

codegens : List (String, Codegen)
codegens = [("erlang", codegenErlang)]

-- Atom needs to stay in sync with:
-- Compiler.Erlang.Codegen.NamedCExpToErlExpr.RtsSupport.runTimeErrorTag
errorAtom : ErlAtom
errorAtom = MkAtom "$idris_error"

defaultEscriptExitCode : ExitCode
defaultEscriptExitCode = ExitFailure 127

throwReasonDecoder : ErlDecoder (Either String ExitCode)
throwReasonDecoder =
  ((\(MkTuple2 _ code) => Right $ toExitCode (cast code)) <$> tuple2 (exact softExitAtom) integer)
    <|> ((\(MkTuple2 _ errorMsg) => Left errorMsg) <$> tuple2 (exact errorAtom) string)
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
      case erlDecode throwReasonDecoder reason of
        Right (Right code) => do
          pure $ Left code
        Right (Left errorMsg) => do
          putStrLn errorMsg
          pure $ Left defaultEscriptExitCode
        Left _ => do
          -- An error not originating from the Erlang code generator or the Idris compiler
          erlPrintLn reason
          pure $ Left defaultEscriptExitCode
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
  ignore $ erlUnsafeCall ErlTerm "io" "setopts" [the (ErlList _) [MkTuple2 (MkAtom "encoding") (MkAtom "unicode")]]
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
