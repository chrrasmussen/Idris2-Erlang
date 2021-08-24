# Idris2-Erlang

[![Ubuntu CI](https://github.com/chrrasmussen/Idris2-Erlang/workflows/Ubuntu/badge.svg)](https://github.com/chrrasmussen/Idris2-Erlang/actions?query=workflow%3AUbuntu)
[![macOS CI](https://github.com/chrrasmussen/Idris2-Erlang/workflows/macOS/badge.svg)](https://github.com/chrrasmussen/Idris2-Erlang/actions?query=workflow%3AmacOS)


Erlang code generator for [Idris 2](https://github.com/idris-lang/Idris2). Currently this repository includes a full copy of the Idris 2 compiler, but at some point I want to make this repository into a standalone code generator.

Note that this project is still **work in progress**. Feedback and contributions are appreciated!

### About Idris 2

Idris 2 is a purely functional programming language with first class types. The development of Idris 2 is led by [Edwin Brady](https://github.com/edwinb). More information about Idris 2 is available at:

- [Idris website](https://www.idris-lang.org)
- [Idris 2 documentation](https://idris2.readthedocs.io/en/latest/)
- [Idris 2 repository](https://github.com/idris-lang/Idris2)


## About the Erlang code generator

### Goals

- Make it easy to interoperate with Erlang.
- Type-safe: It should be difficult to accidentally introduce run-time errors, even when doing interop with Erlang.


### Non-goals

- Make the generated Erlang code readable.


### Currently supported functionality

- Compile Idris 2 programs to Erlang source code or compile to BEAM (via `erlc`)
  - Basic support for separate compilation. Use together with [`mix_idris2`](https://github.com/chrrasmussen/mix_idris2) to automatically recompile changed modules.
- Erlang interop
  - Almost all of Erlang's data types have a [corresponding type in Idris](idris2/libs/erlang/Erlang/Types.idr). [1]
  - Call almost any Erlang function from Idris.
  - Export Idris functions to be called from Erlang code.
  - Includes [decoding functions](idris2/libs/erlang/Erlang/Decode.idr) to safely convert untyped Erlang values to typed Idris values.
- Supports most of the functionality provided by the `base` package. (Currently a few modules are placed in the `Erlang` namespace)


## Basic usage

Create a file called `Main.idr` with the following content:

```idris
main : IO ()
main = putStrLn "Hello Joe"
```

Run the Idris 2 program via generated Erlang code: `idris2erl --exec main Main.idr`

**More code samples:**
- [samples/](samples) — Examples of using the FFI, concurrency etc.
- [www.typedtext.io](https://www.typedtext.io) ([Source](https://github.com/chrrasmussen/typedtext.io)) — Website written in Idris 2, running on the Erlang VM.


## Installation

To run the generated Erlang code, [Erlang OTP 21.2](https://www.erlang.org/downloads) or newer is recommended.

There are three alternative methods to install Idris 2 with the Erlang code generator:

1. [From Erlang source code](#alternative-1-from-erlang-source-code) — Easiest way to get started. **Note: Idris 2 running on Erlang is currently much slower than running on Chez Scheme**
2. [From Chez Scheme bootstrap](#alternative-2-from-chez-scheme-bootstrap) — Recommended installation method.
3. [Using an existing `idris2` executable](#alternative-3-using-an-existing-idris2-executable) — Recommended if you want to contribute to `Idris2-Erlang`.

The built executable is named `idris2erl`. This is done to avoid clashing with an existing installation of `idris2`. `idris2erl` is configured to use Erlang as the
default code generator.

On Windows, you may need to install via MSYS2 (https://www.msys2.org/). On Windows older than Windows 8, you may need to set an environment variable OLD_WIN=1 or modify it in `idris2/config.mk`.


### Alternative 1: From Erlang source code

This repository contains a [rebar3](https://www.rebar3.org) project that can build a standalone Escript executable. The Escript contains the libraries and can be freely moved around. The Erlang run-time needs to be available to run this Escript.

The generated Erlang source files are only included in specific [releases](https://github.com/chrrasmussen/Idris2-Erlang/releases), and not in the `main` branch.

**Steps:**
1. `git clone https://github.com/chrrasmussen/Idris2-Erlang`
2. `cd Idris2-Erlang`
3. `git checkout tags/v0.2.1-alpha.1 -b v0.2.1-alpha.1`
4. `rebar3 escriptize`

The Escript executable is built to `_build/default/bin/idris2erl`.


### Alternative 2: From Chez Scheme bootstrap

This installation method requires [Chez Scheme](https://cisco.github.io/ChezScheme/) to be installed.

**Steps:**
1. `git clone https://github.com/chrrasmussen/Idris2-Erlang`
2. `cd Idris2-Erlang/idris2`
3. `make bootstrap SCHEME=chez` (Replace `chez` with the name of your installed version of Chez Scheme)
4. `make install`

This will install the `idris2erl` executable, libraries and support files into `$HOME/.idris2erl`. For easy access, add `$HOME/.idris2erl/bin` directory to your `$PATH`.


### Alternative 3: Using an existing `idris2` executable

This installation method requires [Chez Scheme](https://cisco.github.io/ChezScheme/) to be installed, and that you have `idris2` available in `$PATH`. To install the official version of Idris 2, see [Idris 2's installation instructions](https://github.com/idris-lang/Idris2/blob/main/INSTALL.md).

**Steps:**
1. `git clone https://github.com/chrrasmussen/Idris2-Erlang`
2. `cd Idris2-Erlang/idris2`
3. `make all`
4. `make install`

This will install the `idris2erl` executable, libraries and support files into `$HOME/.idris2erl`. For easy access, add `$HOME/.idris2erl/bin` directory to your `$PATH`.


## Editor support

Idris 2 supports interactive editing. See [Idris 2's download page](https://www.idris-lang.org/pages/download.html) for a list of supported editors.

In my experience, the Idris 1 extensions for [Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=zjhmale.Idris) and [Atom](https://atom.io/packages/language-idris) mostly works for Idris 2. After installing the extension, you need to change location of the Idris executable to point to `idris2erl`.


## Documentation

### Erlang code generator

The Idris 2 libraries tries to include documentation for its functions and data types. The documentation can be accessed using the `:doc` command in the Idris 2 REPL.

**References:**
- [Overview of data types that have a mapping between Idris 2 and Erlang](docs/datatypes.md)
- [Codegen-specific directives](docs/directives.md)
- [Intermediate representations](docs/intermediaterepresentations.md)

**Samples:**
- [Hello world](samples/1-HelloWorld)
- [Foreign function interface (FFI)](samples/2-FFI)
- [Decoding Erlang values](samples/3-Decoding)
- [Concurrency](samples/4-Concurrency)
- [Library](samples/5-Library)


### Learning Idris 2

- [A Crash Course in Idris 2](https://idris2.readthedocs.io/en/latest/tutorial/index.html)
  - This tutorial assumes some existing experience with functional programming.
- [Type-Driven Development with Idris by Edwin Brady](https://www.manning.com/books/type-driven-development-with-idris)
  - The book was written with Idris 1 in mind, but the knowledge is transferable to Idris 2. [This document](https://idris2.readthedocs.io/en/latest/typedd/typedd.html) describes what changes are necessary to run the code samples from the book in Idris 2.
  - This book is how I got started with Idris :-)
- [The Idris 2 README.md lists some talks given by Edwin Brady](https://github.com/idris-lang/Idris2#talks)
  - These videos are mainly presenting what's new in Idris 2, but they may provide motivation for why Idris 2 is an interesting language.


## Community

The [Idris website](https://www.idris-lang.org) contains links to locations where you can find the Idris community.


## License

The Idris 2 compiler is released under the [3-clause BSD license](idris2/LICENSE).

The Erlang code generator is derived from the Idris 2 compiler and is released under the [3-clause BSD license](LICENSE).

---

**Footnotes:**

[1] `bitstring` is not supported as a separate data type. Some data types, such as tuples and functions, include a size/arity in their names: These data types are currently limited to a maximum size/arity of `8`.
