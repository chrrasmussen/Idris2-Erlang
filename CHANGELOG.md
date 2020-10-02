# Changelog

## Unreleased

- Added `Erlang.Types.Atom` (Re-exported from `Erlang`) that includes elaborator
  reflection code to generate helper functions for atoms. See test `erlang/erlang013`.
- Added `--directive mutablestorage` option to allow changing the implementation of
  `Data.IORef` to call functions from an Erlang module named `mutable_storage`.


## v0.2.1-alpha.1 (2020-09-28)

- Initial release.
