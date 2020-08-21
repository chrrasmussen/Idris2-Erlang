module Erlang.Debug

import Erlang


%default total


export
erlPrintLn : HasIO io => a -> io ()
erlPrintLn x = do
  pure $ erlUnsafeCall ErlTerm "io" "format" ["~p~n", the (List _) [MkRaw x]]
  pure ()

export
erlInspect : a -> a
erlInspect x = unsafePerformIO $ do
  erlPrintLn x
  pure x
