# Directives

## Global directives

Specify global directives using the `--directive` option when running `idris2erl`.

Example: Running `idris2erl --directive "format erl" -o main Main.idr` will generate `foo.erl` in `build/exec`.

| Option              | Default    | Description                            |
| ------------------- | ---------- | -------------------------------------- |
| `format <format>`   | `beam`     | The output format of the generated modules. Valid formats: `erl`, `beam`
| `prefix <prefix>`   | `Idris`    | Specify the prefix in the file name of the generated modules.
| `inline <size>`     | `0`        | Specify the default inline size for all modules. Size `0` means no inlining.


## Namespace/module directives

Specify namespace directives using `%cg erlang <directive>` inside a module or namespace.

| Option              | Default    | Description                            |
| ------------------- | ---------- | -------------------------------------- |
| `export <name>`     |            | Specify the name of the function that defines the exports of the current namespace `ErlExport`.
| `inline <size>`     | `0`        | Specify the inline size for the current namespace.
