-module('Idris.Idris2.Erlang.Show').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--show-1100'/2,
  'case--show-1062'/2,
  'case--show-1022'/2,
  'dn--un--show_Show__ErlTuple0'/1,
  'dn--un--show_Show__ErlTerm'/1,
  'dn--un--show_Show__ErlReference'/1,
  'dn--un--show_Show__ErlPort'/1,
  'dn--un--show_Show__ErlPid'/1,
  'dn--un--show_Show__ErlNil'/1,
  'dn--un--show_Show__ErlCharlist'/1,
  'dn--un--show_Show__ErlAtom'/1,
  'dn--un--show_Show__(ErlTuple1 $a)'/3,
  'dn--un--show_Show__(ErlMapSubset $xs)'/2,
  'dn--un--show_Show__(ErlList Nil)'/1,
  'dn--un--show_Show__(ErlList ((:: $x) $xs))'/4,
  'dn--un--show_Show__((ErlTuple2 $a) $b)'/4,
  'dn--un--show_Show__((ErlCons $a) $b)'/4,
  'dn--un--show_Show__(((ErlTuple3 $a) $b) $c)'/5,
  'dn--un--show_Show__((((ErlTuple4 $a) $b) $c) $d)'/6,
  'dn--un--show_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'/7,
  'dn--un--showPrec_Show__ErlTuple0'/2,
  'dn--un--showPrec_Show__ErlTerm'/2,
  'dn--un--showPrec_Show__ErlReference'/2,
  'dn--un--showPrec_Show__ErlPort'/2,
  'dn--un--showPrec_Show__ErlPid'/2,
  'dn--un--showPrec_Show__ErlNil'/2,
  'dn--un--showPrec_Show__ErlCharlist'/2,
  'dn--un--showPrec_Show__ErlAtom'/2,
  'dn--un--showPrec_Show__(ErlTuple1 $a)'/4,
  'dn--un--showPrec_Show__(ErlMapSubset $xs)'/3,
  'dn--un--showPrec_Show__(ErlList Nil)'/2,
  'dn--un--showPrec_Show__(ErlList ((:: $x) $xs))'/5,
  'dn--un--showPrec_Show__((ErlTuple2 $a) $b)'/5,
  'dn--un--showPrec_Show__((ErlCons $a) $b)'/5,
  'dn--un--showPrec_Show__(((ErlTuple3 $a) $b) $c)'/6,
  'dn--un--showPrec_Show__((((ErlTuple4 $a) $b) $c) $d)'/7,
  'dn--un--showPrec_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'/8,
  'dn--un--__Impl_Show_ErlTuple0'/0,
  'dn--un--__Impl_Show_ErlTerm'/0,
  'dn--un--__Impl_Show_ErlReference'/0,
  'dn--un--__Impl_Show_ErlPort'/0,
  'dn--un--__Impl_Show_ErlPid'/0,
  'dn--un--__Impl_Show_ErlNil'/0,
  'dn--un--__Impl_Show_ErlCharlist'/0,
  'dn--un--__Impl_Show_ErlAtom'/0,
  'dn--un--__Impl_Show_(ErlTuple1 $a)'/2,
  'dn--un--__Impl_Show_(ErlMapSubset $xs)'/1,
  'dn--un--__Impl_Show_(ErlList Nil)'/0,
  'dn--un--__Impl_Show_(ErlList ((:: $x) $xs))'/3,
  'dn--un--__Impl_Show_((ErlTuple2 $a) $b)'/3,
  'dn--un--__Impl_Show_((ErlCons $a) $b)'/3,
  'dn--un--__Impl_Show_(((ErlTuple3 $a) $b) $c)'/4,
  'dn--un--__Impl_Show_((((ErlTuple4 $a) $b) $c) $d)'/5,
  'dn--un--__Impl_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'/6,
  'un--showSep'/2
]).
'case--show-1100'(V0, V1) -> case V1 of E0 -> (fun (V2) -> V2 end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--show-1062'(V0, V1) -> case V1 of E0 -> (fun (V2) -> V2 end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--show-1022'(V0, V1) -> case V1 of E0 -> (fun (V2) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"#Pid"/utf8>>, V2)) end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__ErlTuple0'(V0) -> case V0 of {} -> (fun () -> <<"{}"/utf8>> end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__ErlTerm'(V0) -> <<"<Erlang Term>"/utf8>>.
'dn--un--show_Show__ErlReference'(V0) -> ('case--show-1062'(V0, ('erlang':'apply'('erlang', 'ref_to_list', [V0 | []])))).
'dn--un--show_Show__ErlPort'(V0) -> ('case--show-1100'(V0, ('erlang':'apply'('erlang', 'port_to_list', [V0 | []])))).
'dn--un--show_Show__ErlPid'(V0) -> ('case--show-1022'(V0, ('erlang':'apply'('erlang', 'pid_to_list', [V0 | []])))).
'dn--un--show_Show__ErlNil'(V0) -> case V0 of [] -> <<"[]"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__ErlCharlist'(V0) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__(List $a)'('erased', {'Idris.Prelude.Show.dn--un--__mkShow', fun (V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V1)) end, fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show__Int'(V2, V3)) end end}, ('Idris.Idris2.Erlang.Conversion':'un--erlUnsafeCast'('erased', {'Idris.Erlang.Types.ETErlCharlist'}, 'erased', {'Idris.Erlang.Types.ETList', {'Idris.Erlang.Types.ETInt'}}, V0)))).
'dn--un--show_Show__ErlAtom'(V0) -> case V0 of E0 -> (fun (V1) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{27}"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, <<"\x{27}"/utf8>>)))) end((fun (V2) -> ('erlang':'atom_to_binary'(V2, 'utf8')) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(ErlTuple1 $a)'(V0, V1, V2) -> case V2 of {E0} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('un--showSep'(<<", "/utf8>>, [case V1 of {'Idris.Prelude.Show.dn--un--__mkShow', E1, E2} -> (fun (V4, V5) -> (V4(V3)) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []])), <<"}"/utf8>>)))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(ErlMapSubset $xs)'(V0, V1) -> <<"<Erlang Map>"/utf8>>.
'dn--un--show_Show__(ErlList Nil)'(V0) -> case V0 of [] -> <<"[]"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(ErlList ((:: $x) $xs))'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"["/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E2, E3} -> (fun (V6, V7) -> (V6(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<" | "/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V8, V9) -> (V8(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<"]"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__((ErlTuple2 $a) $b)'(V0, V1, V2, V3) -> case V3 of {E0, E1} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E2, E3} -> (fun (V6, V7) -> (V6(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V8, V9) -> (V8(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]])), <<"}"/utf8>>)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__((ErlCons $a) $b)'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"["/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E2, E3} -> (fun (V6, V7) -> (V6(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<" | "/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V8, V9) -> (V8(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<"]"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(((ErlTuple3 $a) $b) $c)'(V0, V1, V2, V3, V4) -> case V4 of {E0, E1, E2} -> (fun (V5, V6, V7) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V3)) of {'Idris.Prelude.Show.dn--un--__mkShow', E3, E4} -> (fun (V8, V9) -> (V8(V5)) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V3)))) of {'Idris.Prelude.Show.dn--un--__mkShow', E5, E6} -> (fun (V10, V11) -> (V10(V6)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V3)))) of {'Idris.Prelude.Show.dn--un--__mkShow', E7, E8} -> (fun (V12, V13) -> (V12(V7)) end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]]])), <<"}"/utf8>>)))) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__((((ErlTuple4 $a) $b) $c) $d)'(V0, V1, V2, V3, V4, V5) -> case V5 of {E0, E1, E2, E3} -> (fun (V6, V7, V8, V9) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V4)) of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V10, V11) -> (V10(V6)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V4)))) of {'Idris.Prelude.Show.dn--un--__mkShow', E6, E7} -> (fun (V12, V13) -> (V12(V7)) end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V4)))))) of {'Idris.Prelude.Show.dn--un--__mkShow', E8, E9} -> (fun (V14, V15) -> (V14(V8)) end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V4)))))) of {'Idris.Prelude.Show.dn--un--__mkShow', E10, E11} -> (fun (V16, V17) -> (V16(V9)) end(E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]]]])), <<"}"/utf8>>)))) end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {E0, E1, E2, E3, E4} -> (fun (V7, V8, V9, V10, V11) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('un--showSep'(<<", "/utf8>>, [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V5)) of {'Idris.Prelude.Show.dn--un--__mkShow', E5, E6} -> (fun (V12, V13) -> (V12(V7)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V5)))) of {'Idris.Prelude.Show.dn--un--__mkShow', E7, E8} -> (fun (V14, V15) -> (V14(V8)) end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V5)))))) of {'Idris.Prelude.Show.dn--un--__mkShow', E9, E10} -> (fun (V16, V17) -> (V16(V9)) end(E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V5)))))))) of {'Idris.Prelude.Show.dn--un--__mkShow', E11, E12} -> (fun (V18, V19) -> (V18(V10)) end(E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | [case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V5)))))))) of {'Idris.Prelude.Show.dn--un--__mkShow', E13, E14} -> (fun (V20, V21) -> (V20(V11)) end(E13, E14)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | []]]]]])), <<"}"/utf8>>)))) end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__ErlTuple0'(V0, V1) -> ('dn--un--show_Show__ErlTuple0'(V1)).
'dn--un--showPrec_Show__ErlTerm'(V0, V1) -> ('dn--un--show_Show__ErlTerm'(V1)).
'dn--un--showPrec_Show__ErlReference'(V0, V1) -> ('dn--un--show_Show__ErlReference'(V1)).
'dn--un--showPrec_Show__ErlPort'(V0, V1) -> ('dn--un--show_Show__ErlPort'(V1)).
'dn--un--showPrec_Show__ErlPid'(V0, V1) -> ('dn--un--show_Show__ErlPid'(V1)).
'dn--un--showPrec_Show__ErlNil'(V0, V1) -> ('dn--un--show_Show__ErlNil'(V1)).
'dn--un--showPrec_Show__ErlCharlist'(V0, V1) -> ('dn--un--show_Show__ErlCharlist'(V1)).
'dn--un--showPrec_Show__ErlAtom'(V0, V1) -> ('dn--un--show_Show__ErlAtom'(V1)).
'dn--un--showPrec_Show__(ErlTuple1 $a)'(V0, V1, V2, V3) -> ('dn--un--show_Show__(ErlTuple1 $a)'('erased', V1, V3)).
'dn--un--showPrec_Show__(ErlMapSubset $xs)'(V0, V1, V2) -> ('dn--un--show_Show__(ErlMapSubset $xs)'('erased', V2)).
'dn--un--showPrec_Show__(ErlList Nil)'(V0, V1) -> ('dn--un--show_Show__(ErlList Nil)'(V1)).
'dn--un--showPrec_Show__(ErlList ((:: $x) $xs))'(V0, V1, V2, V3, V4) -> ('dn--un--show_Show__(ErlList ((:: $x) $xs))'('erased', 'erased', V2, V4)).
'dn--un--showPrec_Show__((ErlTuple2 $a) $b)'(V0, V1, V2, V3, V4) -> ('dn--un--show_Show__((ErlTuple2 $a) $b)'('erased', 'erased', V2, V4)).
'dn--un--showPrec_Show__((ErlCons $a) $b)'(V0, V1, V2, V3, V4) -> ('dn--un--show_Show__((ErlCons $a) $b)'('erased', 'erased', V2, V4)).
'dn--un--showPrec_Show__(((ErlTuple3 $a) $b) $c)'(V0, V1, V2, V3, V4, V5) -> ('dn--un--show_Show__(((ErlTuple3 $a) $b) $c)'('erased', 'erased', 'erased', V3, V5)).
'dn--un--showPrec_Show__((((ErlTuple4 $a) $b) $c) $d)'(V0, V1, V2, V3, V4, V5, V6) -> ('dn--un--show_Show__((((ErlTuple4 $a) $b) $c) $d)'('erased', 'erased', 'erased', 'erased', V4, V6)).
'dn--un--showPrec_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1, V2, V3, V4, V5, V6, V7) -> ('dn--un--show_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'('erased', 'erased', 'erased', 'erased', 'erased', V5, V7)).
'dn--un--__Impl_Show_ErlTuple0'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlTuple0'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlTuple0'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlTerm'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlTerm'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlTerm'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlReference'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlReference'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlReference'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlPort'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlPort'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlPort'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlPid'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlPid'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlPid'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlNil'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlNil'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlNil'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlCharlist'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlCharlist'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlCharlist'(V1, V2)) end end}.
'dn--un--__Impl_Show_ErlAtom'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ErlAtom'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ErlAtom'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlTuple1 $a)'(V0, V1) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V2) -> ('dn--un--show_Show__(ErlTuple1 $a)'('erased', V1, V2)) end, fun (V3) -> fun (V4) -> ('dn--un--showPrec_Show__(ErlTuple1 $a)'('erased', V1, V3, V4)) end end}.
'dn--un--__Impl_Show_(ErlMapSubset $xs)'(V0) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V1) -> ('dn--un--show_Show__(ErlMapSubset $xs)'('erased', V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show__(ErlMapSubset $xs)'('erased', V2, V3)) end end}.
'dn--un--__Impl_Show_(ErlList Nil)'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__(ErlList Nil)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__(ErlList Nil)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(ErlList ((:: $x) $xs))'(V0, V1, V2) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V3) -> ('dn--un--show_Show__(ErlList ((:: $x) $xs))'('erased', 'erased', V2, V3)) end, fun (V4) -> fun (V5) -> ('dn--un--showPrec_Show__(ErlList ((:: $x) $xs))'('erased', 'erased', V2, V4, V5)) end end}.
'dn--un--__Impl_Show_((ErlTuple2 $a) $b)'(V0, V1, V2) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V3) -> ('dn--un--show_Show__((ErlTuple2 $a) $b)'('erased', 'erased', V2, V3)) end, fun (V4) -> fun (V5) -> ('dn--un--showPrec_Show__((ErlTuple2 $a) $b)'('erased', 'erased', V2, V4, V5)) end end}.
'dn--un--__Impl_Show_((ErlCons $a) $b)'(V0, V1, V2) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V3) -> ('dn--un--show_Show__((ErlCons $a) $b)'('erased', 'erased', V2, V3)) end, fun (V4) -> fun (V5) -> ('dn--un--showPrec_Show__((ErlCons $a) $b)'('erased', 'erased', V2, V4, V5)) end end}.
'dn--un--__Impl_Show_(((ErlTuple3 $a) $b) $c)'(V0, V1, V2, V3) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V4) -> ('dn--un--show_Show__(((ErlTuple3 $a) $b) $c)'('erased', 'erased', 'erased', V3, V4)) end, fun (V5) -> fun (V6) -> ('dn--un--showPrec_Show__(((ErlTuple3 $a) $b) $c)'('erased', 'erased', 'erased', V3, V5, V6)) end end}.
'dn--un--__Impl_Show_((((ErlTuple4 $a) $b) $c) $d)'(V0, V1, V2, V3, V4) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V5) -> ('dn--un--show_Show__((((ErlTuple4 $a) $b) $c) $d)'('erased', 'erased', 'erased', 'erased', V4, V5)) end, fun (V6) -> fun (V7) -> ('dn--un--showPrec_Show__((((ErlTuple4 $a) $b) $c) $d)'('erased', 'erased', 'erased', 'erased', V4, V6, V7)) end end}.
'dn--un--__Impl_Show_(((((ErlTuple5 $a) $b) $c) $d) $e)'(V0, V1, V2, V3, V4, V5) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V6) -> ('dn--un--show_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'('erased', 'erased', 'erased', 'erased', 'erased', V5, V6)) end, fun (V7) -> fun (V8) -> ('dn--un--showPrec_Show__(((((ErlTuple5 $a) $b) $c) $d) $e)'('erased', 'erased', 'erased', 'erased', 'erased', V5, V7, V8)) end end}.
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V2, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V0, ('un--showSep'(V0, V3)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
