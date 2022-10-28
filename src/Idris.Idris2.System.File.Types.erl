-module('Idris.Idris2.System.File.Types').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--FilePtr'/0
]).
'un--FilePtr'() -> {'PrimIO.AnyPtr'}.
