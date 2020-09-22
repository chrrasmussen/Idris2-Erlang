-module('Idris.Idris2.Parser.Package').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--parseFile-411'/4,
  'un--runParser'/3,
  'un--parseFile'/4
]).
'case--parseFile-411'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Right', E0} -> (fun (V4) -> fun (V5) -> ('un--runParser'('erased', V4, V1)) end end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V6) -> fun (V7) -> {'Idris.Prelude.Types.Left', {'Idris.Parser.Support.FileFail', V6}} end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--runParser'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__(Either $e)'('erased', 'erased', 'erased', ('Idris.Idris2.Utils.Either':'un--mapError'('erased', 'erased', 'erased', fun (V3) -> {'Idris.Parser.Support.LexFail', V3} end, ('Idris.Idris2.Parser.Lexer.Package':'un--lex'(V1)))), fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__(Either $e)'('erased', 'erased', 'erased', ('Idris.Idris2.Utils.Either':'un--mapError'('erased', 'erased', 'erased', fun (V5) -> ('Idris.Idris2.Parser.Support':'un--toGenericParsingError'('erased', V5)) end, ('Idris.Idris2.Text.Parser.Core':'un--parse'('erased', 'erased', 0, V2, V4)))), fun (V6) -> {'Idris.Prelude.Types.Right', ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V6))} end)) end)).
'un--parseFile'(V0, V1, V2, V3) -> begin (V31 = (('Idris.Idris2.Erlang.System.File':'un--readFile'('erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> V10 end end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> begin (V17 = (V14(V16))), begin (V18 = (V15(V16))), (V17(V18)) end end end end end end end}, fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V21(V23))), ((V22(V24))(V23)) end end end end end end, fun (V25) -> fun (V26) -> fun (V27) -> begin (V28 = (V26(V27))), (V28(V27)) end end end end}, fun (V29) -> fun (V30) -> V30 end end}, V1))(V3))), case V31 of {'Idris.Prelude.Types.Right', E0} -> (fun (V32) -> ('un--runParser'('erased', V32, V2)) end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V33) -> {'Idris.Prelude.Types.Left', {'Idris.Parser.Support.FileFail', V33}} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
