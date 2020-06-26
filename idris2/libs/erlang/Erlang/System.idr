module Erlang.System

import public Data.So
import Data.Maybe
import Data.Strings

import Erlang


%default total


export
sleep : HasIO io => Int -> io ()
sleep sec = do
  erlUnsafeCall ErlTerm "timer" "sleep" [sec * 1000]
  pure ()

export
getArgs : HasIO io => io (List String)
getArgs =
  erlUnsafeCall (List String) "init" "get_plain_arguments" []

export
getEnvironment : HasIO io => io (List (String, String))
getEnvironment = do
  envPairs <- erlUnsafeCall (List String) "os" "getenv" []
  pure $ map splitEq envPairs
  where
    splitEq : String -> (String, String)
    splitEq str =
      let (key, str') = break (== '=') str
          (_, value) = break (/= '=') str'
      in  (key, value)

export
getEnv : HasIO io => String -> io (Maybe String)
getEnv var = do
  result <- erlUnsafeCall ErlTerm "os" "getenv" [MkCharlist var]
  pure $ erlDecodeMay string result

export
setEnv : HasIO io => String -> String -> Bool -> io Bool
setEnv var value overwrite = do
  shouldSetEnv <- case overwrite of
    True => pure True
    False => isNothing <$> getEnv var
  when shouldSetEnv $ do
    erlUnsafeCall ErlTerm "os" "putenv" [MkCharlist var, MkCharlist value]
    pure ()
  pure True

export
unsetEnv : HasIO io => String -> io Bool
unsetEnv var = do
  result <- erlUnsafeCall ErlTerm "os" "unsetenv" [MkCharlist var]
  pure True

-- TODO: Implement with exit code
export
system : HasIO io => String -> io Int
system cmd = do
  output <- erlUnsafeCall String "os" "cmd" [MkCharlist cmd]
  putStr output
  pure 0

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


partial
halt : HasIO io => Int -> io a
halt code = do
  MkRaw x <- erlUnsafeCall (Raw a) "erlang" "halt" [code]
  pure x

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
