-module('Idris.Idris2.Text.Quantity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in show,showMax-292'/4,
  'case--show,showMax-276'/2,
  'nested--1573-272--in--un--showMax'/2,
  'dn--un--show_Show__Quantity'/1,
  'dn--un--showPrec_Show__Quantity'/2,
  'dn--un--__Impl_Show_Quantity'/0,
  'un--inOrder'/1,
  'un--exactly'/1,
  'un--between'/2,
  'un--atMost'/1,
  'un--atLeast'/1
]).
'case--case block in show,showMax-292'(V0, V1, V2, V3) -> case V3 of 0 -> <<""/utf8>>; 1 -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<","/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V1)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--show,showMax-276'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<","/utf8>> end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> begin (V3 = {'Idris.Prelude.Types.Just', V2}), ('case--case block in show,showMax-292'(V1, V2, V3, ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__Nat'(V1, V2)))) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1573-272--in--un--showMax'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<","/utf8>> end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> begin (V3 = {'Idris.Prelude.Types.Just', V2}), ('case--case block in show,showMax-292'(V1, V2, V3, ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__Nat'(V1, V2)))) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__Quantity'(V0) -> case V0 of {'Idris.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> case V1 of 0 -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<"*"/utf8>> end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V3) -> case V3 of 0 -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('nested--1573-272--in--un--showMax'(V2, V1)), <<"}"/utf8>>)))))); _ -> begin (V4 = (V3 - 1)), case V4 of 0 -> <<"?"/utf8>>; _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('nested--1573-272--in--un--showMax'(V2, V1)), <<"}"/utf8>>)))))) end end end end(E2)); _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('nested--1573-272--in--un--showMax'(V2, V1)), <<"}"/utf8>>)))))) end; _ -> begin (V5 = (V1 - 1)), case V5 of 0 -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<"+"/utf8>> end()); _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('nested--1573-272--in--un--showMax'(V2, V1)), <<"}"/utf8>>)))))) end; _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Nat'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('nested--1573-272--in--un--showMax'(V2, V1)), <<"}"/utf8>>)))))) end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__Quantity'(V0, V1) -> ('dn--un--show_Show__Quantity'(V1)).
'dn--un--__Impl_Show_Quantity'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Quantity'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Quantity'(V1, V2)) end end}.
'un--inOrder'(V0) -> case V0 of {'Idris.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 0 end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--<=_Ord__Nat'(V1, V3)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--exactly'(V0) -> {'Idris.Text.Quantity.Qty', V0, {'Idris.Prelude.Types.Just', V0}}.
'un--between'(V0, V1) -> {'Idris.Text.Quantity.Qty', V0, {'Idris.Prelude.Types.Just', V1}}.
'un--atMost'(V0) -> {'Idris.Text.Quantity.Qty', 0, {'Idris.Prelude.Types.Just', V0}}.
'un--atLeast'(V0) -> {'Idris.Text.Quantity.Qty', V0, {'Idris.Prelude.Types.Nothing'}}.
