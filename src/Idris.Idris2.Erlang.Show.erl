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
'dn--un--show_Show_ErlTuple0'(V0) -> case V0 of {} -> (fun () -> <<"{}"/utf8>> end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_ErlTerm'(V0) -> <<"<Erlang Term>"/utf8>>.
'dn--un--show_Show_ErlReference'(V0) -> case ('erlang':'apply'('erlang', 'ref_to_list', [V0 | []])) of E0 -> (fun (V1) -> V1 end((fun (V2) -> ('unicode':'characters_to_binary'(V2)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_ErlPort'(V0) -> case ('erlang':'apply'('erlang', 'port_to_list', [V0 | []])) of E0 -> (fun (V1) -> V1 end((fun (V2) -> ('unicode':'characters_to_binary'(V2)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_ErlPid'(V0) -> case ('erlang':'apply'('erlang', 'pid_to_list', [V0 | []])) of E0 -> (fun (V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"#Pid"/utf8>>, V1)) end((fun (V2) -> ('unicode':'characters_to_binary'(V2)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_ErlNil'(V0) -> case V0 of [] -> <<"[]"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_ErlCharlist'(V0) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'({'Idris.Prelude.Show.MkShow', fun (V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V1)) end, fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_Int'(V2, V3)) end end}, V0)).
'dn--un--show_Show_ErlAtom'(V0) -> case V0 of E0 -> (fun (V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{27}"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(V1, <<"\x{27}"/utf8>>)))) end((fun (V2) -> ('erlang':'atom_to_binary'(V2, 'utf8')) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(ErlTuple1 $a)'(V0, V1) -> case V1 of {E0} -> (fun (V2) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('un--showSep'(<<", "/utf8>>, [case V0 of {'Idris.Prelude.Show.MkShow', E1, E2} -> (fun (V3, V4) -> (V3(V2)) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []])), <<"}"/utf8>>)))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(ErlMapSubset $xs)'(V0) -> <<"<Erlang Map>"/utf8>>.
'dn--un--show_Show_(ErlList Nil)'(V0) -> case V0 of [] -> <<"[]"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(ErlList ((:: $x) $xs))'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V4, V5) -> (V4(V2)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<" | "/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V3)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<"]"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_((ErlTuple2 $a) $b)'(V0, V1) -> case V1 of {E0, E1} -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V4, V5) -> (V4(V2)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V3)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]])), <<"}"/utf8>>)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_((ErlCons $a) $b)'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V4, V5) -> (V4(V2)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<" | "/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V3)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<"]"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(((ErlTuple3 $a) $b) $c)'(V0, V1) -> case V1 of {E0, E1, E2} -> (fun (V2, V3, V4) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E3, E4} -> (fun (V5, V6) -> (V5(V2)) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Idris.Prelude.Show.MkShow', E5, E6} -> (fun (V7, V8) -> (V7(V3)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Idris.Prelude.Show.MkShow', E7, E8} -> (fun (V9, V10) -> (V9(V4)) end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]]])), <<"}"/utf8>>)))) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V1) -> case V1 of {E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V2)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Idris.Prelude.Show.MkShow', E6, E7} -> (fun (V8, V9) -> (V8(V3)) end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))) of {'Idris.Prelude.Show.MkShow', E8, E9} -> (fun (V10, V11) -> (V10(V4)) end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))) of {'Idris.Prelude.Show.MkShow', E10, E11} -> (fun (V12, V13) -> (V12(V5)) end(E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]]]])), <<"}"/utf8>>)))) end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1) -> case V1 of {E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E5, E6} -> (fun (V7, V8) -> (V7(V2)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Idris.Prelude.Show.MkShow', E7, E8} -> (fun (V9, V10) -> (V9(V3)) end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))) of {'Idris.Prelude.Show.MkShow', E9, E10} -> (fun (V11, V12) -> (V11(V4)) end(E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))))) of {'Idris.Prelude.Show.MkShow', E11, E12} -> (fun (V13, V14) -> (V13(V5)) end(E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))))))) of {'Idris.Prelude.Show.MkShow', E13, E14} -> (fun (V15, V16) -> (V15(V6)) end(E13, E14)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]]]]])), <<"}"/utf8>>)))) end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
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
'dn--un--__Impl_Show_ErlTuple0'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlTuple0'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlTuple0'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlTerm'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlTerm'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlTerm'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlReference'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlReference'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlReference'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlPort'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlPort'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlPort'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlPid'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlPid'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlPid'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlNil'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlNil'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlNil'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlCharlist'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlCharlist'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlCharlist'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlAtom'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ErlAtom'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ErlAtom'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlTuple1 $a)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(ErlTuple1 $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(ErlTuple1 $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(ErlMapSubset $xs)'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(ErlMapSubset $xs)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(ErlMapSubset $xs)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlList Nil)'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(ErlList Nil)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(ErlList Nil)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlList ((:: $x) $xs))'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(ErlList ((:: $x) $xs))'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(ErlList ((:: $x) $xs))'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((ErlTuple2 $a) $b)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((ErlTuple2 $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((ErlTuple2 $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((ErlCons $a) $b)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((ErlCons $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((ErlCons $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(((ErlTuple3 $a) $b) $c)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(((ErlTuple3 $a) $b) $c)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(((ErlTuple3 $a) $b) $c)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V2, V3)) end end}.
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V2, ('Idris.Idris2.Prelude.Types.String':'un--++'(V0, ('un--showSep'(V0, V3)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
