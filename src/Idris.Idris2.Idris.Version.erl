-module('Idris.Idris2.Idris.Version').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--version-3934'/1,
  'case--showVersion-4012'/5,
  'case--showVersion,showTag-3966'/5,
  'nested--1915-3962--in--un--showTag'/5,
  'un--version'/0,
  'un--showVersion'/2
]).
'with--version-3934'(V0) -> case V0 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V1, V2) -> case V2 of <<""/utf8>> -> {'Idris.Idris.Version.MkVersion', V1, {'Idris.Prelude.Types.Nothing'}}; _ -> {'Idris.Idris.Version.MkVersion', V1, {'Idris.Prelude.Types.Just', V2}} end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--showVersion-4012'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('nested--1915-3962--in--un--showTag'(V0, V1, V2, V3, V4)); 1 -> <<""/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--showVersion,showTag-3966'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<""/utf8>> end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"-"/utf8>>, V5)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1915-3962--in--un--showTag'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<""/utf8>> end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"-"/utf8>>, V5)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--version'() -> ('with--version-3934'(('Idris.Idris2.IdrisPaths':'un--idrisVersion'()))).
'un--showVersion'(V0, V1) -> case V1 of {'Idris.Idris.Version.MkVersion', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'((('Idris.Idris2.Prelude.Interfaces':'un--concat'('erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V16, V17, V18)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup__String'(V19, V20)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid__String'())}}))(('Idris.Idris2.Data.List':'un--intersperse'('erased', <<"."/utf8>>, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V8) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V8)) end, [V4 | [V6 | [V7 | []]]])))))), case V0 of 0 -> ('nested--1915-3962--in--un--showTag'(V4, V6, V7, V3, V0)); 1 -> <<""/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
