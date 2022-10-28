-module('Idris.Idris2.Idris.IDEMode.Parser').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--cast_Cast_SExpError_Error'/1,
  'un--parseSExp'/1
]).
'dn--un--cast_Cast_SExpError_Error'(V0) -> case V0 of {'Protocol.SExp.Parser.LexError', V1} -> ('Idris.Idris2.Parser.Support':'un--fromLexError'({'Core.FC.Virtual', {'Core.FC.Interactive'}}, V1)); {'Protocol.SExp.Parser.ParseErrors', V2} -> ('Idris.Idris2.Parser.Support':'un--fromParsingErrors'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V3) -> ('Idris.Idris2.Parser.Lexer.Source':'dn--un--show_Show_Token'(V3)) end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Parser.Lexer.Source':'dn--un--showPrec_Show_Token'(V4, V5)) end end}, {'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V6) -> ('Idris.Idris2.Parser.Lexer.Source':'dn--un--pretty_Pretty_Void_Token'(V6)) end, fun (V7) -> fun (V8) -> ('Idris.Idris2.Parser.Lexer.Source':'dn--un--prettyPrec_Pretty_Void_Token'(V7, V8)) end end}}, {'Core.FC.Virtual', {'Core.FC.Interactive'}}, V2)) end.
'un--parseSExp'(V0) -> case ('Idris.Idris2.Protocol.SExp.Parser':'un--parseSExp'(V0)) of {'Prelude.Types.Left', V1} -> {'Prelude.Types.Left', ('dn--un--cast_Cast_SExpError_Error'(V1))}; {'Prelude.Types.Right', V2} -> {'Prelude.Types.Right', V2} end.
