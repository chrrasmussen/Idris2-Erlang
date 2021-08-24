-module('Idris.Idris2.Libraries.Control.ANSI').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--show_Show_DecoratedString'/1,
  'dn--un--showPrec_Show_DecoratedString'/2,
  'dn--un--__Impl_Show_DecoratedString'/0,
  'un--underline'/1,
  'un--italicize'/1,
  'un--colored'/2,
  'un--bolden'/1,
  'un--background'/2
]).
'dn--un--show_Show_DecoratedString'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Libraries.Control.ANSI.SGR':'un--escapeSGR'(case V0 of {'Idris.Libraries.Control.ANSI.MkDString', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)), ('Idris.Idris2.Prelude.Types.String':'un--++'(case V0 of {'Idris.Libraries.Control.ANSI.MkDString', E2, E3} -> (fun (V3, V4) -> V4 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Libraries.Control.ANSI.SGR':'un--escapeSGR'([{'Idris.Libraries.Control.ANSI.SGR.Reset'} | []])))))).
'dn--un--showPrec_Show_DecoratedString'(V0, V1) -> ('dn--un--show_Show_DecoratedString'(V1)).
'dn--un--__Impl_Show_DecoratedString'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_DecoratedString'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_DecoratedString'(V1, V2)) end end}.
'un--underline'(V0) -> {'Idris.Libraries.Control.ANSI.MkDString', [{'Idris.Libraries.Control.ANSI.SGR.SetStyle', 4} | []], V0}.
'un--italicize'(V0) -> {'Idris.Libraries.Control.ANSI.MkDString', [{'Idris.Libraries.Control.ANSI.SGR.SetStyle', 3} | []], V0}.
'un--colored'(V0, V1) -> {'Idris.Libraries.Control.ANSI.MkDString', [{'Idris.Libraries.Control.ANSI.SGR.SetForeground', V0} | []], V1}.
'un--bolden'(V0) -> {'Idris.Libraries.Control.ANSI.MkDString', [{'Idris.Libraries.Control.ANSI.SGR.SetStyle', 0} | []], V0}.
'un--background'(V0, V1) -> {'Idris.Libraries.Control.ANSI.MkDString', [{'Idris.Libraries.Control.ANSI.SGR.SetBackground', V0} | []], V1}.
