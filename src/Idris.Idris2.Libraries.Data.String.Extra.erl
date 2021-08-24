-module('Idris.Idris2.Libraries.Data.String.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--index-3836'/3,
  'with--with block in takeLast-3806'/4,
  'with--takeLast-3804'/3,
  'case--lines\x{27}-3864'/2,
  'un--unlines\x{27}'/1,
  'un--unlines'/1,
  'un--takeLast'/2,
  'un--take'/2,
  'un--strSnoc'/2,
  'un--shrink'/2,
  'un--replicate'/2,
  'un--lines\x{27}'/1,
  'un--lines'/1,
  'un--join'/3,
  'un--index'/2,
  'un--indentLines'/2,
  'un--indent'/2,
  'un--dropLast'/2,
  'un--drop'/2,
  'un--<+'/2,
  'un--+>'/2
]).
'with--index-3836'(V0, V1, V2) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> {'Idris.Prelude.Types.Just', V3}; _ -> begin (V5 = (V2 - 1)), ('with--index-3836'(V0, V4, V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in takeLast-3806'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V4) -> ('Idris.Idris2.Prelude.Types':'un--substr'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - V0))), V1, V3)) end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V5) -> V3 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--takeLast-3804'(V0, V1, V2) -> ('with--with block in takeLast-3806'(V2, V1, ('Idris.Idris2.Data.Nat':'un--isLTE'(V2, V1)), V0)).
'case--lines\x{27}-3864'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.List1.:::', V2, case V3 of [] -> []; [E2 | E3] -> (fun (V4, V5) -> ('Idris.Idris2.Data.List1':'un--forget'(('un--lines\x{27}'(V5)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unlines\x{27}'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> V1; _ -> ('Idris.Idris2.Prelude.Types.List':'un--++'(V1, [$\x{a} | ('un--unlines\x{27}'(V2))])) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unlines'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('un--unlines\x{27}'(('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V1) -> ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V1)) end, V0)))))).
'un--takeLast'(V0, V1) -> ('with--takeLast-3804'(V1, ('Idris.Idris2.Prelude.Types.String':'un--length'(V1)), V0)).
'un--take'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--substr'(0, V0, V1)).
'un--strSnoc'(V0, V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V0, ('Idris.Idris2.Data.String':'un--singleton'(V1)))).
'un--shrink'(V0, V1) -> ('un--dropLast'(V0, ('un--drop'(V0, V1)))).
'un--replicate'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Data.List':'un--replicate'(V0, V1)))).
'un--lines\x{27}'(V0) -> case V0 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'([])); _ -> ('case--lines\x{27}-3864'(V0, ('Idris.Idris2.Data.List':'un--break'(fun (V1) -> ('Idris.Idris2.Prelude.Types':'un--isNL'(V1)) end, V0)))) end.
'un--lines'(V0) -> ('Idris.Idris2.Data.List1':'dn--un--map_Functor_List1'(fun (V1) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(V1)) end, ('un--lines\x{27}'(('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))))).
'un--join'(V0, V1, V2) -> ('un--drop'(('Idris.Idris2.Prelude.Types.String':'un--length'(V0)), case V1 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> (((((V4('erased'))('erased'))(fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V9, ('Idris.Idris2.Prelude.Types.String':'un--++'(V0, V10)))) end end))(<<""/utf8>>))(V2)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--index'(V0, V1) -> ('with--index-3836'(V1, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V1)), V0)).
'un--indentLines'(V0, V1) -> ('un--unlines'(('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V2) -> ('un--indent'(V0, V2)) end, ('Idris.Idris2.Data.List1':'un--forget'(('un--lines'(V1)))))))).
'un--indent'(V0, V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(('un--replicate'(V0, $ )), V1)).
'un--dropLast'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--reverse'(('un--drop'(V0, ('Idris.Idris2.Prelude.Types':'un--reverse'(V1)))))).
'un--drop'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--substr'(V0, ('Idris.Idris2.Prelude.Types.String':'un--length'(V1)), V1)).
'un--<+'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--strCons'(V0, V1)).
'un--+>'(V0, V1) -> ('un--strSnoc'(V0, V1)).
