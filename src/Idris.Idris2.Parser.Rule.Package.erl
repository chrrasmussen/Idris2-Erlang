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
'un--stringLit'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected string"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.StringLit', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--sep\x{27}'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected separator"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.Separator'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--sep'(V0) -> ((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Libraries.Text.Parser.Core':'dn--un--map_Functor_(((Grammar $state) $tok) $c)'(1, V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V1) -> ('Idris.Idris2.Data.List1':'un--forget'(V1)) end))(('Idris.Idris2.Libraries.Text.Parser':'un--sepBy1'(1, ('un--sep\x{27}'()), V0)))).
'un--packageName'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected package name"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.DotSepIdent', V1, V2} -> case V1 of {'Prelude.Types.Nothing'} -> case case ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V2)) of [] -> 0; [E0 | E1] -> (fun (V3, V4) -> case ('Idris.Idris2.Parser.Lexer.Common':'un--isIdentStart'(0, V3)) of 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V5, V6)) end end, 1}, fun (V7) -> ('Idris.Idris2.Parser.Lexer.Common':'un--isIdentTrailing'(0, V7)) end, V4)); 0 -> 0 end end(E0, E1)) end of 1 -> {'Prelude.Types.Just', V2}; 0 -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end}.
'un--namespacedIdent'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected namespaced identifier"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.DotSepIdent', V1, V2} -> {'Prelude.Types.Just', {'Builtin.MkPair', V1, V2}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--moduleIdent'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected module identifier"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.DotSepIdent', V1, V2} -> {'Prelude.Types.Just', ('Idris.Idris2.Core.Name.Namespace':'un--nsAsModuleIdent'(('Idris.Idris2.Core.Name.Namespace':'un--mkNestedNamespace'(V1, V2))))}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--lte'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected <="/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.LTE'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--lt'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected <="/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.LT'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--integerLit'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected integer"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.IntegerLit', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--gte'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected >="/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.GTE'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--gt'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected >="/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.GT'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--exactProperty'(V0) -> {'Libraries.Text.Parser.Core.Terminal', <<<<"Expected property "/utf8>>/binary, V0/binary>>, fun (V1) -> case V1 of {'Parser.Lexer.Package.DotSepIdent', V2, V3} -> case V2 of {'Prelude.Types.Nothing'} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V0, V3)) of 1 -> {'Prelude.Types.Just', V0}; 0 -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end}.
'un--equals'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected equals"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.Equals'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--eqop'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected =="/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.EqOp'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--eoi'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected end of input"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.EndOfInput'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--dot\x{27}'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected dot"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.Dot'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--andop'() -> {'Libraries.Text.Parser.Core.Terminal', <<"Expected &&"/utf8>>, fun (V0) -> case V0 of {'Parser.Lexer.Package.AndOp'} -> {'Prelude.Types.Just', {'Builtin.MkUnit'}}; _ -> {'Prelude.Types.Nothing'} end end}.
'un--Rule'(V0) -> {'Libraries.Text.Parser.Core.Grammar', {'Builtin.Unit'}, {'Parser.Lexer.Package.Token'}, 1, V0}.
'un--EmptyRule'(V0) -> {'Libraries.Text.Parser.Core.Grammar', {'Builtin.Unit'}, {'Parser.Lexer.Package.Token'}, 0, V0}.
