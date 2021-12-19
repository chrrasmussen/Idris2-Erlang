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

||| Call a pure Erlang function.
|||
||| Caution: Wrong usage of this function may result in run-time errors.
|||
||| A pure function is a function that performs no side-effects and does not
||| depend on global state. For the given argument, the called should always
||| return the same value.
|||
||| The arguments and the return type must be a member of `IsErlType`.
||| You can use the `Raw` type if you want to pass any Idris value.
|||
||| This function is considered unsafe for the following reasons:
||| 1. The called Erlang function may perform side-effects.
||| 2. The called Erlang function may crash the process or never terminate.
||| 3. The specified return type may not match the returned value from the
|||    called Erlang function.
|||
||| See also `erlUnsafeCall` and `erlCall`.
export %inline
erlUnsafeCallPure : (0 ret : Type) -> {auto 0 retPrf : IsErlType ret} ->
                    (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 argsPrf : IsErlTypes xs} -> ret
erlUnsafeCallPure ret modName funName args = prim__erlUnsafeCall ret modName funName args

||| Call an Erlang function that may perform side-effects.
|||
||| Caution: Wrong usage of this function may result in run-time errors.
|||
||| The arguments and the return type must be a member of `IsErlType`.
||| You can use the `Raw` type if you want to pass any Idris value.
|||
||| This function is considered unsafe for the following reasons:
||| 1. The called Erlang function may crash the process or never terminate.
||| 2. The specified return type may not match the returned value from the
|||    called Erlang function.
|||
||| See `erlCall` for a safe way to call Erlang functions.
export %inline
erlUnsafeCall : HasIO io => (0 ret : Type) -> {auto 0 retPrf : IsErlType ret} ->
                (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 argsPrf : IsErlTypes xs} -> io ret
erlUnsafeCall ret modName funName args = pure $ prim__erlUnsafeCall ret modName funName args

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
||| This is the safest option for calling an Erlang function.
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
erlCall : HasIO io => (modName : String) -> (funName : String) -> (args : ErlList xs) -> {auto 0 prf : IsErlTypes xs} -> io (Either ErlException ErlTerm)
erlCall modName fnName args = erlTryCatch (erlUnsafeCall ErlTerm modName fnName args)


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
  Fun : IsErlType t => (name : String) -> (expr : t) -> ErlExport
  Combine : ErlExport -> ErlExport -> ErlExport

||| Convenience operator for combining `ErlExport`.
public export %inline
(<+>) : ErlExport -> ErlExport -> ErlExport
(<+>) = Combine
