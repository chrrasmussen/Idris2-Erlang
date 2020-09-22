-module('Idris.Idris2.Compiler.Erlang.GlobalOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--flagToOpts-7781'/2,
  'case--flagToOpts-7771'/2,
  'case--flagToOpts-7761'/2,
  'nested--2298-7823--in--un--parseFlag'/2,
  'nested--2258-7785--in--un--flagsToOpts\x{27}'/3,
  'un--stringToFlags'/1,
  'un--parseOutputFormat'/1,
  'un--parseOpts'/1,
  'un--flagsToOpts'/1,
  'un--flagToOpts'/2,
  'un--defaultGlobalOpts'/0
]).
'case--flagToOpts-7781'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2} -> (fun (V2, V3, V4) -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', V2, V3, V0} end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--flagToOpts-7771'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2} -> (fun (V2, V3, V4) -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', V2, V0, V4} end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--flagToOpts-7761'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2} -> (fun (V2, V3, V4) -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', V0, V3, V4} end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2298-7823--in--un--parseFlag'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of <<"format"/utf8>> -> case V3 of [E2 | E3] -> (fun (V4, V5) -> case V5 of [] -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'('erased', 'erased', 'erased', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Maybe'('erased', 'erased', V8, V9)) end end end end, fun (V10) -> {'Idris.Compiler.Erlang.GlobalOpts.SetOutputFormat', V10} end, ('un--parseOutputFormat'(V4)))); _ -> {'Idris.Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Idris.Prelude.Types.Nothing'} end; <<"prefix"/utf8>> -> case V3 of [E4 | E5] -> (fun (V11, V12) -> case V12 of [] -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.SetPrefix', V11}}; _ -> {'Idris.Prelude.Types.Nothing'} end end(E4, E5)); _ -> {'Idris.Prelude.Types.Nothing'} end; <<"inline"/utf8>> -> case V3 of [E6 | E7] -> (fun (V13, V14) -> case V14 of [] -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.SetInlineSize', ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__String_Integer'(V13))}}; _ -> {'Idris.Prelude.Types.Nothing'} end end(E6, E7)); _ -> {'Idris.Prelude.Types.Nothing'} end; _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'nested--2258-7785--in--un--flagsToOpts\x{27}'(V0, V1, V2) -> case V1 of [] -> V2; [E0 | E1] -> (fun (V3, V4) -> ('nested--2258-7785--in--un--flagsToOpts\x{27}'(V0, V4, ('un--flagToOpts'(V3, V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--stringToFlags'(V0) -> ('Idris.Idris2.Data.List':'un--mapMaybe'('erased', 'erased', fun (V1) -> ('nested--2298-7823--in--un--parseFlag'(V0, V1)) end, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V2) -> ('Idris.Idris2.Data.Strings':'un--words'(V2)) end, V0)))).
'un--parseOutputFormat'(V0) -> case V0 of <<"erl"/utf8>> -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.ErlangSource'}}; <<"erl-pretty"/utf8>> -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.ErlangSourcePretty'}}; <<"abstr"/utf8>> -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.AbstractFormat'}}; <<"beam"/utf8>> -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.BeamFromErlangSource'}}; <<"beam-abstr"/utf8>> -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.GlobalOpts.BeamFromAbstractFormat'}}; _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--parseOpts'(V0) -> ('un--flagsToOpts'(('un--stringToFlags'(V0)))).
'un--flagsToOpts'(V0) -> ('nested--2258-7785--in--un--flagsToOpts\x{27}'(V0, V0, ('un--defaultGlobalOpts'()))).
'un--flagToOpts'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.SetOutputFormat', E0} -> (fun (V2) -> case V1 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E1, E2, E3} -> (fun (V3, V4, V5) -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', V2, V4, V5} end(E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Compiler.Erlang.GlobalOpts.SetPrefix', E4} -> (fun (V6) -> case V1 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E5, E6, E7} -> (fun (V7, V8, V9) -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', V7, V6, V9} end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4)); {'Idris.Compiler.Erlang.GlobalOpts.SetInlineSize', E8} -> (fun (V10) -> case V1 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E9, E10, E11} -> (fun (V11, V12, V13) -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', V11, V12, V10} end(E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaultGlobalOpts'() -> {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', {'Idris.Compiler.Erlang.GlobalOpts.BeamFromErlangSource'}, <<"Idris"/utf8>>, 0}.
