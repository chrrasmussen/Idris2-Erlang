-module('Idris.Idris2.Libraries.System.File').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--copyFile'/3
]).
'un--copyFile'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(('Idris.Idris2.Libraries.System.File.Buffer':'un--createBufferFromFile'(V0, V1))))(fun (V8) -> case V8 of {'Prelude.Types.Right', V9} -> case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> case V10 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> ((((V13('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V16, V17} -> case V16 of {'Prelude.Interfaces.MkMonad', V18, V19, V20} -> case V18 of {'Prelude.Interfaces.MkApplicative', V21, V22, V23} -> ((V22('erased'))(('Idris.Idris2.Data.Buffer':'un--prim__bufferSize'(V9)))) end end end))(fun (V15) -> ('Idris.Idris2.Libraries.System.File.Buffer':'un--writeBufferToFile'(V0, V2, V9, V15)) end)) end end; {'Prelude.Types.Left', V24} -> case V0 of {'Prelude.IO.MkHasIO', V25, V26} -> case V25 of {'Prelude.Interfaces.MkMonad', V27, V28, V29} -> case V27 of {'Prelude.Interfaces.MkApplicative', V30, V31, V32} -> ((V31('erased'))({'Prelude.Types.Left', {'Builtin.MkPair', V24, begin (V33 = 0), case ((V33 band 9223372036854775808) =/= 0) of 'true' -> (V33 bor -9223372036854775808); _ -> (V33 band 9223372036854775807) end end}})) end end end end end)) end end.
