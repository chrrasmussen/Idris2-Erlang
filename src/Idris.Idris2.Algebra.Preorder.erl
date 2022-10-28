-module('Idris.Idris2.Algebra.Preorder').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--__Top_(Preorder a)'/1,
  'un--topAbs'/2,
  'un--top'/1,
  'un--preorderTrans'/6,
  'un--preorderRefl'/2,
  'un--lub'/3,
  'un--glb'/3,
  'un--<='/3,
  'un--<'/3
]).
'dn--un--__Top_(Preorder a)'(V0) -> case V0 of {'Algebra.Preorder.dn--un--__mkTop', V1, V2, V3} -> V1 end.
'un--topAbs'(V0, V1) -> case V0 of {'Algebra.Preorder.dn--un--__mkTop', V2, V3, V4} -> (V4(V1)) end.
'un--top'(V0) -> case V0 of {'Algebra.Preorder.dn--un--__mkTop', V1, V2, V3} -> V2 end.
'un--preorderTrans'(V0, V1, V2, V3, V4, V5) -> case V0 of {'Algebra.Preorder.dn--un--__mkPreorder', V6, V7, V8} -> (((((V8(V1))(V2))(V3))(V4))(V5)) end.
'un--preorderRefl'(V0, V1) -> case V0 of {'Algebra.Preorder.dn--un--__mkPreorder', V2, V3, V4} -> (V3(V1)) end.
'un--lub'(V0, V1, V2) -> case case V0 of {'Algebra.Preorder.dn--un--__mkPreorder', V3, V4, V5} -> ((V3(V1))(V2)) end of 1 -> V2; 0 -> V1 end.
'un--glb'(V0, V1, V2) -> case case V0 of {'Algebra.Preorder.dn--un--__mkPreorder', V3, V4, V5} -> ((V3(V1))(V2)) end of 1 -> V1; 0 -> V2 end.
'un--<='(V0, V1, V2) -> case V0 of {'Algebra.Preorder.dn--un--__mkPreorder', V3, V4, V5} -> ((V3(V1))(V2)) end.
'un--<'(V0, V1, V2) -> case case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Algebra.Preorder.dn--un--__mkPreorder', V3, V4, V5} -> ((V3(V1))(V2)) end of 1 -> case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.EqOrd.MkEq', V6, V7} -> ((V7(V1))(V2)) end; 0 -> 0 end.
