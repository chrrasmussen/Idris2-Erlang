module Main

-- Idris 2 running on Erlang should be able to run all tests, but currently the
-- `1/1: Building ...` message is output in a different order than Idris 2
-- running on Chez. As a temporary workaround, this test is run using the
-- `--exec` option.

main : IO ()
main = do
  putStrLn "Hello Joe"
