module Erlang.System

import public System.Escape
import public Data.So
import Data.Maybe
import Data.String

import Erlang


%default total

||| Sleep for a given duration.
|||
||| The duration is specified in milliseconds.
export
sleep : HasIO io => (ms : Int) -> io ()
sleep ms = do
  ignore $ erlUnsafeCall ErlTerm "timer" "sleep" [ms]

||| Get arguments provided when launching the program.
export
getArgs : HasIO io => io (List String)
getArgs = do
  args <- erlUnsafeCall (List ErlCharlist) "init" "get_plain_arguments" []
  pure $ map (\(MkCharlist x) => x) args

||| Get all environment variables.
export
getEnvironment : HasIO io => io (List (String, String))
getEnvironment = do
  envPairs <- erlUnsafeCall (List ErlCharlist) "os" "getenv" []
  pure $ map (\(MkCharlist x) => splitEq x) envPairs
  where
    splitEq : String -> (String, String)
    splitEq str =
      let (key, str') = break (== '=') str
          (_, value) = break (/= '=') str'
      in  (key, value)

||| Try to get the value of the given environment variable.
export
getEnv : HasIO io => (key : String) -> io (Maybe String)
getEnv key = do
  result <- erlUnsafeCall ErlCharlist "os" "getenv" [MkCharlist key]
  let Right (MkCharlist str) = erlDecode charlist result
    | Left _ => pure Nothing
  pure $ Just str

||| Set an environment variable to a value.
|||
||| If `overwrite` is given the value `False`, the environment variable will
||| only be set if it is not already set.
export
setEnv : HasIO io => (key : String) -> (value : String) -> (overwrite : Bool) -> io Bool
setEnv key value overwrite = do
  shouldSetEnv <- case overwrite of
    True => pure True
    False => isNothing <$> getEnv key
  when shouldSetEnv $ do
    ignore $ erlUnsafeCall ErlTerm "os" "putenv" [MkCharlist key, MkCharlist value]
  pure True

||| Unset a given environment variable.
|||
||| Always returns true.
export
unsetEnv : HasIO io => (key : String) -> io Bool
unsetEnv key = do
  result <- erlUnsafeCall ErlTerm "os" "unsetenv" [MkCharlist key]
  pure True

||| Run a system command.
|||
||| The return value is the exit code of the command.
-- TODO: Implement with exit code
export
system : HasIO io => String -> io Int
system cmd = do
  MkCharlist output <- erlUnsafeCall ErlCharlist "os" "cmd" [MkCharlist cmd]
  putStr output
  pure 0

namespace Escaped
  export
  system : HasIO io => List String -> io Int
  system = system . escapeCmd

||| Get the number of seconds since Epoch.
|||
||| Epoch is defined as: 00:00:00 GMT, January 1, 1970
|||
||| Read more at:
||| https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xbd_chap03.html#tag_21_03_00_17
export
time : HasIO io => io Integer
time = do
  result <- erlUnsafeCall Integer "erlang" "system_time" []
  pure $ result `div` 1000000000

||| Programs can either terminate successfully, or end in a caught
||| failure.
public export
data ExitCode : Type where
  ||| Terminate successfully.
  ExitSuccess : ExitCode
  ||| Program terminated for some prescribed reason.
  |||
  ||| @errNo A non-zero numerical value indicating failure.
  ||| @prf   Proof that the int value is non-zero.
  ExitFailure : (errNo : Int) -> (So (not $ errNo == 0)) => ExitCode


||| Halt the run-time system.
partial
halt : HasIO io => Int -> io a
halt code = do
  MkRaw x <- erlUnsafeCall (Raw a) "erlang" "halt" [code]
  pure x

||| Exit the program with the given exit code.
export partial
exitWith : HasIO io => ExitCode -> io a
exitWith ExitSuccess = halt 0
exitWith (ExitFailure code) = halt code

||| Exit the program indicating failure.
export partial
exitFailure : HasIO io => io a
exitFailure = exitWith (ExitFailure 1)

||| Exit the program after a successful run.
export partial
exitSuccess : HasIO io => io a
exitSuccess = exitWith ExitSuccess

||| Print the error message and call exitFailure
export
die : HasIO io => String -> io a
die str = do putStrLn str; exitFailure
