-module('Idris.Idris2.Parser.Rule.Package').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--sep\x{27}-7894'/2,
  'case--case block in packageName-7865'/3,
  'case--packageName-7857'/2,
  'case--moduleIdent-7836'/2,
  'case--namespacedIdent-7811'/2,
  'case--stringLit-7790'/2,
  'case--case block in exactProperty-7755'/4,
  'case--exactProperty-7741'/3,
  'case--eoi-7718'/2,
  'case--equals-7697'/2,
  'un--stringLit'/0,
  'un--sep\x{27}'/0,
  'un--sep'/2,
  'un--packageName'/0,
  'un--namespacedIdent'/0,
  'un--moduleIdent'/0,
  'un--exactProperty'/1,
  'un--equals'/0,
  'un--eoi'/0,
  'un--Rule'/1,
  'un--PackageEmptyRule'/1
]).
'case--sep\x{27}-7894'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.Separator'} -> (fun () -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkUnit'}} end()); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--case block in packageName-7865'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Prelude.Types.Just', V1}; 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--packageName-7857'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('case--case block in packageName-7865'(V0, V3, ('Idris.Idris2.Parser.Lexer.Common':'case--isIdent-302'(V3, {'Idris.Parser.Lexer.Common.AllowDashes'}, ('Idris.Idris2.Prelude.Types':'un--unpack'(V3)))))) end()); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--moduleIdent-7836'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', ('Idris.Idris2.Core.Name.Namespace':'un--nsAsModuleIdent'(('Idris.Idris2.Core.Name.Namespace':'un--mkNestedNamespace'(V2, V3))))} end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--namespacedIdent-7811'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkPair', V2, V3}} end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--stringLit-7790'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.StringLit', E0} -> (fun (V2) -> {'Idris.Prelude.Types.Just', V2} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--case block in exactProperty-7755'(V0, V1, V2, V3) -> case V3 of 0 -> {'Idris.Prelude.Types.Just', V0}; 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--exactProperty-7741'(V0, V1, V2) -> case V2 of {'Idris.Parser.Lexer.Package.DotSepIdent', E0, E1} -> (fun (V3, V4) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('case--case block in exactProperty-7755'(V0, V1, V4, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V0, V4)))) end()); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--eoi-7718'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.EndOfInput'} -> (fun () -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkUnit'}} end()); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--equals-7697'(V0, V1) -> case V1 of {'Idris.Parser.Lexer.Package.Equals'} -> (fun () -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkUnit'}} end()); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--stringLit'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected string"/utf8>>, fun (V0) -> ('case--stringLit-7790'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--sep\x{27}'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected separator"/utf8>>, fun (V0) -> ('case--sep\x{27}-7894'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--sep'(V0, V1) -> ('Idris.Idris2.Text.Parser':'un--sepBy1'('erased', 'erased', 'erased', 0, ('un--sep\x{27}'()), V1)).
'un--packageName'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected package name"/utf8>>, fun (V0) -> ('case--packageName-7857'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--namespacedIdent'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected namespaced identifier"/utf8>>, fun (V0) -> ('case--namespacedIdent-7811'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--moduleIdent'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected module identifier"/utf8>>, fun (V0) -> ('case--moduleIdent-7836'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--exactProperty'(V0) -> {'Idris.Text.Parser.Core.Terminal', ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"Expected property "/utf8>>, V0)), fun (V1) -> ('case--exactProperty-7741'(V0, V1, case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V2 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--equals'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected equals"/utf8>>, fun (V0) -> ('case--equals-7697'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--eoi'() -> {'Idris.Text.Parser.Core.Terminal', <<"Expected end of input"/utf8>>, fun (V0) -> ('case--eoi-7718'(V0, case V0 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--Rule'(V0) -> ('Idris.Idris2.Parser.Rule.Common':'un--Rule'({'Idris.Parser.Lexer.Package.Token'}, V0)).
'un--PackageEmptyRule'(V0) -> ('Idris.Idris2.Parser.Rule.Common':'un--EmptyRule'({'Idris.Parser.Lexer.Package.Token'}, V0)).
