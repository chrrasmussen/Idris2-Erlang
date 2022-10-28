-module('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--words,helper-5203'/3,
  'nested--3589-5191--in--un--helper'/2,
  'un--words'/1,
  'un--reflow'/1,
  'un--putDocW'/2,
  'un--annotateM'/1
]).
'case--words,helper-5203'(V0, V1, V2) -> case V2 of [] -> []; _ -> case ('Idris.Idris2.Data.List':'un--break'(fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--isSpace'(V3)) end, V2)) of {'Builtin.MkPair', V4, V5} -> [V4 | ('nested--3589-5191--in--un--helper'(V0, V5))] end end.
'nested--3589-5191--in--un--helper'(V0, V1) -> ('case--words,helper-5203'(V0, V1, ('Idris.Idris2.Data.List':'un--dropWhile'(fun (V2) -> ('Idris.Idris2.Prelude.Types':'un--isSpace'(V2)) end, V1)))).
'un--words'(V0) -> ((begin (V17 = fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V15, V16)) end end end end), fun (V18) -> fun (V19) -> ((((V17('erased'))('erased'))(V18))(V19)) end end end(fun (V9) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V10) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_String'(V10)) end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_String'(V11, V12)) end end}, V9)) end))(((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V1) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(V1)) end))(('nested--3589-5191--in--un--helper'(V0, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))))))).
'un--reflow'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--fillSep'(('un--words'(V0)))).
'un--putDocW'(V0, V1) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.String':'un--renderIO'((('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--layoutPretty'(begin (V2 = ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--defaultLayoutOptions'())), {'Libraries.Text.PrettyPrint.Prettyprinter.Doc.AvailablePerLine', begin (V3 = V0), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end, 1.0} end))(V1)))).
'un--annotateM'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> fun (V1) -> V1 end end, fun () -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--annotate'(V2, V3)) end end end, V0)).
