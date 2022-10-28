-module('Idris.Idris2.Protocol.Hex').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--4299-5209--in--un--fromHexChars\x{27}'/2,
  'nested--4099-5018--in--un--asHex\x{27}'/3,
  'un--leftPad'/3,
  'un--hexDigit'/1,
  'un--fromHexDigit'/1,
  'un--fromHexChars'/1,
  'un--fromHex'/1,
  'un--asHex'/1
]).
'nested--4299-5209--in--un--fromHexChars\x{27}'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Just', 0}; [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--fromHexDigit'(('Idris.Idris2.Prelude.Types':'un--toLower'(V2)))), fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('nested--4299-5209--in--un--fromHexChars\x{27}'((V0 * 16), V3)), fun (V5) -> {'Prelude.Types.Just', ((V4 * V0) + V5)} end)) end)) end(E0, E1)) end.
'nested--4099-5018--in--un--asHex\x{27}'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> ('nested--4099-5018--in--un--asHex\x{27}'(V0, (V1 bsr begin (V3 = ('Idris.Idris2.Protocol.Hex.New':'un--i4'())), begin (V4 = 18446744073709551616), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end), [('un--hexDigit'((V1 band 15))) | V2])) end.
'un--leftPad'(V0, V1, V2) -> case ('Idris.Idris2.Prelude.Types':'dn--un--<_Ord_Nat'(('Idris.Idris2.Prelude.Types.String':'un--length'(V2)), V1)) of 1 -> <<('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Data.List':'un--replicateTR'([], ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - ('Idris.Idris2.Prelude.Types.String':'un--length'(V2))))), V0))))/binary, V2/binary>>; 0 -> V2 end.
'un--hexDigit'(V0) -> case V0 of 0 -> $0; 1 -> $1; 2 -> $2; 3 -> $3; 4 -> $4; 5 -> $5; 6 -> $6; 7 -> $7; 8 -> $8; 9 -> $9; 10 -> $a; 11 -> $b; 12 -> $c; 13 -> $d; 14 -> $e; 15 -> $f; _ -> $X end.
'un--fromHexDigit'(V0) -> case V0 of $0 -> {'Prelude.Types.Just', 0}; $1 -> {'Prelude.Types.Just', 1}; $2 -> {'Prelude.Types.Just', 2}; $3 -> {'Prelude.Types.Just', 3}; $4 -> {'Prelude.Types.Just', 4}; $5 -> {'Prelude.Types.Just', 5}; $6 -> {'Prelude.Types.Just', 6}; $7 -> {'Prelude.Types.Just', 7}; $8 -> {'Prelude.Types.Just', 8}; $9 -> {'Prelude.Types.Just', 9}; $a -> {'Prelude.Types.Just', 10}; $b -> {'Prelude.Types.Just', 11}; $c -> {'Prelude.Types.Just', 12}; $d -> {'Prelude.Types.Just', 13}; $e -> {'Prelude.Types.Just', 14}; $f -> {'Prelude.Types.Just', 15}; _ -> {'Prelude.Types.Nothing'} end.
'un--fromHexChars'(V0) -> ('nested--4299-5209--in--un--fromHexChars\x{27}'(1, V0)).
'un--fromHex'(V0) -> ('un--fromHexChars'(('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))).
'un--asHex'(V0) -> case V0 of 0 -> <<"0"/utf8>>; _ -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('nested--4099-5018--in--un--asHex\x{27}'(V0, V0, [])))) end.
