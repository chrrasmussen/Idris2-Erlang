# Changelog

## Unreleased

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


## v0.2.1-alpha.1 (2020-09-28)

- Initial release.
