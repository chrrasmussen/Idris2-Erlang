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
'dn--un--show_Show_DecoratedString'(V0) -> <<('Idris.Idris2.Libraries.Control.ANSI.SGR':'un--escapeSGR'(case V0 of {'Libraries.Control.ANSI.MkDString', V1, V2} -> V1 end))/binary, <<case V0 of {'Libraries.Control.ANSI.MkDString', V3, V4} -> V4 end/binary, ('Idris.Idris2.Libraries.Control.ANSI.SGR':'un--escapeSGR'([{'Libraries.Control.ANSI.SGR.Reset'} | []]))/binary>>/binary>>.
'dn--un--showPrec_Show_DecoratedString'(V0, V1) -> ('dn--un--show_Show_DecoratedString'(V1)).
'dn--un--__Impl_Show_DecoratedString'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_DecoratedString'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_DecoratedString'(V1, V2)) end end}.
'un--underline'(V0) -> {'Libraries.Control.ANSI.MkDString', [{'Libraries.Control.ANSI.SGR.SetStyle', 4} | []], V0}.
'un--italicize'(V0) -> {'Libraries.Control.ANSI.MkDString', [{'Libraries.Control.ANSI.SGR.SetStyle', 3} | []], V0}.
'un--colored'(V0, V1) -> {'Libraries.Control.ANSI.MkDString', [{'Libraries.Control.ANSI.SGR.SetForeground', V0} | []], V1}.
'un--bolden'(V0) -> {'Libraries.Control.ANSI.MkDString', [{'Libraries.Control.ANSI.SGR.SetStyle', 0} | []], V0}.
'un--background'(V0, V1) -> {'Libraries.Control.ANSI.MkDString', [{'Libraries.Control.ANSI.SGR.SetBackground', V0} | []], V1}.
