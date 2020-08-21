module Erlang.IO

import Erlang.Types


%default total


public export
ErlException : Type
ErlException = ErlTuple3 ErlAtom ErlTerm ErlTerm


%extern prim__erlModule : ErlAtom
%extern prim__erlUnsafeCall : (0 ret : Type) -> String -> String -> ErlList xs -> ret
%extern prim__erlTryCatch : IO a -> (1 x : %World) -> IORes (Either ErlException a)


-- CURRENT MODULE

export %inline
erlModule : ErlAtom
erlModule = prim__erlModule


-- FFI

-- This function is considered unsafe for the following reasons:
-- 1. The called Erlang function may perform side-effects.
-- 2. The called Erlang function may crash the process or never terminate.
-- 3. The specified return type may not match the returned value from the called Erlang function.
--
-- See `erlCall` for a safe way to call Erlang functions.
export %inline
erlUnsafeCall : (0 ret : Type) -> {auto 0 retPrf : ErlType ret} ->
                (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 argsPrf : ErlTypes xs} -> ret
erlUnsafeCall ret modName funName args = prim__erlUnsafeCall ret modName funName args

export
erlTryCatch : HasIO io => IO a -> io (Either ErlException a)
erlTryCatch action = primIO (prim__erlTryCatch action)

export partial %inline
erlCall : HasIO io => (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 prf : ErlTypes xs} -> io (Either ErlException ErlTerm)
erlCall modName fnName args = erlTryCatch (pure $ erlUnsafeCall ErlTerm modName fnName args)


-- EXPORT ERLANG FUNCTIONS

public export
data ErlExport : Type where
  Fun : ErlType t => (name : String) -> (expr : t) -> ErlExport
  Combine : ErlExport -> ErlExport -> ErlExport

public export %inline
(<+>) : ErlExport -> ErlExport -> ErlExport
(<+>) = Combine
