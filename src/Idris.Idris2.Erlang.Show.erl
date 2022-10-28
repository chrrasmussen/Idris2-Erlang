-module('Idris.Idris2.Erlang.Show').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--show_Show_ErlTuple0'/1,
  'dn--un--show_Show_ErlTerm'/1,
  'dn--un--show_Show_ErlReference'/1,
  'dn--un--show_Show_ErlPort'/1,
  'dn--un--show_Show_ErlPid'/1,
  'dn--un--show_Show_ErlNil'/1,
  'dn--un--show_Show_ErlCharlist'/1,
  'dn--un--show_Show_ErlAtom'/1,
  'dn--un--show_Show_(ErlTuple1 $a)'/2,
  'dn--un--show_Show_(ErlMapSubset $xs)'/1,
  'dn--un--show_Show_(ErlList Nil)'/1,
  'dn--un--show_Show_(ErlList ((:: $x) $xs))'/2,
  'dn--un--show_Show_((ErlTuple2 $a) $b)'/2,
  'dn--un--show_Show_((ErlCons $a) $b)'/2,
  'dn--un--show_Show_(((ErlTuple3 $a) $b) $c)'/2,
  'dn--un--show_Show_((((ErlTuple4 $a) $b) $c) $d)'/2,
  'dn--un--show_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'/2,
  'dn--un--showPrec_Show_ErlTuple0'/2,
  'dn--un--showPrec_Show_ErlTerm'/2,
  'dn--un--showPrec_Show_ErlReference'/2,
  'dn--un--showPrec_Show_ErlPort'/2,
  'dn--un--showPrec_Show_ErlPid'/2,
  'dn--un--showPrec_Show_ErlNil'/2,
  'dn--un--showPrec_Show_ErlCharlist'/2,
  'dn--un--showPrec_Show_ErlAtom'/2,
  'dn--un--showPrec_Show_(ErlTuple1 $a)'/3,
  'dn--un--showPrec_Show_(ErlMapSubset $xs)'/2,
  'dn--un--showPrec_Show_(ErlList Nil)'/2,
  'dn--un--showPrec_Show_(ErlList ((:: $x) $xs))'/3,
  'dn--un--showPrec_Show_((ErlTuple2 $a) $b)'/3,
  'dn--un--showPrec_Show_((ErlCons $a) $b)'/3,
  'dn--un--showPrec_Show_(((ErlTuple3 $a) $b) $c)'/3,
  'dn--un--showPrec_Show_((((ErlTuple4 $a) $b) $c) $d)'/3,
  'dn--un--showPrec_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'/3,
  'dn--un--__Impl_Show_ErlTuple0'/0,
  'dn--un--__Impl_Show_ErlTerm'/0,
  'dn--un--__Impl_Show_ErlReference'/0,
  'dn--un--__Impl_Show_ErlPort'/0,
  'dn--un--__Impl_Show_ErlPid'/0,
  'dn--un--__Impl_Show_ErlNil'/0,
  'dn--un--__Impl_Show_ErlCharlist'/0,
  'dn--un--__Impl_Show_ErlAtom'/0,
  'dn--un--__Impl_Show_(ErlTuple1 $a)'/1,
  'dn--un--__Impl_Show_(ErlMapSubset $xs)'/0,
  'dn--un--__Impl_Show_(ErlList Nil)'/0,
  'dn--un--__Impl_Show_(ErlList ((:: $x) $xs))'/1,
  'dn--un--__Impl_Show_((ErlTuple2 $a) $b)'/1,
  'dn--un--__Impl_Show_((ErlCons $a) $b)'/1,
  'dn--un--__Impl_Show_(((ErlTuple3 $a) $b) $c)'/1,
  'dn--un--__Impl_Show_((((ErlTuple4 $a) $b) $c) $d)'/1,
  'dn--un--__Impl_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'/1,
  'un--showSep'/2
]).
'dn--un--show_Show_ErlTuple0'(V0) -> case V0 of {} -> (fun () -> <<"{}"/utf8>> end()) end.
'dn--un--show_Show_ErlTerm'(V0) -> <<"<Erlang Term>"/utf8>>.
'dn--un--show_Show_ErlReference'(V0) -> case ('erlang':'apply'('erlang', 'ref_to_list', [V0 | []])) of E0 -> (fun (V1) -> V1 end((fun (V2) -> ('unicode':'characters_to_binary'(V2)) end(E0)))) end.
'dn--un--show_Show_ErlPort'(V0) -> case ('erlang':'apply'('erlang', 'port_to_list', [V0 | []])) of E0 -> (fun (V1) -> V1 end((fun (V2) -> ('unicode':'characters_to_binary'(V2)) end(E0)))) end.
'dn--un--show_Show_ErlPid'(V0) -> case ('erlang':'apply'('erlang', 'pid_to_list', [V0 | []])) of E0 -> (fun (V1) -> <<<<"#Pid"/utf8>>/binary, V1/binary>> end((fun (V2) -> ('unicode':'characters_to_binary'(V2)) end(E0)))) end.
'dn--un--show_Show_ErlNil'(V0) -> case V0 of [] -> <<"[]"/utf8>> end.
'dn--un--show_Show_ErlCharlist'(V0) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'({'Prelude.Show.MkShow', fun (V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V1)) end, fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_Int'(V2, V3)) end end}, V0)).
'dn--un--show_Show_ErlAtom'(V0) -> case V0 of E0 -> (fun (V1) -> <<<<"\x{27}"/utf8>>/binary, <<V1/binary, <<"\x{27}"/utf8>>/binary>>/binary>> end((fun (V2) -> ('erlang':'atom_to_binary'(V2, 'utf8')) end(E0)))) end.
'dn--un--show_Show_(ErlTuple1 $a)'(V0, V1) -> case V1 of {E0} -> (fun (V2) -> <<<<"{"/utf8>>/binary, <<('un--showSep'(<<", "/utf8>>, [case V0 of {'Prelude.Show.MkShow', V3, V4} -> (V3(V2)) end | []]))/binary, <<"}"/utf8>>/binary>>/binary>> end(E0)) end.
'dn--un--show_Show_(ErlMapSubset $xs)'(V0) -> <<"<Erlang Map>"/utf8>>.
'dn--un--show_Show_(ErlList Nil)'(V0) -> case V0 of [] -> <<"[]"/utf8>> end.
'dn--un--show_Show_(ErlList ((:: $x) $xs))'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> <<<<"["/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V4, V5} -> (V4(V2)) end/binary, <<<<" | "/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Show.MkShow', V6, V7} -> (V6(V3)) end/binary, <<"]"/utf8>>/binary>>/binary>>/binary>>/binary>> end(E0, E1)) end.
'dn--un--show_Show_((ErlTuple2 $a) $b)'(V0, V1) -> case V1 of {E0, E1} -> (fun (V2, V3) -> <<<<"{"/utf8>>/binary, <<('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V4, V5} -> (V4(V2)) end | [case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Show.MkShow', V6, V7} -> (V6(V3)) end | []]]))/binary, <<"}"/utf8>>/binary>>/binary>> end(E0, E1)) end.
'dn--un--show_Show_((ErlCons $a) $b)'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> <<<<"["/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V4, V5} -> (V4(V2)) end/binary, <<<<" | "/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Show.MkShow', V6, V7} -> (V6(V3)) end/binary, <<"]"/utf8>>/binary>>/binary>>/binary>>/binary>> end(E0, E1)) end.
'dn--un--show_Show_(((ErlTuple3 $a) $b) $c)'(V0, V1) -> case V1 of {E0, E1, E2} -> (fun (V2, V3, V4) -> <<<<"{"/utf8>>/binary, <<('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V5, V6} -> (V5(V2)) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Show.MkShow', V7, V8} -> (V7(V3)) end | [case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Show.MkShow', V9, V10} -> (V9(V4)) end | []]]]))/binary, <<"}"/utf8>>/binary>>/binary>> end(E0, E1, E2)) end.
'dn--un--show_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V1) -> case V1 of {E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> <<<<"{"/utf8>>/binary, <<('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V6, V7} -> (V6(V2)) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Show.MkShow', V8, V9} -> (V8(V3)) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))) of {'Prelude.Show.MkShow', V10, V11} -> (V10(V4)) end | [case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))) of {'Prelude.Show.MkShow', V12, V13} -> (V12(V5)) end | []]]]]))/binary, <<"}"/utf8>>/binary>>/binary>> end(E0, E1, E2, E3)) end.
'dn--un--show_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1) -> case V1 of {E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> <<<<"{"/utf8>>/binary, <<('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V7, V8} -> (V7(V2)) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Show.MkShow', V9, V10} -> (V9(V3)) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))) of {'Prelude.Show.MkShow', V11, V12} -> (V11(V4)) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))))) of {'Prelude.Show.MkShow', V13, V14} -> (V13(V5)) end | [case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))))) of {'Prelude.Show.MkShow', V15, V16} -> (V15(V6)) end | []]]]]]))/binary, <<"}"/utf8>>/binary>>/binary>> end(E0, E1, E2, E3, E4)) end.
'dn--un--showPrec_Show_ErlTuple0'(V0, V1) -> ('dn--un--show_Show_ErlTuple0'(V1)).
'dn--un--showPrec_Show_ErlTerm'(V0, V1) -> ('dn--un--show_Show_ErlTerm'(V1)).
'dn--un--showPrec_Show_ErlReference'(V0, V1) -> ('dn--un--show_Show_ErlReference'(V1)).
'dn--un--showPrec_Show_ErlPort'(V0, V1) -> ('dn--un--show_Show_ErlPort'(V1)).
'dn--un--showPrec_Show_ErlPid'(V0, V1) -> ('dn--un--show_Show_ErlPid'(V1)).
'dn--un--showPrec_Show_ErlNil'(V0, V1) -> ('dn--un--show_Show_ErlNil'(V1)).
'dn--un--showPrec_Show_ErlCharlist'(V0, V1) -> ('dn--un--show_Show_ErlCharlist'(V1)).
'dn--un--showPrec_Show_ErlAtom'(V0, V1) -> ('dn--un--show_Show_ErlAtom'(V1)).
'dn--un--showPrec_Show_(ErlTuple1 $a)'(V0, V1, V2) -> ('dn--un--show_Show_(ErlTuple1 $a)'(V0, V2)).
'dn--un--showPrec_Show_(ErlMapSubset $xs)'(V0, V1) -> ('dn--un--show_Show_(ErlMapSubset $xs)'(V1)).
'dn--un--showPrec_Show_(ErlList Nil)'(V0, V1) -> ('dn--un--show_Show_(ErlList Nil)'(V1)).
'dn--un--showPrec_Show_(ErlList ((:: $x) $xs))'(V0, V1, V2) -> ('dn--un--show_Show_(ErlList ((:: $x) $xs))'(V0, V2)).
'dn--un--showPrec_Show_((ErlTuple2 $a) $b)'(V0, V1, V2) -> ('dn--un--show_Show_((ErlTuple2 $a) $b)'(V0, V2)).
'dn--un--showPrec_Show_((ErlCons $a) $b)'(V0, V1, V2) -> ('dn--un--show_Show_((ErlCons $a) $b)'(V0, V2)).
'dn--un--showPrec_Show_(((ErlTuple3 $a) $b) $c)'(V0, V1, V2) -> ('dn--un--show_Show_(((ErlTuple3 $a) $b) $c)'(V0, V2)).
'dn--un--showPrec_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V1, V2) -> ('dn--un--show_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V2)).
'dn--un--showPrec_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1, V2) -> ('dn--un--show_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V2)).
'dn--un--__Impl_Show_ErlTuple0'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlTuple0'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlTuple0'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlTerm'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlTerm'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlTerm'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlReference'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlReference'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlReference'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlPort'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlPort'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlPort'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlPid'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlPid'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlPid'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlNil'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlNil'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlNil'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlCharlist'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlCharlist'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlCharlist'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlAtom'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlAtom'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlAtom'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlTuple1 $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(ErlTuple1 $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(ErlTuple1 $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(ErlMapSubset $xs)'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(ErlMapSubset $xs)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(ErlMapSubset $xs)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlList Nil)'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(ErlList Nil)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(ErlList Nil)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlList ((:: $x) $xs))'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(ErlList ((:: $x) $xs))'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(ErlList ((:: $x) $xs))'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((ErlTuple2 $a) $b)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((ErlTuple2 $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((ErlTuple2 $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((ErlCons $a) $b)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((ErlCons $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((ErlCons $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(((ErlTuple3 $a) $b) $c)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(((ErlTuple3 $a) $b) $c)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(((ErlTuple3 $a) $b) $c)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V2, V3)) end end}.
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> <<V2/binary, <<V0/binary, ('un--showSep'(V0, V3))/binary>>/binary>> end end(E0, E1)) end.
