-module('Idris.Idris2.Core.Options.Log').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--keepLog,go,there-7175'/5,
  'case--keepLog,go,here-7142'/6,
  'case--parseLogLevel-7088'/2,
  'case--parseLogLevel-7046'/2,
  'case--show-6964'/2,
  'nested--3373-7136--in--un--there'/5,
  'nested--3373-7135--in--un--here'/5,
  'nested--3368-7130--in--un--go'/5,
  'dn--un--show_Show__LogLevel'/1,
  'dn--un--showPrec_Show__LogLevel'/2,
  'dn--un--pretty_Pretty__LogLevel'/2,
  'dn--un--prettyPrec_Pretty__LogLevel'/3,
  'dn--un--__Impl_Show_LogLevel'/0,
  'dn--un--__Impl_Pretty_LogLevel'/0,
  'un--withVerbosity'/2,
  'un--verbosity'/1,
  'un--unsafeMkLogLevel'/2,
  'un--topics'/1,
  'un--parseLogLevel'/1,
  'un--mkLogLevel\x{27}'/2,
  'un--mkLogLevel'/1,
  'un--keepLog'/2,
  'un--insertLogLevel'/1,
  'un--defaultLogLevel'/0,
  'un--LogLevels'/0
]).
'case--keepLog,go,there-7175'(V0, V1, V2, V3, V4) -> case V4 of [] -> 1; [E0 | E1] -> (fun (V5, V6) -> ('Idris.Idris2.Data.Maybe':'un--fromMaybe'('erased', fun () -> 1 end, ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Data.These':'un--fromThat'('erased', 'erased', V3)), fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Data.StringMap':'un--lookup'('erased', V5, V7)), fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', ('nested--3368-7130--in--un--go'(V0, V1, V2, V6, V8)))) end)) end)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--keepLog,go,here-7142'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 1 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--<=_Ord__Nat'(V0, V6)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--parseLogLevel-7088'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Data.Strings':'un--parsePositive'('erased', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V4) -> fun (V5) -> (V4 + V5) end end, fun (V6) -> fun (V7) -> (V6 * V7) end end, fun (V8) -> V8 end}, V3)), fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', (V2(('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num__Nat'(V9)))))) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--parseLogLevel-7046'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> case V3 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Builtin.MkPair', fun (V4) -> {'Idris.Core.Options.Log.MkLogLevel', [], V4} end, V2})); [E2 | E3] -> (fun (V5, V6) -> case V6 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Builtin.MkPair', ('un--mkLogLevel'(V2)), V5})); _ -> {'Idris.Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--show-6964'(V0, V1) -> case V1 of [] -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V0)); _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Data.Strings':'un--fastAppend'(('Idris.Idris2.Data.List':'un--intersperse'('erased', <<"."/utf8>>, V1)))), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<":"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V0)))))) end.
'nested--3373-7136--in--un--there'(V0, V1, V2, V3, V4) -> case V4 of [] -> 1; [E0 | E1] -> (fun (V5, V6) -> ('Idris.Idris2.Data.Maybe':'un--fromMaybe'('erased', fun () -> 1 end, ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Data.These':'un--fromThat'('erased', 'erased', V3)), fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Data.StringMap':'un--lookup'('erased', V5, V7)), fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', ('nested--3368-7130--in--un--go'(V0, V1, V2, V6, V8)))) end)) end)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3373-7135--in--un--here'(V0, V1, V2, V3, V4) -> ('case--keepLog,go,here-7142'(V0, V1, V2, V3, V4, ('Idris.Idris2.Data.These':'un--fromThis'('erased', 'erased', V3)))).
'nested--3368-7130--in--un--go'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('nested--3373-7135--in--un--here'(V0, V1, V2, V4, V3)), fun () -> ('nested--3373-7136--in--un--there'(V0, V1, V2, V4, V3)) end)).
'dn--un--show_Show__LogLevel'(V0) -> case V0 of {'Idris.Core.Options.Log.MkLogLevel', E0, E1} -> (fun (V1, V2) -> case V1 of [] -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V2)); _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Data.Strings':'un--fastAppend'(('Idris.Idris2.Data.List':'un--intersperse'('erased', <<"."/utf8>>, V1)))), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<":"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V2)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__LogLevel'(V0, V1) -> ('dn--un--show_Show__LogLevel'(V1)).
'dn--un--pretty_Pretty__LogLevel'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__String'('erased', ('dn--un--show_Show__LogLevel'(V1)))).
'dn--un--prettyPrec_Pretty__LogLevel'(V0, V1, V2) -> ('dn--un--pretty_Pretty__LogLevel'('erased', V2)).
'dn--un--__Impl_Show_LogLevel'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__LogLevel'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__LogLevel'(V1, V2)) end end}.
'dn--un--__Impl_Pretty_LogLevel'() -> {'Idris.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> fun (V1) -> ('dn--un--pretty_Pretty__LogLevel'('erased', V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--prettyPrec_Pretty__LogLevel'('erased', V3, V4)) end end end}.
'un--withVerbosity'(V0, V1) -> case V1 of {'Idris.Core.Options.Log.MkLogLevel', E0, E1} -> (fun (V2, V3) -> {'Idris.Core.Options.Log.MkLogLevel', V2, V0} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--verbosity'(V0) -> case V0 of {'Idris.Core.Options.Log.MkLogLevel', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unsafeMkLogLevel'(V0, V1) -> {'Idris.Core.Options.Log.MkLogLevel', V0, V1}.
'un--topics'(V0) -> case V0 of {'Idris.Core.Options.Log.MkLogLevel', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--parseLogLevel'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('case--parseLogLevel-7046'(V0, ('Idris.Idris2.Data.Strings':'un--split'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V1, $:)) end, V0)))), fun (V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Data.Strings':'un--parsePositive'('erased', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V5) -> fun (V6) -> (V5 + V6) end end, fun (V7) -> fun (V8) -> (V7 * V8) end end, fun (V9) -> V9 end}, V4)), fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', (V3(('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num__Nat'(V10)))))) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'un--mkLogLevel\x{27}'(V0, V1) -> {'Idris.Core.Options.Log.MkLogLevel', ('Idris.Idris2.Prelude.Types':'un--maybe'('erased', 'erased', fun () -> [] end, fun () -> fun (V2) -> ('Idris.Idris2.Data.List1':'un--forget'('erased', V2)) end end, V0)), V1}.
'un--mkLogLevel'(V0) -> case V0 of <<""/utf8>> -> fun (V1) -> ('un--mkLogLevel\x{27}'({'Idris.Prelude.Types.Nothing'}, V1)) end; _ -> fun (V2) -> ('un--mkLogLevel\x{27}'({'Idris.Prelude.Types.Just', ('Idris.Idris2.Data.Strings':'un--split'(fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V3, $.)) end, V0))}, V2)) end end.
'un--keepLog'(V0, V1) -> case V0 of {'Idris.Core.Options.Log.MkLogLevel', E0, E1} -> (fun (V2, V3) -> ('nested--3368-7130--in--un--go'(V3, V2, V1, V2, V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--insertLogLevel'(V0) -> case V0 of {'Idris.Core.Options.Log.MkLogLevel', E0, E1} -> (fun (V1, V2) -> fun (V3) -> ('Idris.Idris2.Data.StringTrie':'un--insertWith'('erased', V1, fun (V4) -> ('Idris.Idris2.Prelude.Types':'un--maybe'('erased', 'erased', fun () -> V2 end, fun () -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--max_Ord__Nat'(V2, V5)) end end, V4)) end, V3)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaultLogLevel'() -> ('Idris.Idris2.Data.StringTrie':'un--singleton'('erased', [], 0)).
'un--LogLevels'() -> {'Idris.Data.StringTrie.StringTrie', {'Idris.Prelude.Types.Nat'}}.
