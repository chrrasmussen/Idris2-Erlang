-module('Idris.Idris2.Parser.Unlit').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in case block in isLitLine-2520'/4,
  'case--case block in isLitLine-2495'/3,
  'case--isLitLine-2474'/2,
  'case--case block in isLitFile-2458'/2,
  'case--isLitFile-2443'/2,
  'case--isLitFile,isStyle-2426'/3,
  'nested--1862-2415--in--un--isStyle'/2,
  'nested--1862-2414--in--un--hasSuffix'/2,
  'un--unlit'/2,
  'un--styleOrg'/0,
  'un--styleCMark'/0,
  'un--styleBird'/0,
  'un--relit'/2,
  'un--isLitLine'/1,
  'un--isLitFile'/1
]).
'case--case block in case block in isLitLine-2520'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V4 of {'Idris.Prelude.Types.Just', E2} -> (fun (V6) -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Just', V6}, V5} end(E2)); _ -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Nothing'}, V0} end end(E0, E1)); _ -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Nothing'}, V0} end.
'case--case block in isLitLine-2495'(V0, V1, V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> case V3 of {'Idris.Prelude.Types.Just', E2} -> (fun (V5) -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Just', V5}, V4} end(E2)); _ -> ('case--case block in case block in isLitLine-2520'(V0, V1, V2, ('Idris.Idris2.Text.Literate':'un--isLiterateLine'(('un--styleCMark'()), V0)))) end end(E0, E1)); _ -> ('case--case block in case block in isLitLine-2520'(V0, V1, V2, ('Idris.Idris2.Text.Literate':'un--isLiterateLine'(('un--styleCMark'()), V0)))) end.
'case--isLitLine-2474'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Types.Just', E2} -> (fun (V4) -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Just', V4}, V3} end(E2)); _ -> ('case--case block in isLitLine-2495'(V0, V1, ('Idris.Idris2.Text.Literate':'un--isLiterateLine'(('un--styleOrg'()), V0)))) end end(E0, E1)); _ -> ('case--case block in isLitLine-2495'(V0, V1, ('Idris.Idris2.Text.Literate':'un--isLiterateLine'(('un--styleOrg'()), V0)))) end.
'case--case block in isLitFile-2458'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> {'Idris.Prelude.Types.Just', V2} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('nested--1862-2415--in--un--isStyle'(V0, ('un--styleCMark'()))) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--isLitFile-2443'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> {'Idris.Prelude.Types.Just', V2} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('case--case block in isLitFile-2458'(V0, ('nested--1862-2415--in--un--isStyle'(V0, ('un--styleOrg'()))))) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--isLitFile,isStyle-2426'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Prelude.Types.Just', V1}; 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1862-2415--in--un--isStyle'(V0, V1) -> ('case--isLitFile,isStyle-2426'(V0, V1, (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V12, V13, V14)) end end end end end}, fun (V15) -> ('nested--1862-2414--in--un--hasSuffix'(V0, V15)) end))(case V1 of {'Idris.Text.Literate.MkLitStyle', E0, E1, E2} -> (fun (V2, V3, V4) -> V4 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)))).
'nested--1862-2414--in--un--hasSuffix'(V0, V1) -> ('Idris.Idris2.Data.Strings':'un--isSuffixOf'(V1, V0)).
'un--unlit'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Right', V1} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> ('Idris.Idris2.Text.Literate':'un--unlit'(V2, V1)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--styleOrg'() -> {'Idris.Text.Literate.MkLitStyle', [{'Idris.Builtin.MkPair', <<"#+BEGIN_SRC idris"/utf8>>, <<"#+END_SRC"/utf8>>} | [{'Idris.Builtin.MkPair', <<"#+begin_src idris"/utf8>>, <<"#+end_src"/utf8>>} | [{'Idris.Builtin.MkPair', <<"#+COMMENT idris"/utf8>>, <<"#+END_COMMENT"/utf8>>} | [{'Idris.Builtin.MkPair', <<"#+comment idris"/utf8>>, <<"#+end_comment"/utf8>>} | []]]]], [<<"#+IDRIS:"/utf8>> | []], [<<".org"/utf8>> | []]}.
'un--styleCMark'() -> {'Idris.Text.Literate.MkLitStyle', [{'Idris.Builtin.MkPair', <<"```idris"/utf8>>, <<"```"/utf8>>} | [{'Idris.Builtin.MkPair', <<"~~~idris"/utf8>>, <<"~~~"/utf8>>} | []]], [], [<<".md"/utf8>> | [<<".markdown"/utf8>> | []]]}.
'un--styleBird'() -> {'Idris.Text.Literate.MkLitStyle', [], [<<">"/utf8>> | [<<"<"/utf8>> | []]], [<<".lidr"/utf8>> | []]}.
'un--relit'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> V1 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> ('Idris.Idris2.Data.Strings':'un--unwords'([V2 | [V1 | []]])) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isLitLine'(V0) -> ('case--isLitLine-2474'(V0, ('Idris.Idris2.Text.Literate':'un--isLiterateLine'(('un--styleBird'()), V0)))).
'un--isLitFile'(V0) -> ('case--isLitFile-2443'(V0, ('nested--1862-2415--in--un--isStyle'(V0, ('un--styleBird'()))))).
