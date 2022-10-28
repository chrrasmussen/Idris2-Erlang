-module('Idris.Idris2.Data.Maybe.Semigroup').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--<+>_Semigroup_Deep(Maybe $a)'/3,
  'un--Deep'/3
]).
'dn--un--<+>_Semigroup_Deep(Maybe $a)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Nothing'} -> case V2 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Just', V3} -> {'Prelude.Types.Just', V3} end; {'Prelude.Types.Just', V4} -> case V2 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Just', V4}; {'Prelude.Types.Just', V5} -> {'Prelude.Types.Just', ((begin (V6 = V0), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end(V4))(V5))} end end.
'un--Deep'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_Deep(Maybe $a)'(V0, V1, V2)).
