-module('Idris.Idris2.Core.Name.Namespace.ModuleIdent').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--toPath'/1
]).
'un--toPath'(V0) -> ('Idris.Idris2.Libraries.Utils.Path':'un--joinPath'(('Idris.Idris2.Data.List':'un--reverse'(('Idris.Idris2.Core.Name.Namespace':'un--unsafeUnfoldModuleIdent'(V0)))))).
