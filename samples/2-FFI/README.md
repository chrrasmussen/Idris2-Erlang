# Erlang interop

To use the Erlang FFI, we need to import the `Erlang` module (from the
[`erlang`](../../idris2/libs/erlang) package). By importing the `Erlang` module we will get
access to most data types that are available in Erlang. These data types include
integers, strings, lists, tuples, maps etc.

There are also data types to convert between Idris' curried functions to Erlang's
uncurried functions. `MkFun2` takes a curried function and will behave as a
2-arity function in Erlang:
```idris
data ErlFun2 : Type -> Type -> Type -> Type where
  MkFun2 : (a -> b -> ret) -> ErlFun2 a b ret
```

The mentioned data types are especially useful when calling functions in Erlang.
Calling a function in Erlang can be done using `erlCall` or `erlUnsafeCall`.
As the name suggests, `erlUnsafeCall` is unsafe and it can lead to run-time
errors if used incorrectly.


## Unsafe way of calling Erlang functions

The most low-level way of calling Erlang functions is using `erlUnsafeCall`. It
has the following type signature (a bit simplified):

```idris
erlUnsafeCall : (ret : Type) -> (modName : String) -> (funName : String) -> (args : ErlList xs) -> ret
```

| Parameter | Description |
| --------- | ----------- |
| `ret`     | The return type of the Erlang function.
| `modName` | The name of the module.
| `funName` | The name of the function.
| `args`    | The arguments passed to the Erlang function. Note that `ErlList` type is a heterogenous list, which means you can pass values of different types.

Example usage:
```idris
erlUnsafeCall String "string" "length" ["Hello"] -- Returns: 5
```

The reasons that `erlUnsafeCall` is considered unsafe:
1. The called Erlang function may perform side-effects.
2. The called Erlang function may crash the process or never terminate.
3. The specified return type may not match the returned value from the called
  Erlang function.


## Safe way of calling Erlang functions

In addition to `erlUnsafeCall`, the `Erlang` module provides a function called
`erlCall`. The type signature of `erlCall` (a bit simplified):

```idris
partial
erlCall : (modName : String) -> (funName : String) -> (args : ErlList xs) -> IO (Either ErlException ErlTerm)
```

In contrast to `erlUnsafeCall`, `erlCall` is honest about the guarantees
it gives:
1. The return type of `erlCall` allows the Erlang function to perform
   side-effects.
2. `erlCall` is annotated as partial because the called function may never
   terminate. Additionally, if the called Erlang function crashes it should
   be caught by the try/catch.
3. `erlCall` returns an `ErlTerm`, which can represent any Erlang value.

Example usage:
```idris
partial
main : IO ()
main = do
  Right result <- erlCall "string" "length" ["Hello"]
    | Left err => putStrLn "Call to string:length/1 crashed"
  let Right value = erlDecode integer result
    | Left err => putStrLn "Failed to decode Erlang term"
  printLn value -- Prints: 5
```

Using `erlCall` means that you have to add more checks, but it also means
that you don't accidentally break the guarantees from the type system.


## What types are allowed to pass to/from Erlang?

Even though all Idris values have a representation in Erlang, only a few data
types have mapping to the native data types in Erlang. To prevent mistakes
where one is trying to call an Erlang function with a value that it would not
understand, `erlUnsafeCall` and `erlCall` has a predicate that require that the
arguments and the return type is a member of [`ErlType`](../idris2/libs/erlang/Erlang/Types.idr).

If you really want to call an Erlang function with an arbitrary Idris value,
you can wrap the value in the `Raw` type. `Raw a` is compiled to `a`.

References:
- [Overview of data types that have a mapping between Idris 2 and Erlang](../../docs/datatypes.md)


## Running the examples

To run the Idris 2 programs in `Main.idr`, you can use the command
`idris2 --exec <name> Main.idr`. For example: `idris2 --exec main Main.idr`
