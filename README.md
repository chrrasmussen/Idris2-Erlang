# Idris2-Erlang

Erlang code generator for [Idris 2](https://github.com/edwinb/Idris2). Idris 2 is created by [Edwin Brady](https://github.com/edwinb). Currently this repository includes a full copy of the Idris 2 compiler, but at some point I want to make this repository into a standalone code generator.

Note that this project is still **work in progress**. Feedback and contributions are appreciated!


## About the Project

### Goals

- Make it easy to interoperate with Erlang.
- Type-safe: It should be difficult to accidentally introduce run-time errors, even when doing interop with Erlang.[2]


### Non-goals

- Make the generated Erlang code readable.


### Currently Supported Functionality

- Compile and run any plain Idris 2 programs (i.e. not using any unsupported FFI)
- Each Idris module/namespace is generated into its own Erlang module.
- Reading/writing files using Idris 2's `base` library.
- Convert most[1] native Erlang data types, back and forth.
  - Supports a type-safe way to convert an untyped Erlang term into a typed Idris value (it leverages Erlang case expressions with guards).
- Call named Erlang functions.
  - Also supports a type-safe way to call Erlang functions.
- Export named Erlang functions per Idris module/namespace.
- Convert anonymous functions, back and forth (both pure and IO).


## Using the Erlang Codegen

### Prerequisites

- [Idris 1.3.2](https://www.idris-lang.org/download/) or newer (to build Idris 2)
- [Erlang OTP 21.2](https://www.erlang.org/downloads) or newer


### Installation

This project is built the same way as Idris 2, see Installation section in [idris2/README.md](idris2/README.md#Installation).


### Basic Usage

Create a file called `Main.idr` with the following content:

```idris
module Main

main : IO ()
main = putStrLn "Hello Joe"
```

Run the Idris program via generated Erlang code: `idris2 --cg erlang --exec main Main.idr`


## Erlang Interop

### Data types

[The data types in Erlang](http://erlang.org/doc/reference_manual/data_types.html) are mapped to the following types in Idris. The types that are prefixed with `Erl` are available in the `Erlang` module in the `base` library. The `/N` postfix means there are multiple variants available, e.g. `ErlTuple0`, `ErlTuple1`.

| Erlang    | Idris                          | Comment                                                                                                                                                                                                        |
| --------- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| integer   | `Integer`                      |
| float     | `Double`                       |
| atom      | `ErlAtom`                      |
| bitstring | *Not available*                |
| binary    | `ErlBinary`                    |
| reference | `ErlRef`                       |
| fun       | `ErlFun/N`, `ErlIO/N`          | `ErlFun/N` is intended for pure functions while `ErlIO/N` is intended for IO actions.                                                                                                                          |
| port      | `ErlPort`                      |
| pid       | `ErlPid`                       |
| tuple     | `ErlTuple/N`                   |
| map       | `ErlMap`                       |
| list      | `ErlList`, `ErlNil`, `ErlCons` | The difference between `ErlList` and `ErlNil` / `ErlCons` is that `ErlList` can only represent proper lists. `ErlNil` / `ErlCons` can be used to represent improper lists but they are more cumbersome to use. |
| string    | `ErlCharlist`                  |
| record    | *Not available*                | Erlang records are compiled down to Erlang tuples, so it is possible to use the `ErlTuple/N` types in these cases.                                                                                             |
| boolean   | `Bool`                         |


[Idris 2's primitive types](https://github.com/edwinb/Idris2/blob/9f9460603755e74eeb8dc3116438408a802f5234/src/Core/TT.idr#L22-L27)

| Idris     | Erlang                   | Comment                                                                                                                                                                                                                        |
| --------- | ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `Int`     | integer                  | `Int` is mapped to Erlang integers of arbitrary precision. Some operations on `Int` may still be capped at a certain precsion., e.g. `+`, `-`.                                                                                 |
| `Integer` | integer                  |
| `String`  | IO data                  | IO data is not a primitive data type in Erlang. Some Erlang functions may require an Erlang binary or and Erlang charlist; in these cases one should use the more specific string types (`ErlBinary` or `ErlCharlist`). |
| `Char`    | integer / list(integers) | An integer represents a single codepoint. To support all Unicode characters (some may consist of multiple codepoints) the `Char` may either be an integer or a list of integers.                                               |
| `Double`  | float                    |


### Foreign Function Calls

Generally, in places where Idris values are exposed to the Erlang run-time, the values are expected to be supported in the `ErlType a` type. `ErlType a` is a predicate type that lists all Idris types that have a corresponding mapping to Erlang. Although there is an escape hatch, where one can use the `Raw a` type to pass any Idris value to Erlang (`Raw a` is compiled to `a`). This proof helps to make sure that one does not mistakenly pass values that does not have a known Erlang representation.

Differences between `erlCall` and `erlUnsafeCall`:

`erlCall`:
- `erlCall` will always return a value of type `ErlTerm` (which is the safest option). These `ErlTerm`s can be converted to a typed Idris value using `erlCase` (See [Erlang Case Expressions](#erlang-case-expressions)).
- `erlCall` takes two `String`s which are the module and function names respectively. Both of these strings are converted to atoms using `binary_to_atom/2`, which means that you don't need to include apostrophes (`'`), i.e. `erlCall "Elixir.Jason" "decode" ["42"]`.
- `erlCall` wraps the Erlang function call in a catch block to make sure that any runtime exceptions will be converted to an Erlang term.

`erlUnsafeCall`:
- `erlUnsafeCall` takes a type as an argument which decide the return type.
- `erlUnsafeCall` does not wrap the Erlang function call in a catch block.


### Erlang Case Expressions

... More to come ...

- `MError` is useful for retrieving errors when using `erlCall` or when calling a function retrieved using `MIO`.


### General Tips

`erlUnsafeCall` can be used to call functions defined in the same source file, i.e. if you use the `%cg` directive to include Erlang functions.


## Meta

### Changes to the Idris 2 Compiler

Currently this repository includes a few changes to the Idris 2 compiler, e.g. it adds a `--cg-opt` flag to pass arguments to the code generator. I will try to upstream any changes that can benefit the Idris 2 project.


### Missing Functionality

- Need to replace more usages of the Scheme FFI in the `prelude` and `base` libraries (Buffer, concurrency primitives etc.)

---

Footnotes:

[1] Does not currently support `bitstring` as a separate type. The ergonomics of some of the types can probably be improved, e.g. the `ErlMap` type (representing Erlang maps) is opaque/untyped.

[2] Currently there are some functions that require special care when calling them, i.e. `erlCall` needs to be called with a statically defined list of arguments (this is required in order for the Erlang codegen to know the arity of the Erlang function that is called). Similar restrictions applies to `erlUnsafeCall` and `erlCase`.
