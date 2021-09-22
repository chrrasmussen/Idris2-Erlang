# Data types

[The data types in Erlang](http://erlang.org/doc/reference_manual/data_types.html) are mapped to the following types in Idris. The types that are prefixed with `Erl` are available in the [`Erlang.Types`](../idris2/libs/erlang/Erlang/Types.idr) module in the [`erlang`](../idris2/libs/erlang) package. The `/N` postfix means there are multiple variants available, e.g. `ErlTuple0`, `ErlTuple1`. [1]

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

---

**Footnotes:**

[1] Some data types, such as tuples and functions, include a size/arity in their names: These data types are currently limited to a maximum size/arity of `8`.
