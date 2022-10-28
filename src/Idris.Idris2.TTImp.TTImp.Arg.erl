-module('Idris.Idris2.TTImp.TTImp.Arg').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--apply'/2
]).
'un--apply'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of {'TTImp.TTImp.Explicit', V4, V5} -> ('un--apply'({'TTImp.TTImp.IApp', V4, V0, V5}, V3)); {'TTImp.TTImp.Auto', V6, V7} -> ('un--apply'({'TTImp.TTImp.IAutoApp', V6, V0, V7}, V3)); {'TTImp.TTImp.Named', V8, V9, V10} -> ('un--apply'({'TTImp.TTImp.INamedApp', V8, V0, V9, V10}, V3)) end end(E0, E1)); [] -> V0 end.
