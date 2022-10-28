-module('Idris.Idris2.Prelude.Interpolation').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--interpolate_Interpolation_String'/1,
  'dn--un--__Impl_Interpolation_String'/1,
  'un--interpolate'/1
]).
'dn--un--interpolate_Interpolation_String'(V0) -> V0.
'dn--un--__Impl_Interpolation_String'(V0) -> V0.
'un--interpolate'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
