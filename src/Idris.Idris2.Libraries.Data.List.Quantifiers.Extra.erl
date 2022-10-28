-module('Idris.Idris2.Libraries.Data.List.Quantifiers.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--tabulate'/2,
  'un--lookup'/4,
  'un--++'/2
]).
'un--tabulate'(V0, V1) -> case V1 of [] -> {'Data.List.Quantifiers.All.Nil'}; [E0 | E1] -> (fun (V2, V3) -> {'Data.List.Quantifiers.All.::', (V0(V2)), ('un--tabulate'(V0, V3))} end(E0, E1)) end.
'un--lookup'(V0, V1, V2, V3) -> case V0 of [] -> case V3 of {'Data.List.Quantifiers.All.Nil'} -> {'Prelude.Types.Nothing'} end; [E0 | E1] -> (fun (V4, V5) -> case V3 of {'Data.List.Quantifiers.All.::', V6, V7} -> begin (V8 = [V4 | V5]), case ((begin (V9 = V1), fun (V10) -> fun (V11) -> ((V9(V10))(V11)) end end end(('Idris.Idris2.Data.List':'un--head'(V8))))(V2)) of {'Prelude.Types.No', V12} -> ('un--lookup'(V5, V1, V2, V7)); {'Prelude.Types.Yes', V13} -> {'Prelude.Types.Just', V6} end end end end(E0, E1)) end.
'un--++'(V0, V1) -> case V0 of {'Data.List.Quantifiers.All.Nil'} -> V1; {'Data.List.Quantifiers.All.::', V2, V3} -> {'Data.List.Quantifiers.All.::', V2, ('un--++'(V3, V1))} end.
