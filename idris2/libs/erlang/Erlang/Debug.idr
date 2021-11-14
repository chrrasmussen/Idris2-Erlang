module Erlang.Debug

import Erlang


%default total


||| Print the underlying value using `io:format/2`.
export
erlPrintLn : HasIO io => a -> io ()
erlPrintLn x = do
  ignore $ pure $ erlUnsafeCall ErlTerm "io" "format" ["~p~n", the (ErlList _) [MkRaw x]]

||| Print the underlying value using `io:format/2`, and return the given value.
|||
||| This function is unsafe as it breaks referential transparency.
export
erlInspect : a -> a
erlInspect x = unsafePerformIO $ do
  erlPrintLn x
  pure x

export
erlPrintMemory : HasIO io => io ()
erlPrintMemory =
  erlPrintLn (erlUnsafeCall ErlTerm "erlang" "memory" [])
