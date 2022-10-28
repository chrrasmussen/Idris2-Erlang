-module('Idris.Idris2.Control.Monad.Writer.CPS.WriterT').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.unWriterT'/1,
  'un--unWriterT'/1
]).
'un--.unWriterT'(V0) -> begin (V1 = V0), V1 end.
'un--unWriterT'(V0) -> begin (V1 = V0), V1 end.
