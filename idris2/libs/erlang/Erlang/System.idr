module Erlang.System

import public Data.So
import Data.Maybe
import Data.Strings

import Erlang


%default total


export
sleep : Int -> IO ()
sleep sec = do
  erlUnsafeCall ErlTerm "timer" "sleep" [sec * 1000]
  pure ()

export
getArgs : IO (List String)
getArgs = do
  -- Returns an exception if key does not exist
  Right result <- erlCall "persistent_term" "get" [MkAtom "$idris_rts_args"]
    | Left _ => pure []
  pure $ erlDecodeDef [] (map (erlUnsafeCast (List String)) anyList) result

export
getEnvironment : IO (List (String, String))
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
getEnv : String -> IO (Maybe String)
getEnv var = do
  result <- erlUnsafeCall ErlTerm "os" "getenv" [MkCharlist var]
  pure $ erlDecodeMay string result

export
setEnv : String -> String -> Bool -> IO Bool
setEnv var value overwrite = do
  shouldSetEnv <- the (IO Bool) $ case overwrite of
    True => pure True
    False => isNothing <$> getEnv var
  when shouldSetEnv $ do
    erlUnsafeCall ErlTerm "os" "putenv" [MkCharlist var, MkCharlist value]
    pure ()
  pure True

export
unsetEnv : String -> IO Bool
unsetEnv var = do
  result <- erlUnsafeCall ErlTerm "os" "unsetenv" [MkCharlist var]
  pure True

-- TODO: Implement with exit code
export
system : String -> IO Int
system cmd = do
  output <- erlUnsafeCall String "os" "cmd" [MkCharlist cmd]
  putStr output
  pure 0

export
time : IO Integer
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
halt : Int -> IO a
halt code = do
  MkRaw x <- erlUnsafeCall (Raw a) "erlang" "halt" [code]
  pure x

export partial
exitWith : ExitCode -> IO a
exitWith ExitSuccess = halt 0
exitWith (ExitFailure code) = halt code

||| Exit the program indicating failure.
export partial
exitFailure : IO a
exitFailure = exitWith (ExitFailure 1)

||| Exit the program after a successful run.
export partial
exitSuccess : IO a
exitSuccess = exitWith ExitSuccess
