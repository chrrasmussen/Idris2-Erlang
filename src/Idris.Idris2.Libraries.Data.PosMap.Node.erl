-module('Idris.Idris2.Libraries.Data.PosMap.Node').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--traverse'/3,
  'un--map'/3
]).
'un--traverse'(V0, V1, V2) -> case V2 of {'Libraries.Data.PosMap.Node2', V3, V4, V5} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> ((((V8('erased'))('erased'))(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> ((((V11('erased'))('erased'))(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V12, V13, V14} -> ((V13('erased'))(fun (V15) -> fun (V16) -> ('Idris.Idris2.Libraries.Data.PosMap':'un--node2'(('Idris.Idris2.Builtin':'un--snd'(V0)), V15, V16)) end end)) end))((V1(V4)))) end))((V1(V5)))) end; {'Libraries.Data.PosMap.Node3', V17, V18, V19, V20} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V21, V22, V23} -> ((((V23('erased'))('erased'))(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V24, V25, V26} -> ((((V26('erased'))('erased'))(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V27, V28, V29} -> ((((V29('erased'))('erased'))(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkApplicative', V30, V31, V32} -> ((V31('erased'))(fun (V33) -> fun (V34) -> fun (V35) -> ('Idris.Idris2.Libraries.Data.PosMap':'un--node3'(('Idris.Idris2.Builtin':'un--snd'(V0)), V33, V34, V35)) end end end)) end))((V1(V18)))) end))((V1(V19)))) end))((V1(V20)))) end end.
'un--map'(V0, V1, V2) -> case V2 of {'Libraries.Data.PosMap.Node2', V3, V4, V5} -> ('Idris.Idris2.Libraries.Data.PosMap':'un--node2'(V0, (V1(V4)), (V1(V5)))); {'Libraries.Data.PosMap.Node3', V6, V7, V8, V9} -> ('Idris.Idris2.Libraries.Data.PosMap':'un--node3'(V0, (V1(V7)), (V1(V8)), (V1(V9)))) end.
