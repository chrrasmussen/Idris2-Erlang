-module('Idris.Idris2.Data.String.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--index-2337'/3,
  'with--with block in takeLast-2305'/4,
  'with--takeLast-2303'/3,
  'un--takeLast'/2,
  'un--take'/2,
  'un--strSnoc'/2,
  'un--shrink'/2,
  'un--replicate'/2,
  'un--join'/4,
  'un--index'/2,
  'un--indentLines'/2,
  'un--indent'/2,
  'un--dropLast'/2,
  'un--drop'/2,
  'un--<+'/2,
  'un--+>'/2
]).
'with--index-2337'(V0, V1, V2) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> {'Idris.Prelude.Types.Just', V3}; _ -> begin (V5 = (V2 - 1)), ('with--index-2337'(V0, V4, V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in takeLast-2305'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V4) -> ('Idris.Idris2.Prelude.Types':'un--substr'(('Idris.Idris2.Prelude.Types':'un--minus'(V1, V0)), V1, V3)) end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V5) -> V3 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--takeLast-2303'(V0, V1, V2) -> ('with--with block in takeLast-2305'(V2, V1, ('Idris.Idris2.Data.Nat':'un--isLTE'(V2, V1)), V0)).
'un--takeLast'(V0, V1) -> ('with--takeLast-2303'(V1, ('Idris.Idris2.Prelude.Types.Strings':'un--length'(V1)), V0)).
'un--take'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--substr'(0, V0, V1)).
'un--strSnoc'(V0, V1) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V0, ('Idris.Idris2.Data.Strings':'un--singleton'(V1)))).
'un--shrink'(V0, V1) -> ('un--dropLast'(V0, ('un--drop'(V0, V1)))).
'un--replicate'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--pack'(('Idris.Idris2.Data.List':'un--replicate'('erased', V0, V1)))).
'un--join'(V0, V1, V2, V3) -> ('un--drop'(('Idris.Idris2.Prelude.Types.Strings':'un--length'(V1)), case V2 of {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', E0, E1} -> (fun (V4, V5) -> (((((V5('erased'))('erased'))(fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V6, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, V7)))) end end))(<<""/utf8>>))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--index'(V0, V1) -> ('with--index-2337'(V1, ('Idris.Idris2.Prelude.Types':'un--unpack'(V1)), V0)).
'un--indentLines'(V0, V1) -> ('Idris.Idris2.Data.Strings':'un--unlines'(('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V2) -> ('un--indent'(V0, V2)) end, ('Idris.Idris2.Data.Strings':'un--lines'(V1)))))).
'un--indent'(V0, V1) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('un--replicate'(V0, $ )), V1)).
'un--dropLast'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--reverse'(('un--drop'(V0, ('Idris.Idris2.Prelude.Types':'un--reverse'(V1)))))).
'un--drop'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--substr'(V0, ('Idris.Idris2.Prelude.Types.Strings':'un--length'(V1)), V1)).
'un--<+'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--strCons'(V0, V1)).
'un--+>'(V0, V1) -> ('un--strSnoc'(V0, V1)).
