-module('Idris.Idris2.Core.TT.Bounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--sizeOf'/1
]).
'un--sizeOf'(V0) -> case V0 of {'Core.TT.Bounds.None'} -> ('Idris.Idris2.Core.TT.SizeOf':'un--zero'()); {'Core.TT.Bounds.Add', V1, V2, V3} -> ('Idris.Idris2.Core.TT.SizeOf':'un--suc'(('un--sizeOf'(V3)))) end.
