-module('Idris.Idris2.Core.TT.Views').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--underPis'/3
]).
'un--underPis'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.DPair.MkDPair', {'Prelude.Basics.Lin'}, {'Builtin.MkPair', V1, V2}}; _ -> case V2 of {'Core.TT.Bind', V3, V4, V5, V6} -> case V5 of {'Core.TT.Pi', V7, V8, V9, V10} -> begin (V11 = {'Core.TT.Pi', V7, V8, V9, V10}), case ('un--underPis'(begin (V12 = (V0 - 1)), case ((V12 band 9223372036854775808) =/= 0) of 'true' -> (V12 bor -9223372036854775808); _ -> (V12 band 9223372036854775807) end end, {'Core.Env.::', V11, V1}, V6)) of {'Builtin.DPair.MkDPair', V13, V14} -> case V14 of {'Builtin.MkPair', V15, V16} -> {'Builtin.DPair.MkDPair', {'Prelude.Basics.:<', V13, V4}, {'Builtin.MkPair', V15, V16}} end end end; {'Core.TT.PLet', V17, V18, V19, V20} -> ('un--underPis'(V0, V1, ('Idris.Idris2.Core.TT.SubstEnv':'un--subst'(V19, V6)))); _ -> {'Builtin.DPair.MkDPair', {'Prelude.Basics.Lin'}, {'Builtin.MkPair', V1, V2}} end; _ -> {'Builtin.DPair.MkDPair', {'Prelude.Basics.Lin'}, {'Builtin.MkPair', V1, V2}} end end.
