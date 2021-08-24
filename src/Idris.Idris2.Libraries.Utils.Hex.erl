-module('Idris.Idris2.Libraries.Utils.Hex').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--asHex,asHex\x{27}-708'/4,
  'nested--3053-891--in--un--fromHexChars\x{27}'/2,
  'nested--2854-699--in--un--asHex\x{27}'/3,
  'un--leftPad'/3,
  'un--hexDigit'/1,
  'un--fromHexDigit'/1,
  'un--fromHexChars'/1,
  'un--fromHex'/1,
  'un--asHex'/1
]).
'with--asHex,asHex\x{27}-708'(V0, V1, V2, V3) -> case V2 of {'Idris.Data.Primitives.Views.IntV.DivBy', E0, E1, E2} -> (fun (V4, V5, V6) -> ('nested--2854-699--in--un--asHex\x{27}'(V0, V4, [('un--hexDigit'(V5)) | V3])) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3053-891--in--un--fromHexChars\x{27}'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Just', 0}; [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--fromHexDigit'(('Idris.Idris2.Prelude.Types':'un--toLower'(V2)))), fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('nested--3053-891--in--un--fromHexChars\x{27}'((V0 * 16), V3)), fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_Maybe'(((('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Int_Integer'(V4)) * V0) + V5))) end)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2854-699--in--un--asHex\x{27}'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> ('with--asHex,asHex\x{27}-708'(V1, V1, ('Idris.Idris2.Data.Primitives.Views.IntV':'un--divides'(V1, 16)), V2)) end.
'un--leftPad'(V0, V1, V2) -> case ('Idris.Idris2.Prelude.Types':'dn--un--<_Ord_Nat'(('Idris.Idris2.Prelude.Types.String':'un--length'(V2)), V1)) of 1 -> ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Data.List':'un--replicate'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - ('Idris.Idris2.Prelude.Types.String':'un--length'(V2))))), V0)))), V2)); 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hexDigit'(V0) -> case V0 of 0 -> $0; 1 -> $1; 2 -> $2; 3 -> $3; 4 -> $4; 5 -> $5; 6 -> $6; 7 -> $7; 8 -> $8; 9 -> $9; 10 -> $a; 11 -> $b; 12 -> $c; 13 -> $d; 14 -> $e; 15 -> $f; _ -> $X end.
'un--fromHexDigit'(V0) -> case V0 of $0 -> {'Idris.Prelude.Types.Just', 0}; $1 -> {'Idris.Prelude.Types.Just', 1}; $2 -> {'Idris.Prelude.Types.Just', 2}; $3 -> {'Idris.Prelude.Types.Just', 3}; $4 -> {'Idris.Prelude.Types.Just', 4}; $5 -> {'Idris.Prelude.Types.Just', 5}; $6 -> {'Idris.Prelude.Types.Just', 6}; $7 -> {'Idris.Prelude.Types.Just', 7}; $8 -> {'Idris.Prelude.Types.Just', 8}; $9 -> {'Idris.Prelude.Types.Just', 9}; $a -> {'Idris.Prelude.Types.Just', 10}; $b -> {'Idris.Prelude.Types.Just', 11}; $c -> {'Idris.Prelude.Types.Just', 12}; $d -> {'Idris.Prelude.Types.Just', 13}; $e -> {'Idris.Prelude.Types.Just', 14}; $f -> {'Idris.Prelude.Types.Just', 15}; _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--fromHexChars'(V0) -> ('nested--3053-891--in--un--fromHexChars\x{27}'(1, V0)).
'un--fromHex'(V0) -> ('un--fromHexChars'(('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))).
'un--asHex'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V0, 0)) of 1 -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('nested--2854-699--in--un--asHex\x{27}'(V0, V0, [])))); 0 -> <<"0"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
