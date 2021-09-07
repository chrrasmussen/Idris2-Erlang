#!/bin/sh

set -e # exit on any error

IDRIS2_EXEC=idris2erl

# Run the first example in each directory.
# This will also type-check the code.

( cd 1-HelloWorld && $IDRIS2_EXEC --exec main Main.idr )
( cd 2-FFI && $IDRIS2_EXEC --exec main Main.idr )
( cd 3-Decoding && $IDRIS2_EXEC --exec main Main.idr )
( cd 4-Concurrency && $IDRIS2_EXEC --exec main Main.idr )
( cd 5-Library && $IDRIS2_EXEC --build demo.ipkg && erl -noshell -pa ebin -eval "'Idris.Main':print_sum(5, 6)" -s erlang halt )
