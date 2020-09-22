-module('Idris.Idris2.Data.Stream').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--takeBefore-4378'/5,
  'case--takeUntil-4326'/5,
  'case--unzip3-4220'/5,
  'case--unzip3-4196'/5,
  'case--unzip3-4172'/5,
  'nested--2267-4293--in--un--cycle\x{27}'/4,
  'dn--un--pure_Applicative__Stream'/2,
  'dn--un--join_Monad__Stream'/2,
  'dn--un--__Impl_Monad_Stream'/0,
  'dn--un--__Impl_Applicative_Stream'/0,
  'dn--un-->>=_Monad__Stream'/4,
  'dn--un--<*>_Applicative__Stream'/4,
  'un--zipWith3'/8,
  'un--zipWith'/6,
  'un--zip3'/6,
  'un--zip'/4,
  'un--unzip3'/4,
  'un--unzip'/3,
  'un--takeUntil'/3,
  'un--takeBefore'/3,
  'un--scanl'/5,
  'un--repeat'/2,
  'un--iterate'/3,
  'un--index'/3,
  'un--head'/2,
  'un--drop'/3,
  'un--diag'/2,
  'un--cycle'/3
]).
'case--takeBefore-4378'(V0, V1, V2, V3, V4) -> case V4 of 0 -> []; 1 -> [V1 | ('un--takeBefore'('erased', V3, (V2())))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--takeUntil-4326'(V0, V1, V2, V3, V4) -> case V4 of 0 -> [V1 | []]; 1 -> [V1 | ('un--takeUntil'('erased', V3, (V2())))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzip3-4220'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> V8 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzip3-4196'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> V7 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzip3-4172'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> V5 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2267-4293--in--un--cycle\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Prelude.Types.Stream.::', V1, fun () -> ('nested--2267-4293--in--un--cycle\x{27}'('erased', V1, V2, V2)) end}; [E0 | E1] -> (fun (V4, V5) -> {'Idris.Prelude.Types.Stream.::', V4, fun () -> ('nested--2267-4293--in--un--cycle\x{27}'('erased', V1, V2, V5)) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--pure_Applicative__Stream'(V0, V1) -> ('un--repeat'('erased', V1)).
'dn--un--join_Monad__Stream'(V0, V1) -> ('dn--un-->>=_Monad__Stream'('erased', 'erased', V1, fun (V2) -> V2 end)).
'dn--un--__Impl_Monad_Stream'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Stream'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Stream'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad__Stream'('erased', 'erased', V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad__Stream'('erased', V15)) end end}.
'dn--un--__Impl_Applicative_Stream'() -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Stream'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Stream'('erased', 'erased', V8, V9)) end end end end}.
'dn--un-->>=_Monad__Stream'(V0, V1, V2, V3) -> ('un--diag'('erased', ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', V3, V2)))).
'dn--un--<*>_Applicative__Stream'(V0, V1, V2, V3) -> ('un--zipWith'('erased', 'erased', 'erased', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Basics':'un--apply'('erased', 'erased', V4, V5)) end end, V2, V3)).
'un--zipWith3'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V5 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V8, V9) -> case V6 of {'Idris.Prelude.Types.Stream.::', E2, E3} -> (fun (V10, V11) -> case V7 of {'Idris.Prelude.Types.Stream.::', E4, E5} -> (fun (V12, V13) -> {'Idris.Prelude.Types.Stream.::', (((V4(V8))(V10))(V12)), fun () -> ('un--zipWith3'('erased', 'erased', 'erased', 'erased', V4, (V9()), (V11()), (V13()))) end} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--zipWith'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V6, V7) -> case V5 of {'Idris.Prelude.Types.Stream.::', E2, E3} -> (fun (V8, V9) -> {'Idris.Prelude.Types.Stream.::', ((V3(V6))(V8)), fun () -> ('un--zipWith'('erased', 'erased', 'erased', V3, (V7()), (V9()))) end} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--zip3'(V0, V1, V2, V3, V4, V5) -> ('un--zipWith3'('erased', 'erased', 'erased', 'erased', fun (V6) -> fun (V7) -> fun (V8) -> {'Idris.Builtin.MkPair', V6, {'Idris.Builtin.MkPair', V7, V8}} end end end, V3, V4, V5)).
'un--zip'(V0, V1, V2, V3) -> ('un--zipWith'('erased', 'erased', 'erased', fun (V4) -> fun (V5) -> {'Idris.Builtin.MkPair', V4, V5} end end, V2, V3)).
'un--unzip3'(V0, V1, V2, V3) -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', fun (V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> V5 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V3)), {'Idris.Builtin.MkPair', ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', fun (V9) -> case V9 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V10, V11) -> case V11 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V12, V13) -> V12 end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V3)), ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', fun (V14) -> case V14 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V15, V16) -> case V16 of {'Idris.Builtin.MkPair', E10, E11} -> (fun (V17, V18) -> V18 end(E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V3))}}.
'un--unzip'(V0, V1, V2) -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', fun (V3) -> ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V3)) end, V2)), ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', fun (V4) -> ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V4)) end, V2))}.
'un--takeUntil'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V3, V4) -> ('case--takeUntil-4326'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--takeBefore'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V3, V4) -> ('case--takeBefore-4378'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--scanl'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V5, V6) -> {'Idris.Prelude.Types.Stream.::', V3, fun () -> ('un--scanl'('erased', 'erased', V2, ((V2(V3))(V5)), (V6()))) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--repeat'(V0, V1) -> {'Idris.Prelude.Types.Stream.::', V1, fun () -> ('un--repeat'('erased', V1)) end}.
'un--iterate'(V0, V1, V2) -> {'Idris.Prelude.Types.Stream.::', V2, fun () -> ('un--iterate'('erased', V1, (V1(V2)))) end}.
'un--index'(V0, V1, V2) -> case V1 of 0 -> case V2 of {'Idris.Prelude.Types.Stream.::', E2, E3} -> (fun (V3, V4) -> V3 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V5 = (V1 - 1)), case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V6, V7) -> ('un--index'('erased', V5, (V7()))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--head'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--drop'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> begin (V3 = (V1 - 1)), case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V4, V5) -> ('un--drop'('erased', V3, (V5()))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--diag'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Types.Stream.::', E2, E3} -> (fun (V4, V5) -> {'Idris.Prelude.Types.Stream.::', V4, fun () -> ('un--diag'('erased', ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Stream'('erased', 'erased', fun (V6) -> ('Idris.Idris2.Prelude.Types':'un--tail'('erased', V6)) end, (V3()))))) end} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cycle'(V0, V1, V2) -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of {'Idris.Data.List.IsNonEmpty'} -> (fun () -> {'Idris.Prelude.Types.Stream.::', V3, fun () -> ('nested--2267-4293--in--un--cycle\x{27}'('erased', V3, V4, V4)) end} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
