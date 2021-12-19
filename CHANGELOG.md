# Changelog

## Unreleased

- Updated the Idris 2 compiler to include the latest changes.
- Added `Erlang.Types.Atom` (Re-exported from `Erlang`) that includes elaborator
  reflection code to generate helper functions for atoms. See test `erlang/erlang013`.
- Added `--directive mutablestorage` option to allow changing the implementation of
  `Data.IORef` to call functions from an Erlang module named `mutable_storage`.
- Added `Erlang.Conversion.ToErlTerm` interface for adding conversions from a type
  to an untyped Erlang values (Replaces `Cast a ErlTerm`).
- Renamed `Erlang.Types.ErlType` to `IsErlType`, to make it clearer that this data
  type is a predicate.
- Added casts between `Bits8`, `Bits16`, `Bits32`, `Bits64`, `Int` and `Integer`.
- Renamed the `:=` operator to `.=`, used for Erlang maps, in `Erlang.Types` and
  `Erlang.Decode`.
- Rename `Erlang.IO.erlUnsafeCall` to `erlUnsafeCallPure`, and add a new version called
  `erlUnsafeCall` that is allowed to call Erlang functions that may perform side-effects.
  There are now 3 ways to call Erlang functions:
  1. `erlUnsafeCallPure` – Intended for calling pure Erlang functions.
  2. `erlUnsafeCall` – Intended for calling Erlang functions that may perform side-effects.
  3. `erlCall` – Intended for calling Erlang functions that may perform side-effects and that may not be total.


## v0.2.1-alpha.1 (2020-09-28)

- Initial release.
