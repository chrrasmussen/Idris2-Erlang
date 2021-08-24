-module('Idris.Idris2.Builtin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--692-294--in--un--id'/1,
  'dn--un--fromString_FromString_String'/1,
  'dn--un--fromDouble_FromDouble_Double'/1,
  'dn--un--fromChar_FromChar_Char'/1,
  'dn--un--__Impl_FromString_String'/1,
  'dn--un--__Impl_FromDouble_Double'/1,
  'dn--un--__Impl_FromChar_Char'/1,
  'un--~=~'/2,
  'un--trans'/0,
  'un--sym'/0,
  'un--snd'/1,
  'un--rewrite__impl'/1,
  'un--replace'/1,
  'un--mkDPairInjectiveSnd'/1,
  'un--mkDPairInjectiveFst'/1,
  'un--idris_crash'/1,
  'un--fst'/1,
  'un--fromString'/2,
  'un--fromDouble'/2,
  'un--fromChar'/2,
  'un--force'/1,
  'un--delay'/1,
  'un--defaultString'/1,
  'un--defaultDouble'/1,
  'un--defaultChar'/1,
  'un--believe_me'/1,
  'un--assert_total'/1,
  'un--assert_smaller'/1,
  'un--assert_linear'/0,
  'un--==='/2
]).
'nested--692-294--in--un--id'(V0) -> V0.
'dn--un--fromString_FromString_String'(V0) -> V0.
'dn--un--fromDouble_FromDouble_Double'(V0) -> V0.
'dn--un--fromChar_FromChar_Char'(V0) -> V0.
'dn--un--__Impl_FromString_String'(V0) -> V0.
'dn--un--__Impl_FromDouble_Double'(V0) -> V0.
'dn--un--__Impl_FromChar_Char'(V0) -> V0.
'un--~=~'(V0, V1) -> {'Idris.Builtin.Equal', 'erased', 'erased', V0, V1}.
'un--trans'() -> 0.
'un--sym'() -> 0.
'un--snd'(V0) -> case V0 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rewrite__impl'(V0) -> V0.
'un--replace'(V0) -> V0.
'un--mkDPairInjectiveSnd'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkDPairInjectiveFst'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--idris_crash'(V0) -> ('erlang':'throw'((fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(<<"Crash: "/utf8>>, V0)))).
'un--fst'(V0) -> case V0 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromString'(V0, V1) -> (V0(V1)).
'un--fromDouble'(V0, V1) -> (V0(V1)).
'un--fromChar'(V0, V1) -> (V0(V1)).
'un--force'(V0) -> (V0()).
'un--delay'(V0) -> fun () -> V0 end.
'un--defaultString'(V0) -> V0.
'un--defaultDouble'(V0) -> V0.
'un--defaultChar'(V0) -> V0.
'un--believe_me'(V0) -> V0.
'un--assert_total'(V0) -> V0.
'un--assert_smaller'(V0) -> V0.
'un--assert_linear'() -> ('un--believe_me'(fun (V0) -> ('nested--692-294--in--un--id'(V0)) end)).
'un--==='(V0, V1) -> {'Idris.Builtin.Equal', 'erased', 'erased', V0, V1}.
