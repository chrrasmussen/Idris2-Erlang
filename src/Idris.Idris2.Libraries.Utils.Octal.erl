-module('Idris.Idris2.Libraries.Utils.Octal').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--asOct,asOct\x{27}-1229'/4,
  'nested--2733-1319--in--un--fromOctChars\x{27}'/2,
  'nested--2622-1212--in--un--asOct\x{27}'/3,
  'un--octDigit'/1,
  'un--fromOctDigit'/1,
  'un--fromOctChars'/1,
  'un--fromOct'/1,
  'un--asOct'/1
]).
'with--asOct,asOct\x{27}-1229'(V0, V1, V2, V3) -> case V2 of {'Data.Primitives.Views.IntV.DivBy', V4, V5, V6} -> ('nested--2622-1212--in--un--asOct\x{27}'(V0, V4, [('un--octDigit'(V5)) | V3])) end.
'nested--2733-1319--in--un--fromOctChars\x{27}'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Just', 0}; [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--fromOctDigit'(('Idris.Idris2.Prelude.Types':'un--toLower'(V2)))), fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('nested--2733-1319--in--un--fromOctChars\x{27}'((V0 * 8), V3)), fun (V5) -> {'Prelude.Types.Just', ((V4 * V0) + V5)} end)) end)) end(E0, E1)) end.
'nested--2622-1212--in--un--asOct\x{27}'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> ('with--asOct,asOct\x{27}-1229'(V1, V1, ('Idris.Idris2.Data.Primitives.Views.IntV':'un--divides'(V1, 8)), V2)) end.
'un--octDigit'(V0) -> case V0 of 0 -> $0; 1 -> $1; 2 -> $2; 3 -> $3; 4 -> $4; 5 -> $5; 6 -> $6; 7 -> $7; _ -> $X end.
'un--fromOctDigit'(V0) -> case V0 of $0 -> {'Prelude.Types.Just', 0}; $1 -> {'Prelude.Types.Just', 1}; $2 -> {'Prelude.Types.Just', 2}; $3 -> {'Prelude.Types.Just', 3}; $4 -> {'Prelude.Types.Just', 4}; $5 -> {'Prelude.Types.Just', 5}; $6 -> {'Prelude.Types.Just', 6}; $7 -> {'Prelude.Types.Just', 7}; _ -> {'Prelude.Types.Nothing'} end.
'un--fromOctChars'(V0) -> ('nested--2733-1319--in--un--fromOctChars\x{27}'(1, V0)).
'un--fromOct'(V0) -> ('un--fromOctChars'(('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))).
'un--asOct'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('nested--2622-1212--in--un--asOct\x{27}'(V0, V0, [])))).
