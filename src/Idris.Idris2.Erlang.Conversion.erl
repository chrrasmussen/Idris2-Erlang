-module('Idris.Idris2.Erlang.Conversion').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toErlTerm_ToErlTerm_Bool'/1,
  'dn--un--toErlTerm_ToErlTerm_$a'/2,
  'dn--un--cast_Cast_ErlNil_(List $a)'/1,
  'dn--un--cast_Cast_ErlNil_(ErlList Nil)'/1,
  'dn--un--cast_Cast_Bool_ErlAtom'/1,
  'dn--un--cast_Cast_(ErlList Nil)_ErlNil'/1,
  'dn--un--cast_Cast_(ErlList Nil)_(List $a)'/1,
  'dn--un--cast_Cast_(ErlList ((:: $a) Nil))_((ErlCons $a) ErlNil)'/1,
  'dn--un--cast_Cast_(ErlList ((:: $a) $as))_(List $a)'/2,
  'dn--un--cast_Cast_(ErlList ((:: $a) $as))_((ErlCons $a) ((ErlCons $b) $c))'/2,
  'dn--un--cast_Cast_((ErlCons $a) $b)_(List $a)'/2,
  'dn--un--cast_Cast_((ErlCons $a) $b)_(ErlList ((:: $a) $bs))'/2,
  'dn--un--__Impl_ToErlTerm_Bool'/1,
  'dn--un--__Impl_ToErlTerm_$a'/2,
  'dn--un--__Impl_Cast_ErlNil_(List $a)'/1,
  'dn--un--__Impl_Cast_ErlNil_(ErlList Nil)'/1,
  'dn--un--__Impl_Cast_Bool_ErlAtom'/1,
  'dn--un--__Impl_Cast_(ErlList Nil)_ErlNil'/1,
  'dn--un--__Impl_Cast_(ErlList Nil)_(List $a)'/1,
  'dn--un--__Impl_Cast_(ErlList ((:: $a) Nil))_((ErlCons $a) ErlNil)'/1,
  'dn--un--__Impl_Cast_(ErlList ((:: $a) $as))_(List $a)'/2,
  'dn--un--__Impl_Cast_(ErlList ((:: $a) $as))_((ErlCons $a) ((ErlCons $b) $c))'/2,
  'dn--un--__Impl_Cast_((ErlCons $a) $b)_(List $a)'/2,
  'dn--un--__Impl_Cast_((ErlCons $a) $b)_(ErlList ((:: $a) $bs))'/2,
  'un--toErlTerm'/2,
  'un--listToErlList'/1,
  'un--listToErlCons'/1,
  'un--erlUnsafeCast'/3
]).
'dn--un--toErlTerm_ToErlTerm_Bool'(V0) -> case V0 of 1 -> 'true'; 0 -> 'false'; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--toErlTerm_ToErlTerm_$a'(V0, V1) -> V1.
'dn--un--cast_Cast_ErlNil_(List $a)'(V0) -> case V0 of [] -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_ErlNil_(ErlList Nil)'(V0) -> case V0 of [] -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_Bool_ErlAtom'(V0) -> case V0 of 1 -> 'true'; 0 -> 'false'; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_(ErlList Nil)_ErlNil'(V0) -> case V0 of [] -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_(ErlList Nil)_(List $a)'(V0) -> case V0 of [] -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_(ErlList ((:: $a) Nil))_((ErlCons $a) ErlNil)'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> [V1 | ('dn--un--cast_Cast_(ErlList Nil)_ErlNil'(V2))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_(ErlList ((:: $a) $as))_(List $a)'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> [V2 | (V0(V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_(ErlList ((:: $a) $as))_((ErlCons $a) ((ErlCons $b) $c))'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> [V2 | (V0(V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_((ErlCons $a) $b)_(List $a)'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> [V2 | (V0(V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_((ErlCons $a) $b)_(ErlList ((:: $a) $bs))'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> [V2 | (V0(V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_ToErlTerm_Bool'(V0) -> ('dn--un--toErlTerm_ToErlTerm_Bool'(V0)).
'dn--un--__Impl_ToErlTerm_$a'(V0, V1) -> V1.
'dn--un--__Impl_Cast_ErlNil_(List $a)'(V0) -> ('dn--un--cast_Cast_ErlNil_(List $a)'(V0)).
'dn--un--__Impl_Cast_ErlNil_(ErlList Nil)'(V0) -> ('dn--un--cast_Cast_ErlNil_(ErlList Nil)'(V0)).
'dn--un--__Impl_Cast_Bool_ErlAtom'(V0) -> ('dn--un--cast_Cast_Bool_ErlAtom'(V0)).
'dn--un--__Impl_Cast_(ErlList Nil)_ErlNil'(V0) -> ('dn--un--cast_Cast_(ErlList Nil)_ErlNil'(V0)).
'dn--un--__Impl_Cast_(ErlList Nil)_(List $a)'(V0) -> ('dn--un--cast_Cast_(ErlList Nil)_(List $a)'(V0)).
'dn--un--__Impl_Cast_(ErlList ((:: $a) Nil))_((ErlCons $a) ErlNil)'(V0) -> ('dn--un--cast_Cast_(ErlList ((:: $a) Nil))_((ErlCons $a) ErlNil)'(V0)).
'dn--un--__Impl_Cast_(ErlList ((:: $a) $as))_(List $a)'(V0, V1) -> ('dn--un--cast_Cast_(ErlList ((:: $a) $as))_(List $a)'(V0, V1)).
'dn--un--__Impl_Cast_(ErlList ((:: $a) $as))_((ErlCons $a) ((ErlCons $b) $c))'(V0, V1) -> ('dn--un--cast_Cast_(ErlList ((:: $a) $as))_((ErlCons $a) ((ErlCons $b) $c))'(V0, V1)).
'dn--un--__Impl_Cast_((ErlCons $a) $b)_(List $a)'(V0, V1) -> ('dn--un--cast_Cast_((ErlCons $a) $b)_(List $a)'(V0, V1)).
'dn--un--__Impl_Cast_((ErlCons $a) $b)_(ErlList ((:: $a) $bs))'(V0, V1) -> ('dn--un--cast_Cast_((ErlCons $a) $b)_(ErlList ((:: $a) $bs))'(V0, V1)).
'un--toErlTerm'(V0, V1) -> (V0(V1)).
'un--listToErlList'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> [V1 | ('un--listToErlList'(V2))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--listToErlCons'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> [V1 | ('un--listToErlCons'(V2))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--erlUnsafeCast'(V0, V1, V2) -> V2.
