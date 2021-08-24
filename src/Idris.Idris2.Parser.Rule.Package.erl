-module('Idris.Idris2.Parser.Rule.Package').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--stringLit'/0,
  'un--sep\x{27}'/0,
  'un--sep'/1,
  'un--packageName'/0,
  'un--namespacedIdent'/0,
  'un--moduleIdent'/0,
  'un--lte'/0,
  'un--lt'/0,
  'un--integerLit'/0,
  'un--gte'/0,
  'un--gt'/0,
  'un--exactProperty'/1,
  'un--equals'/0,
  'un--eqop'/0,
  'un--eoi'/0,
  'un--dot\x{27}'/0,
  'un--andop'/0,
  'un--Rule'/1,
  'un--EmptyRule'/1
]).
'un--stringLit'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected string"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.StringLit', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Just', V1} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--sep\x{27}'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected separator"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.Separator'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--sep'(V0) -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('Idris.Idris2.Libraries.Text.Parser.Core':'dn--un--map_Functor_(((Grammar $state) $tok) $c)'(1, V3, V4)) end end end end, fun (V5) -> ('Idris.Idris2.Data.List1':'un--forget'(V5)) end, ('Idris.Idris2.Libraries.Text.Parser':'un--sepBy1'(1, ('un--sep\x{27}'()), V0)))).
'un--packageName'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected package name"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V1, V2) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case case ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V2)) of [] -> 0; [E2 | E3] -> (fun (V3, V4) -> case ('Idris.Idris2.Parser.Lexer.Common':'un--isIdentStart'(0, V3)) of 1 -> ('Idris.Idris2.Prelude.Interfaces':'un--all'({'Idris.Prelude.Interfaces.MkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V16)) end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V20, V21, V22, V23)) end end end end end end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V28, V29, V30)) end end end end end}, fun (V31) -> ('Idris.Idris2.Parser.Lexer.Common':'un--isIdentTrailing'(0, V31)) end, V4)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> {'Idris.Prelude.Types.Just', V2}; 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--namespacedIdent'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected namespaced identifier"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkPair', V1, V2}} end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--moduleIdent'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected module identifier"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', ('Idris.Idris2.Core.Name.Namespace':'un--nsAsModuleIdent'(('Idris.Idris2.Core.Name.Namespace':'un--mkNestedNamespace'(V1, V2))))} end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--lte'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected <="/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.LTE'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--lt'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected <="/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.LT'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--integerLit'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected integer"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.IntegerLit', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Just', V1} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--gte'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected >="/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.GTE'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--gt'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected >="/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.GT'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--exactProperty'(V0) -> {'Idris.Libraries.Text.Parser.Core.Terminal', ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"Expected property "/utf8>>, V0)), fun (V1) -> case V1 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V0, V3)) of 1 -> {'Idris.Prelude.Types.Just', V0}; 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--equals'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected equals"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.Equals'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--eqop'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected =="/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.EqOp'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--eoi'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected end of input"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.EndOfInput'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--dot\x{27}'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected dot"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.Dot'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--andop'() -> {'Idris.Libraries.Text.Parser.Core.Terminal', <<"Expected &&"/utf8>>, fun (V0) -> case V0 of {'Idris.Parser.Lexer.Package.AndOp'} -> (fun () -> {'Idris.Prelude.Types.Just', 0} end()); _ -> {'Idris.Prelude.Types.Nothing'} end end}.
'un--Rule'(V0) -> {'Idris.Libraries.Text.Parser.Core.Grammar', {'Idris.Builtin.Unit'}, {'Idris.Parser.Lexer.Package.Token'}, 1, V0}.
'un--EmptyRule'(V0) -> {'Idris.Libraries.Text.Parser.Core.Grammar', {'Idris.Builtin.Unit'}, {'Idris.Parser.Lexer.Package.Token'}, 0, V0}.
