-module('Idris.Idris2.Parser.Rule.Common').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--column-2498'/2,
  'un--position'/1,
  'un--location'/1,
  'un--endLocation'/1,
  'un--column'/1,
  'un--Rule'/2,
  'un--EmptyRule'/2
]).
'case--column-2498'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> {'Idris.Text.Parser.Core.Empty', V3} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--position'(V0) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, {'Idris.Text.Parser.Core.Bounds', {'Idris.Text.Parser.Core.NextIs', <<"Unrecognised token"/utf8>>, fun (V1) -> 0 end}}, fun (V2) -> {'Idris.Text.Parser.Core.Empty', {'Idris.Builtin.MkPair', {'Idris.Builtin.MkPair', case V2 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> V5 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V2 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V9, V10, V11, V12, V13, V14) -> V12 end(E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}, {'Idris.Builtin.MkPair', case V2 of {'Idris.Text.Bounded.MkBounded', E12, E13, E14, E15, E16, E17} -> (fun (V15, V16, V17, V18, V19, V20) -> V19 end(E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V2 of {'Idris.Text.Bounded.MkBounded', E18, E19, E20, E21, E22, E23} -> (fun (V21, V22, V23, V24, V25, V26) -> V26 end(E18, E19, E20, E21, E22, E23)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}}} end}.
'un--location'(V0) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, {'Idris.Text.Parser.Core.Bounds', {'Idris.Text.Parser.Core.NextIs', <<"Unrecognised token"/utf8>>, fun (V1) -> 0 end}}, fun (V2) -> {'Idris.Text.Parser.Core.Empty', {'Idris.Builtin.MkPair', case V2 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> V5 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V2 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V9, V10, V11, V12, V13, V14) -> V12 end(E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}} end}.
'un--endLocation'(V0) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, {'Idris.Text.Parser.Core.Bounds', {'Idris.Text.Parser.Core.NextIs', <<"Unrecognised token"/utf8>>, fun (V1) -> 0 end}}, fun (V2) -> {'Idris.Text.Parser.Core.Empty', {'Idris.Builtin.MkPair', case V2 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> V7 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V2 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V9, V10, V11, V12, V13, V14) -> V14 end(E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}} end}.
'un--column'(V0) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, ('un--location'(V0)), fun (V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> {'Idris.Text.Parser.Core.Empty', V3} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end}.
'un--Rule'(V0, V1) -> {'Idris.Text.Parser.Core.Grammar', V0, 0, V1}.
'un--EmptyRule'(V0, V1) -> {'Idris.Text.Parser.Core.Grammar', V0, 1, V1}.
