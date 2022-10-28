-module('Idris.Idris2.System.File.Support').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--supportNode'/1,
  'un--supportC'/1,
  'un--ok'/2
]).
'un--supportNode'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> <<V1/binary, V2/binary>> end end, <<""/utf8>>}, fun (V3) -> V3 end, [<<"node:support:"/utf8>> | [V0 | [<<",support_system_file"/utf8>> | []]]])).
'un--supportC'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> <<V1/binary, V2/binary>> end end, <<""/utf8>>}, fun (V3) -> V3 end, [<<"C:"/utf8>> | [V0 | [<<", libidris2_support, idris_file.h"/utf8>> | []]]])).
'un--ok'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> case V4 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((V8('erased'))({'Prelude.Types.Right', V1})) end end end.
