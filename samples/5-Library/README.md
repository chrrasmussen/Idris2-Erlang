# Library

... More to come ...


## Running the example

`idris2erl --build demo.ipkg`
`erl -pa ebin`

Run the following commands in the Erlang REPL:

`:l('Idris.Main').`
`'Idris.Main':print_sum(5, 6).`

Output:
```
Sum: 11
11
```
