# Hello world example

This example contains a module (`Main.idr`) containing two functions: `main` and `main2`. Both of these functions have a return type of `IO ()` which means they can be used as the entrypoint when executing the program.

To execute an Idris 2 program, one can write `idris2erl --exec <name> <file>`. For example, to run the `main` function in `Main.idr`, I would write: `idris2erl --exec main Main.idr`. Similarly, to run the `main2` function in `Main.idr`, I would write: `idris2erl --exec main2 Main.idr`. Try them out!


## Other things to try

### Generating the Erlang source code

To generate the Erlang source code from an Idris 2 program, run the following command:
- `idris2erl -o main --directive "format erl" --output-dir . Main.idr`

This will create the file `main.erl` in the current directory.

Explanation of the parameters:
- `-o main` — Generate the output to `main.<extension>`
- `--directive "format erl"` — Set the output format to Erlang source (Default is `beam`)
- `--output-dir .` — Set the output directory to the current directory (Default is `build/exec`)


### Using the REPL

Open the REPL by running `idris2erl Main.idr`. The REPL supports quite a few commands. You can get a list of the commands by running `:h` (or `:help`).

If you started the `idris2erl` executable with an Idris module you are ready to execute it. If not, you can run `:l Main.idr` to load the `Main` module.

From the REPL you can run `:exec main` or `:exec main2` to execute the desired function.

If you change the contents of the `Main.idr` while the REPL is still running, you will need to reload the module before executing it again. Run `:r` to reload `Main.idr`.


### Reading the documentation

From the REPL (`idris2erl Main.idr`) one can ask for the documentation of a function using the `:doc <name>` command.

Asking for the documentation of `main` (`:doc main`) will return:
```idris
Main.main : IO ()
         Hello world program
```

Idris 2 supports two forms of comments:
1. `|||` for documentation
2. `--` and `{- -}` for comments that will not be part of the documentation
