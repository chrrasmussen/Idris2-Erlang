module Erlang.IO

import Erlang.Types


%default total

||| Type-alias for an Erlang exception.
|||
||| The tuple contains the following values (in order): Class, Reason, Stacktrace.
public export
ErlException : Type
ErlException = ErlTuple3 ErlAtom ErlTerm ErlTerm


%extern prim__erlModule : ErlAtom
%extern prim__erlUnsafeCall : (0 ret : Type) -> String -> String -> ErlList xs -> ret
%extern prim__erlTryCatch : IO a -> (1 x : %World) -> IORes (Either ErlException a)


-- CURRENT MODULE

||| Get the name of the current module.
export %inline
erlModule : ErlAtom
erlModule = prim__erlModule


-- FFI

||| Call an Erlang function. (Caution: Wrong usage of this function may result
||| in run-time errors.)
|||
||| The arguments and the return type must be a member of `ErlType`.
||| You can use the `Raw` type if you want to pass any Idris value.
|||
||| This function is considered unsafe for the following reasons:
||| 1. The called Erlang function may perform side-effects.
||| 2. The called Erlang function may crash the process or never terminate.
||| 3. The specified return type may not match the returned value from the
|||    called Erlang function.
|||
||| See `erlCall` for a safe way to call Erlang functions.
export %inline
erlUnsafeCall : (0 ret : Type) -> {auto 0 retPrf : ErlType ret} ->
                (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 argsPrf : ErlTypes xs} -> ret
erlUnsafeCall ret modName funName args = prim__erlUnsafeCall ret modName funName args

||| Wrap an IO action in a try/catch.
|||
||| `erlTryCatch` should only be necessary when using `erlUnsafeCall`. In
||| these cases you might want to consider using `erlCall` instead.
|||
||| Generally, total functions (including functions of type `IO`) should not
||| crash at run-time.
|||
||| See `erlCall` for an example usage of `erlTryCatch`.
export
erlTryCatch : HasIO io => IO a -> io (Either ErlException a)
erlTryCatch action = primIO (prim__erlTryCatch action)

||| Call an Erlang function.
|||
||| In contrast to `erlUnsafeCall`, `erlCall` is honest about the guarantees
||| it gives:
||| 1. The return type of `erlCall` allows the Erlang function to perform
|||    side-effects.
||| 2. `erlCall` is annotated as partial because the called function may never
|||    terminate. Additionally, if the called Erlang function crashes it should
|||    be caught by the try/catch.
||| 3. `erlCall` returns an `ErlTerm`, which can represent any Erlang value.
|||
||| The `ErlTerm` value can be decoded into a typed Idris value by using the
||| decoding functions from `Erlang.Decode`.
export partial %inline
erlCall : HasIO io => (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 prf : ErlTypes xs} -> io (Either ErlException ErlTerm)
erlCall modName fnName args = erlTryCatch (pure $ erlUnsafeCall ErlTerm modName fnName args)


-- EXPORT ERLANG FUNCTIONS

||| Export values and functions as named Erlang functions.
|||
||| Example module:
||| ```
||| module Main
|||
||| %cg erlang export exports
|||
||| increment : Integer -> Integer
||| increment x = x + 1
|||
||| exports : ErlExport
||| exports =
|||   Fun "foo" 42
|||     <+> Fun "increment" (MkFun1 increment)
||| ```
|||
||| This example will generate two functions that will be exported:
||| `foo/0` and `increment/1`
|||
||| When exporting a value, the generated function will have an arity of 0.
||| When exporting a function, the generated function will have the same arity
||| as the original function.
public export
data ErlExport : Type where
  Fun : ErlType t => (name : String) -> (expr : t) -> ErlExport
  Combine : ErlExport -> ErlExport -> ErlExport

||| Convenience operator for combining `ErlExport`.
public export %inline
(<+>) : ErlExport -> ErlExport -> ErlExport
(<+>) = Combine
