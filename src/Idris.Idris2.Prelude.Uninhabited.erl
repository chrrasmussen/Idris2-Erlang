-module('Idris.Idris2.Prelude.Uninhabited').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--uninhabited_Uninhabited__Void'/1,
  'dn--un--uninhabited_Uninhabited__(|((=== True) False),((~=~ True) False)|)'/1,
  'dn--un--uninhabited_Uninhabited__(|((=== False) True),((~=~ False) True)|)'/1,
  'dn--un--__Impl_Uninhabited_Void'/1,
  'dn--un--__Impl_Uninhabited_(|((=== True) False),((~=~ True) False)|)'/1,
  'dn--un--__Impl_Uninhabited_(|((=== False) True),((~=~ False) True)|)'/1,
  'un--void'/2,
  'un--uninhabited'/3,
  'un--absurd'/4
]).
'dn--un--uninhabited_Uninhabited__Void'(V0) -> V0.
'dn--un--uninhabited_Uninhabited__(|((=== True) False),((~=~ True) False)|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(|((=== False) True),((~=~ False) True)|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Uninhabited_Void'(V0) -> ('dn--un--uninhabited_Uninhabited__Void'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== True) False),((~=~ True) False)|)'(V0) -> ('dn--un--uninhabited_Uninhabited__(|((=== True) False),((~=~ True) False)|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== False) True),((~=~ False) True)|)'(V0) -> ('dn--un--uninhabited_Uninhabited__(|((=== False) True),((~=~ False) True)|)'(V0)).
'un--void'(V0, V1) -> ('erlang':'throw'("Error: Executed \x{27}void\x{27}")).
'un--uninhabited'(V0, V1, V2) -> (V1(V2)).
'un--absurd'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Executed \x{27}void\x{27}")).
