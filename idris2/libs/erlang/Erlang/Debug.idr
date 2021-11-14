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


-- TIME PROFILER

public export
data AnalyzeFilter = FilterByCalls Integer | FilterByTime Double

public export
data AnalyzeSort = SortByTime | SortByCalls | SortByMFA

public export
record AnalyzeOpts where
  constructor MkAnalyzeOpts
  filters : List AnalyzeFilter
  sort : Maybe AnalyzeSort

export
erlDefaultAnalyzeOpts : AnalyzeOpts
erlDefaultAnalyzeOpts = MkAnalyzeOpts [] Nothing

ToErlTerm AnalyzeFilter where
  toErlTerm (FilterByCalls limit) = toErlTerm $ MkTuple2 (MkAtom "calls") limit
  toErlTerm (FilterByTime limit) = toErlTerm $ MkTuple2 (MkAtom "time") limit

ToErlTerm AnalyzeSort where
  toErlTerm SortByTime = toErlTerm $ MkAtom "time"
  toErlTerm SortByCalls = toErlTerm $ MkAtom "calls"
  toErlTerm SortByMFA = toErlTerm $ MkAtom "mfa"

ToErlTerm AnalyzeOpts where
  toErlTerm (MkAnalyzeOpts filters sort) =
    let filterOpt = MkTuple2 (MkAtom "filter") (toErlTerm <$> filters)
        sortOpt = MkTuple2 (MkAtom "sort") . toErlTerm <$> sort
    in toErlTerm (filterOpt :: toList sortOpt)

export
erlRunTimeProfiler : HasIO io => AnalyzeOpts -> IO () -> io ()
erlRunTimeProfiler opts prog = do
  ignore $ pure $ erlUnsafeCall ErlTerm "eprof" "start" []
  ignore $ pure $ erlUnsafeCall ErlTerm "eprof" "start_profiling" [the (ErlList _) [!erlSelf]]
  liftIO prog
  ignore $ pure $ erlUnsafeCall ErlTerm "eprof" "stop_profiling" []
  ignore $ pure $ erlUnsafeCall ErlTerm "eprof" "analyze" [MkAtom "total", toErlTerm opts]
  ignore $ pure $ erlUnsafeCall ErlTerm "eprof" "stop" []
