-module('Idris.Idris2.Prelude.Uninhabited').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--uninhabited_Uninhabited_Void'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== True) False),((Builtin.~=~ True) False)|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== False) True),((Builtin.~=~ False) True)|)'/1,
  'dn--un--__Impl_Uninhabited_Void'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== True) False),((Builtin.~=~ True) False)|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== False) True),((Builtin.~=~ False) True)|)'/1,
  'un--void'/1,
  'un--uninhabited'/1,
  'un--absurd'/2
]).
'dn--un--uninhabited_Uninhabited_Void'(V0) -> V0.
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== True) False),((Builtin.~=~ True) False)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== False) True),((Builtin.~=~ False) True)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--__Impl_Uninhabited_Void'(V0) -> V0.
'dn--un--__Impl_Uninhabited_(|((Builtin.=== True) False),((Builtin.~=~ True) False)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== True) False),((Builtin.~=~ True) False)|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== False) True),((Builtin.~=~ False) True)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== False) True),((Builtin.~=~ False) True)|)'(V0)).
'un--void'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Badly formed external primitive Prelude.Uninhabited.prim__void"/utf8>>})).
'un--uninhabited'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
'un--absurd'(V0, V1) -> ('un--void'('erased')).
