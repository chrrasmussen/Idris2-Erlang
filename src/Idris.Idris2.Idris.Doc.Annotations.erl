-module('Idris.Idris2.Idris.Doc.Annotations').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--tCon'/2,
  'un--styleAnn'/1,
  'un--header'/1,
  'un--fun'/2,
  'un--docToDecoration'/1,
  'un--dCon'/2
]).
'un--tCon'(V0, V1) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--annotate'({'Idris.Doc.Annotations.Syntax', {'Idris.Pretty.Annotations.TCon', {'Prelude.Types.Just', V0}}}, V1)).
'un--styleAnn'(V0) -> case V0 of {'Idris.Doc.Annotations.Header'} -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.Terminal':'un--underline'()); {'Idris.Doc.Annotations.Deprecation'} -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.Terminal':'un--bold'()); {'Idris.Doc.Annotations.Declarations'} -> []; {'Idris.Doc.Annotations.Decl', V1} -> []; {'Idris.Doc.Annotations.DocStringBody'} -> []; {'Idris.Doc.Annotations.UserDocString'} -> []; {'Idris.Doc.Annotations.Syntax', V2} -> ('Idris.Idris2.Idris.Pretty':'un--syntaxAnn'(V2)) end.
'un--header'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--<+>_Semigroup_(Doc $ann)'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--annotate'({'Idris.Doc.Annotations.Header'}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Symbols':'un--colon'()))).
'un--fun'(V0, V1) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--annotate'({'Idris.Doc.Annotations.Syntax', {'Idris.Pretty.Annotations.Fun', V0}}, V1)).
'un--docToDecoration'(V0) -> case V0 of {'Idris.Doc.Annotations.Syntax', V1} -> ('Idris.Idris2.Idris.Pretty':'un--syntaxToDecoration'(V1)); _ -> {'Prelude.Types.Nothing'} end.
'un--dCon'(V0, V1) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--annotate'({'Idris.Doc.Annotations.Syntax', {'Idris.Pretty.Annotations.DCon', {'Prelude.Types.Just', V0}}}, V1)).
