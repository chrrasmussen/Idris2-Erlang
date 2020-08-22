# Idris2-Erlang

Erlang code generator for [Idris 2](https://github.com/idris-lang/Idris2). The development of Idris 2 is led by [Edwin Brady](https://github.com/edwinb). Currently this repository includes a full copy of the Idris 2 compiler, but at some point I want to make this repository into a standalone code generator.

Note that this project is still **work in progress**. Feedback and contributions are appreciated!


## About this project

### Goals

- Make it easy to interoperate with Erlang.
- Type-safe: It should be difficult to accidentally introduce run-time errors, even when doing interop with Erlang.


### Non-goals

- Make the generated Erlang code readable.


### Currently supported functionality

- Compile Idris 2 programs to Erlang source code or compile to BEAM (via `erlc`)
  - Basic support for separate compilation. Use together with [`mix_idris2`](https://github.com/chrrasmussen/mix_idris2) to automatically recompile modules.
- Erlang interop
  - Almost all of Erlang's data types have a [corresponding type in Idris](idris2/libs/erlang/Erlang/Types.idr). [1]
  - Call almost any Erlang function from Idris.
  - Export Idris functions to be called from Erlang code.
  - Includes [decoding functions](idris2/libs/erlang/Erlang/Decode.idr) to safely convert untyped Erlang values to typed Idris values.
- Supports most of the functionality provided by the `base` package. (Currently a few modules are placed in the `Erlang` namespace)


## Installation

To run the generated Erlang code, [Erlang OTP 21.2](https://www.erlang.org/downloads) or newer is recommended.

There are three ways to install Idris 2 with the Erlang code generator:

1. From Erlang source code — Easiest way to get started. **Note: Idris 2 running on Erlang is currently much slower than running on Chez Scheme**
2. From Chez Scheme bootstrap — Recommended installation method.
3. Using an existing version of `idris2` — Recommended if one wants to contribute to `Idris2-Erlang`.

Option 2 and 3 will build an executable named `idris2erl`. This is done to avoid clashing with an existing installation of `idris2`.


### From Erlang source code

This repository contains a [rebar3](https://www.rebar3.org) project that can build a standalone Escript executable. The Escript contains the libraries and can be freely moved around. The Erlang run-time needs to be available to run this Escript.

The generated Erlang source files are only included in specific [releases](https://github.com/chrrasmussen/Idris2-Erlang/releases), and not in the `master` branch.

Steps:
1. Clone/download a specific release
2. Run `rebar3 escriptize`

The Escript executable is built to `_build/default/bin/idris2`.


### From Chez Scheme bootstrap

This installation method requires [Chez Scheme](https://cisco.github.io/ChezScheme/) to be installed.

Steps:
1. `cd idris2`
2. `make bootstrap SCHEME=chez` (Replace `chez` with the name of your installed version of Chez Scheme)
3. `make install`
4. `make clean`
5. `make all`
6. `make install`

This will install the `idris2erl` executable, libraries and support files into `$HOME/.idris2erl`. For easy access, add `$HOME/.idris2erl/bin` folder to your `$PATH`.


#### Using an existing version of `idris2`

This installation method requires [Chez Scheme](https://cisco.github.io/ChezScheme/) to be installed, and that you have `idris2` available in `$PATH`. To install the official version of Idris 2, see [Idris 2's installation instructions](https://github.com/idris-lang/Idris2).

Steps:
1. `cd idris2`
2. `make all`
3. `make install`

This will install the `idris2erl` executable, libraries and support files into `$HOME/.idris2erl`. For easy access, add `$HOME/.idris2erl/bin` folder to your `$PATH`.


## Editor support

Idris 2 supports interactive editing. See [Idris 2's download page](https://www.idris-lang.org/pages/download.html) for a list of supported editors.

In my experience, the Idris 1 extension for [Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=zjhmale.Idris) and [Atom](https://atom.io/packages/language-idris) mostly works for Idris 2. After installing the extension, you need to change location of the Idris executable to point to `idris2` (or `idris2erl` depending on how you installed it).


## Basic usage

Create a file called `Main.idr` with the following content:

```idris
module Main

main : IO ()
main = putStrLn "Hello Joe"
```

Run the Idris 2 program via generated Erlang code: `idris2 --exec main Main.idr`


## Erlang interop

### Data types

[The data types in Erlang](http://erlang.org/doc/reference_manual/data_types.html) are mapped to the following types in Idris. The types that are prefixed with `Erl` are available in the `Erlang` module in the `erlang` package. The `/N` postfix means there are multiple variants available, e.g. `ErlTuple0`, `ErlTuple1`.

| Erlang    | Idris                                  | Comment     |
| --------- | -------------------------------------- | ----------- |
| integer   | `Integer`                              | Arbitrary precision. |
| integer   | `Int`, `Bits8`, `Bits16`, `Bits32`, `Bits64` | Integer variants that are restricted to a certain precision. |
| float     | `Double`                               |
| atom      | `ErlAtom`                              |
| bitstring | *Not available*                        |
| binary    | `String`                               |
| reference | `ErlReference`                         |
| function  | `ErlFun/N`, `ErlIOFun/N`               | `ErlFun/N` is intended for pure functions while `ErlIOFun/N` is intended for functions that perform side-effects. |
| port      | `ErlPort`                              |
| pid       | `ErlPid`                               |
| tuple     | `ErlTuple/N`                           |
| map       | `ErlAnyMap`, `ErlMapSubset`            | `ErlAnyMap` does not include any type information and can represent any Erlang maps. `ErlMapSubset` allows one to define which keys (and the type of its value) that are guaranteed to be in the Erlang map. The `ErlMapSubset` might still contain other keys/values that are not listed. |
| list      | `List`, `ErlList`, `ErlNil`, `ErlCons` | The `List` type requires that all of its elements are of the same type. `ErlList` and `ErlNil` / `ErlCons` allow different types for each element. `ErlList` can only represent proper lists, while `ErlNil` / `ErlCons` can also represent improper lists. |
| charlist  | `ErlCharlist`                          |
| record    | *Not available*                        | Erlang records are compiled down to Erlang tuples, so it is possible to use the `ErlTuple/N` types in these cases. |
| boolean   | `ErlAtom`                              |

The Idris type `Char` represents a grapheme (one or more codepoints). One codepoint is represented by an integer. To support all Unicode characters, `Char` may either be an integer or a list of integers.


### Foreign function calls

... More to come ...


## Meta

### Changes to the Idris 2 compiler

Currently this repository includes a few changes to the Idris 2 compiler, e.g. basic support for separate compilation. I will try to upstream any changes that can benefit the Idris 2 project.


## License

The Idris 2 compiler is licensed as BSD 3-clause. See [idris2/LICENSE](idris2/LICENSE).

The Erlang code generator is derived from the Idris 2 compiler and is licensed as BSD 3-clause. See [LICENSE](LICENSE).

---

Footnotes:

[1] `bitstring` is not supported as a separate data type. The data types that require an arity, such as tuples and functions, have a maximum arity of `8`.
