-module('Idris.Idris2.Idris.IDEMode.Pretty').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--syntaxToProperties'/1,
  'un--docToProperties'/1,
  'un--annToProperties'/1
]).
'un--syntaxToProperties'(V0) -> ((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V1) -> ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkDecor'(V1)) end))(('Idris.Idris2.Idris.Pretty':'un--syntaxToDecoration'(V0)))).
'un--docToProperties'(V0) -> case V0 of {'Idris.Doc.Annotations.Header'} -> {'Prelude.Types.Just', ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkFormat'(2))}; {'Idris.Doc.Annotations.Deprecation'} -> {'Prelude.Types.Just', ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkFormat'(0))}; {'Idris.Doc.Annotations.Declarations'} -> {'Prelude.Types.Nothing'}; {'Idris.Doc.Annotations.Decl', V1} -> {'Prelude.Types.Nothing'}; {'Idris.Doc.Annotations.DocStringBody'} -> {'Prelude.Types.Nothing'}; {'Idris.Doc.Annotations.UserDocString'} -> {'Prelude.Types.Nothing'}; {'Idris.Doc.Annotations.Syntax', V2} -> ('un--syntaxToProperties'(V2)) end.
'un--annToProperties'(V0) -> case V0 of {'Idris.Pretty.Warning'} -> {'Prelude.Types.Just', {'Protocol.IDE.Formatting.MkProperties', {'Prelude.Types.Just', 7}, {'Prelude.Types.Just', 0}}}; {'Idris.Pretty.Error'} -> {'Prelude.Types.Just', {'Protocol.IDE.Formatting.MkProperties', {'Prelude.Types.Just', 7}, {'Prelude.Types.Just', 0}}}; {'Idris.Pretty.ErrorDesc'} -> {'Prelude.Types.Nothing'}; {'Idris.Pretty.FileCtxt'} -> {'Prelude.Types.Just', ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkDecor'(1))}; {'Idris.Pretty.Code'} -> {'Prelude.Types.Just', ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkDecor'(5))}; {'Idris.Pretty.Meta'} -> {'Prelude.Types.Just', ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkDecor'(2))}; {'Idris.Pretty.Syntax', V1} -> ('un--syntaxToProperties'(V1)); {'Idris.Pretty.UserDocString'} -> {'Prelude.Types.Just', ('Idris.Idris2.Protocol.IDE.Formatting':'un--mkDecor'(0))} end.
