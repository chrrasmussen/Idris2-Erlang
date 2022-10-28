-module('Idris.Idris2.Core.TT.SubstEnv').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--find-15893'/6,
  'un--substs'/2,
  'un--substEnv'/3,
  'un--subst'/2,
  'un--findDrop'/4,
  'un--find'/5
]).
'case--find-15893'(V0, V1, V2, V3, V4, V5) -> begin (V6 = V2), case V6 of 0 -> case V5 of {'Core.TT.SizedView.Z'} -> ('un--findDrop'(V4, V3, V1, V0)); _ -> case V5 of {'Core.TT.SizedView.S', V7} -> begin (V8 = V1), case V8 of 0 -> {'Core.TT.Local', V4, V3, 0}; _ -> begin (V9 = (V8 - 1)), ('Idris.Idris2.Core.TT':'dn--un--weaken_Weaken_Term'(('un--find'(V4, V3, V7, V9, V0)))) end end end end end; _ -> case V5 of {'Core.TT.SizedView.S', V10} -> begin (V11 = V1), case V11 of 0 -> {'Core.TT.Local', V4, V3, 0}; _ -> begin (V12 = (V11 - 1)), ('Idris.Idris2.Core.TT':'dn--un--weaken_Weaken_Term'(('un--find'(V4, V3, V10, V12, V0)))) end end end end end end.
'un--substs'(V0, V1) -> ('un--substEnv'(('Idris.Idris2.Core.TT.SizeOf':'un--zero'()), V0, V1)).
'un--substEnv'(V0, V1, V2) -> case V2 of {'Core.TT.Local', V3, V4, V5} -> ('un--find'(V3, V4, V0, V5, V1)); {'Core.TT.Ref', V6, V7, V8} -> {'Core.TT.Ref', V6, V7, V8}; {'Core.TT.Meta', V9, V10, V11, V12} -> {'Core.TT.Meta', V9, V10, V11, ((begin (V18 = fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V16, V17)) end end end end), fun (V19) -> fun (V20) -> ((((V18('erased'))('erased'))(V19))(V20)) end end end(fun (V13) -> ('un--substEnv'(V0, V1, V13)) end))(V12))}; {'Core.TT.Bind', V21, V22, V23, V24} -> {'Core.TT.Bind', V21, V22, ('Idris.Idris2.Core.TT':'dn--un--map_Functor_Binder'(fun (V25) -> ('un--substEnv'(V0, V1, V25)) end, V23)), ('un--substEnv'(('Idris.Idris2.Core.TT.SizeOf':'un--suc'(V0)), V1, V24))}; {'Core.TT.App', V26, V27, V28} -> {'Core.TT.App', V26, ('un--substEnv'(V0, V1, V27)), ('un--substEnv'(V0, V1, V28))}; {'Core.TT.As', V29, V30, V31, V32} -> {'Core.TT.As', V29, V30, ('un--substEnv'(V0, V1, V31)), ('un--substEnv'(V0, V1, V32))}; {'Core.TT.TDelayed', V33, V34, V35} -> {'Core.TT.TDelayed', V33, V34, ('un--substEnv'(V0, V1, V35))}; {'Core.TT.TDelay', V36, V37, V38, V39} -> {'Core.TT.TDelay', V36, V37, ('un--substEnv'(V0, V1, V38)), ('un--substEnv'(V0, V1, V39))}; {'Core.TT.TForce', V40, V41, V42} -> {'Core.TT.TForce', V40, V41, ('un--substEnv'(V0, V1, V42))}; {'Core.TT.PrimVal', V43, V44} -> {'Core.TT.PrimVal', V43, V44}; {'Core.TT.Erased', V45, V46} -> case V46 of {'Core.TT.Impossible'} -> {'Core.TT.Erased', V45, {'Core.TT.Impossible'}}; {'Core.TT.Placeholder'} -> {'Core.TT.Erased', V45, {'Core.TT.Placeholder'}}; {'Core.TT.Dotted', V47} -> {'Core.TT.Erased', V45, {'Core.TT.Dotted', ('un--substEnv'(V0, V1, V47))}} end; {'Core.TT.TType', V48, V49} -> {'Core.TT.TType', V48, V49} end.
'un--subst'(V0, V1) -> ('un--substs'({'Core.TT.SubstEnv.::', V0, {'Core.TT.SubstEnv.Nil'}}, V1)).
'un--findDrop'(V0, V1, V2, V3) -> begin (V4 = V2), case V3 of {'Core.TT.SubstEnv.Nil'} -> {'Core.TT.Local', V0, V1, V4}; _ -> case V4 of 0 -> case V3 of {'Core.TT.SubstEnv.::', V5, V6} -> V5 end; _ -> begin (V7 = (V4 - 1)), case V3 of {'Core.TT.SubstEnv.::', V8, V9} -> ('un--findDrop'(V0, V1, V7, V9)) end end end end end.
'un--find'(V0, V1, V2, V3, V4) -> ('case--find-15893'(V4, V3, V2, V1, V0, ('Idris.Idris2.Core.TT':'un--sizedView'(V2)))).
