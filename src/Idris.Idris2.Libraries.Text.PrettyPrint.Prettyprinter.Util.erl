-module('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--words,helper-882'/3,
  'nested--3379-875--in--un--helper'/2,
  'un--words'/1,
  'un--reflow'/1,
  'un--putDocW'/2,
  'un--annotateM'/1
]).
'case--words,helper-882'(V0, V1, V2) -> case V2 of [] -> []; _ -> case ('Idris.Idris2.Data.List':'un--break'(fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--isSpace'(V3)) end, V2)) of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> [V4 | ('nested--3379-875--in--un--helper'(V0, V5))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'nested--3379-875--in--un--helper'(V0, V1) -> ('case--words,helper-882'(V0, V1, ('Idris.Idris2.Data.List':'un--dropWhile'(fun (V2) -> ('Idris.Idris2.Prelude.Types':'un--isSpace'(V2)) end, V1)))).
'un--words'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V1) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_String'(V1)) end, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V2) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(V2)) end, ('nested--3379-875--in--un--helper'(V0, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))))))).
'un--reflow'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--fillSep'(('un--words'(V0)))).
'un--putDocW'(V0, V1) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.String':'un--renderIO'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--layoutPretty'({'Idris.Libraries.Text.PrettyPrint.Prettyprinter.Doc.AvailablePerLine', ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Nat_Int'(V0)), 1.0}, V1)))).
'un--annotateM'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> fun (V1) -> V1 end end, fun () -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--annotate'(V2, V3)) end end end, V0)).
