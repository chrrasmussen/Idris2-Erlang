# Library

... More to come ...


## Running the example

- `idris2erl --build demo.ipkg`
- `erl -noshell -pa ebin -eval "'Idris.Main':print_sum(5, 6)" -s erlang halt`

Output:
```
Sum: 11
11
```
