-module('Idris.Idris2.Core.Env').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in uniqifyEnv,uenv-5389'/8,
  'case--case block in uniqifyEnv,uenv-5315'/9,
  'case--uniqifyEnv,uenv-5291'/8,
  'case--uniqifyEnv,uniqueLocal-5238'/5,
  'case--case block in mkShrinkSub-5053'/7,
  'case--mkShrinkSub-5032'/5,
  'case--mkShrinkSub-4991'/3,
  'case--toVar-4916'/4,
  'case--findUsed-4732'/9,
  'case--case block in defined-4132'/6,
  'case--defined-4107'/6,
  'nested--4529-5213--in--un--uniqueLocal'/4,
  'nested--4529-5214--in--un--uenv'/5,
  'nested--4529-5212--in--un--next'/3,
  'nested--3979-4787--in--un--findUsedArgs'/10,
  'nested--3979-4721--in--un--eqNat'/10,
  'nested--3979-4802--in--un--dropS'/8,
  'un--uniqifyEnv'/2,
  'un--toVar'/2,
  'un--shrinkEnv'/4,
  'un--revOnto'/3,
  'un--namesNoLet'/3,
  'un--mkShrinkSub'/3,
  'un--mkShrink'/2,
  'un--mkEnv'/2,
  'un--letToLam'/2,
  'un--lengthNoLet'/3,
  'un--length'/3,
  'un--isUsed'/3,
  'un--getBinderUnder'/8,
  'un--getBinderLoc'/6,
  'un--getBinder'/7,
  'un--findUsedLocs'/3,
  'un--findUsedInBinder'/4,
  'un--findUsed'/4,
  'un--findSubEnv'/3,
  'un--extend'/5,
  'un--defined'/3,
  'un--bindEnv'/4,
  'un--allVarsNoLet'/2,
  'un--allVars'/2,
  'un--abstractFullEnvType'/4,
  'un--abstractEnvType'/4,
  'un--abstractEnv'/4
]).
'case--case block in uniqifyEnv,uenv-5389'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V10, V11) -> begin (V13 = ('Idris.Idris2.Core.TT':'dn--un--map_Functor__Binder'('erased', 'erased', fun (V12) -> ('Idris.Idris2.Core.TT':'un--renameVars'('erased', 'erased', V11, V12)) end, V5))), {'Idris.Builtin.DPair.MkDPair', [V2 | V8], {'Idris.Builtin.MkPair', {'Idris.Core.Env.::', V13, V10}, {'Idris.Core.TT.CompatExt', V11}}} end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in uniqifyEnv,uenv-5315'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V9, V10) -> case V10 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V11, V12) -> begin (V14 = ('Idris.Idris2.Core.TT':'dn--un--map_Functor__Binder'('erased', 'erased', fun (V13) -> ('Idris.Idris2.Core.TT':'un--renameVars'('erased', 'erased', V12, V13)) end, V5))), {'Idris.Builtin.DPair.MkDPair', [V7 | V9], {'Idris.Builtin.MkPair', {'Idris.Core.Env.::', V14, V11}, {'Idris.Core.TT.CompatExt', V12}}} end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--uniqifyEnv,uenv-5291'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 0 -> begin (V8 = ('nested--4529-5213--in--un--uniqueLocal'(V0, V1, V6, V2))), ('case--case block in uniqifyEnv,uenv-5315'(V0, V1, V2, V3, V4, V5, V6, V8, ('nested--4529-5214--in--un--uenv'(V0, V1, V3, [V8 | V6], V4)))) end; 1 -> ('case--case block in uniqifyEnv,uenv-5389'(V0, V1, V2, V3, V4, V5, V6, ('nested--4529-5214--in--un--uenv'(V0, V1, V3, [V2 | V6], V4)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--uniqifyEnv,uniqueLocal-5238'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('nested--4529-5213--in--un--uniqueLocal'(V0, V1, V3, ('nested--4529-5212--in--un--next'(V0, V1, V2)))); 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in mkShrinkSub-5053'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> {'Idris.Builtin.DPair.MkDPair', [V0 | V4], {'Idris.Core.TT.KeepCons', V5}}; 1 -> {'Idris.Builtin.DPair.MkDPair', V4, {'Idris.Core.TT.DropCons', V5}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mkShrinkSub-5032'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V5, V6) -> ('case--case block in mkShrinkSub-5053'(V0, V1, V2, V3, V5, V6, ('un--isUsed'('erased', 0, V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mkShrinkSub-4991'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Builtin.DPair.MkDPair', [V0 | []], {'Idris.Core.TT.KeepCons', {'Idris.Core.TT.SubRefl'}}}; 1 -> {'Idris.Builtin.DPair.MkDPair', [], {'Idris.Core.TT.DropCons', {'Idris.Core.TT.SubRefl'}}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--toVar-4916'(V0, V1, V2, V3) -> {'Idris.Prelude.Types.Just', (1 + V3)}.
'case--findUsed-4732'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 0 -> V6; 1 -> ('un--findUsedInBinder'(V0, V7, [V2 | V6], ('un--getBinder'('erased', 'erased', {'Idris.Core.TT.dn--un--__mkWeaken', fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Core.TT':'dn--un--weaken_Weaken__Term'('erased', 'erased', V11)) end end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Core.TT':'dn--un--weakenNs_Weaken__Term'('erased', 'erased', V14, V15)) end end end end}, V0, V2, 'erased', V7)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in defined-4132'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Core.Env.MkIsDefined', E0, E1} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Core.Env.MkIsDefined', (1 + V6), V7})) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--defined-4107'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('un--defined'(V1, V4, V2)), fun (V6) -> case V6 of {'Idris.Core.Env.MkIsDefined', E0, E1} -> (fun (V7, V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Core.Env.MkIsDefined', (1 + V7), V8})) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V9) -> case V9 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Just', {'Idris.Core.Env.MkIsDefined', 0, ('Idris.Idris2.Core.TT':'un--multiplicity'('erased', V3))}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4529-5213--in--un--uniqueLocal'(V0, V1, V2, V3) -> ('case--uniqifyEnv,uniqueLocal-5238'(V0, V1, V3, V2, ('Idris.Idris2.Prelude.Types':'un--elem'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Core.Name':'dn--un--==_Eq__Name'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Core.Name':'dn--un--/=_Eq__Name'(V6, V7)) end end}, V3, V2)))).
'nested--4529-5214--in--un--uenv'(V0, V1, V2, V3, V4) -> case V2 of [] -> case V4 of {'Idris.Core.Env.Nil'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', [], {'Idris.Builtin.MkPair', {'Idris.Core.Env.Nil'}, {'Idris.Core.TT.CompatPre'}}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V5, V6) -> case V4 of {'Idris.Core.Env.::', E2, E3} -> (fun (V7, V8) -> ('case--uniqifyEnv,uenv-5291'(V0, V1, V5, V6, V8, V7, V3, ('Idris.Idris2.Prelude.Types':'un--elem'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V9) -> fun (V10) -> ('Idris.Idris2.Core.Name':'dn--un--==_Eq__Name'(V9, V10)) end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Core.Name':'dn--un--/=_Eq__Name'(V11, V12)) end end}, V5, V3)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4529-5212--in--un--next'(V0, V1, V2) -> case V2 of {'Idris.Core.Name.MN', E0, E1} -> (fun (V3, V4) -> {'Idris.Core.Name.MN', V3, ((V4 + 1) rem 9223372036854775808)} end(E0, E1)); {'Idris.Core.Name.UN', E2} -> (fun (V5) -> {'Idris.Core.Name.MN', V5, 0} end(E2)); {'Idris.Core.Name.NS', E3, E4} -> (fun (V6, V7) -> {'Idris.Core.Name.NS', V6, ('nested--4529-5212--in--un--next'(V0, V1, V7))} end(E3, E4)); _ -> {'Idris.Core.Name.MN', ('Idris.Idris2.Core.Name':'dn--un--show_Show__Name'(V2)), 0} end.
'nested--3979-4787--in--un--findUsedArgs'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V9 of [] -> V8; [E0 | E1] -> (fun (V10, V11) -> ('nested--3979-4787--in--un--findUsedArgs'(V0, V1, V2, V3, V4, V5, V6, V7, ('un--findUsed'(V0, V7, V8, V10)), V11)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3979-4721--in--un--eqNat'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(('Idris.Idris2.Prelude.Types':'un--natToInteger'(V8)), ('Idris.Idris2.Prelude.Types':'un--natToInteger'(V9)))).
'nested--3979-4802--in--un--dropS'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of [] -> []; [E0 | E1] -> (fun (V8, V9) -> case V8 of 0 -> ('nested--3979-4802--in--un--dropS'(V0, V1, V2, V3, V4, V5, V6, V9)); _ -> begin (V10 = (V8 - 1)), [V10 | ('nested--3979-4802--in--un--dropS'(V0, V1, V2, V3, V4, V5, V6, V9))] end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--uniqifyEnv'(V0, V1) -> ('nested--4529-5214--in--un--uenv'(V0, V1, V0, [], V1)).
'un--toVar'(V0, V1) -> case V0 of [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> {'Idris.Prelude.Types.Just', 0}; _ -> begin (V4 = (V1 - 1)), ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('un--toVar'(V3, V4)), fun (V5) -> {'Idris.Prelude.Types.Just', (1 + V5)} end)) end end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--shrinkEnv'(V0, V1, V2, V3) -> case V3 of {'Idris.Core.TT.SubRefl'} -> (fun () -> {'Idris.Prelude.Types.Just', V2} end()); _ -> case V2 of {'Idris.Core.Env.::', E0, E1} -> (fun (V4, V5) -> case V3 of {'Idris.Core.TT.DropCons', E2} -> (fun (V6) -> ('un--shrinkEnv'('erased', 'erased', V5, V6)) end(E2)); {'Idris.Core.TT.KeepCons', E3} -> (fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('un--shrinkEnv'('erased', 'erased', V5, V7)), fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('Idris.Idris2.Core.TT':'un--shrinkBinder'('erased', 'erased', V4, V7)), fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Core.Env.::', V9, V8})) end)) end)) end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--revOnto'(V0, V1, V2) -> case V2 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> {'Idris.Builtin.Refl'} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--namesNoLet'(V0, V1, V2) -> case V1 of [] -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> [] end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V3, V4) -> case V2 of {'Idris.Core.Env.::', E2, E3} -> (fun (V5, V6) -> case V5 of {'Idris.Core.TT.Let', E4, E5, E6, E7} -> (fun (V7, V8, V9, V10) -> ('un--namesNoLet'('erased', V4, V6)) end(E4, E5, E6, E7)); _ -> [V3 | ('un--namesNoLet'('erased', V4, V6))] end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkShrinkSub'(V0, V1, V2) -> case V1 of [] -> ('case--mkShrinkSub-4991'(V0, V2, ('un--isUsed'('erased', 0, V2)))); [E0 | E1] -> (fun (V3, V4) -> ('case--mkShrinkSub-5032'(V0, V3, V4, V2, ('un--mkShrinkSub'(V3, V4, ('Idris.Idris2.Core.TT':'un--dropFirst'('erased', 'erased', V2)))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkShrink'(V0, V1) -> case V0 of [] -> {'Idris.Builtin.DPair.MkDPair', [], {'Idris.Core.TT.SubRefl'}}; [E0 | E1] -> (fun (V2, V3) -> ('un--mkShrinkSub'(V2, V3, V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkEnv'(V0, V1) -> case V1 of [] -> {'Idris.Core.Env.Nil'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Core.Env.::', {'Idris.Core.TT.PVar', V0, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--top_Top__ZeroOneOmega'()), {'Idris.Core.TT.Explicit'}, {'Idris.Core.TT.Erased', V0, 1}}, ('un--mkEnv'(V0, V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--letToLam'(V0, V1) -> case V1 of {'Idris.Core.Env.Nil'} -> (fun () -> {'Idris.Core.Env.Nil'} end()); {'Idris.Core.Env.::', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Core.TT.Let', E2, E3, E4, E5} -> (fun (V4, V5, V6, V7) -> {'Idris.Core.Env.::', {'Idris.Core.TT.Lam', V4, V5, {'Idris.Core.TT.Explicit'}, V7}, ('un--letToLam'('erased', V3))} end(E2, E3, E4, E5)); _ -> {'Idris.Core.Env.::', V2, ('un--letToLam'('erased', V3))} end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lengthNoLet'(V0, V1, V2) -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> 0 end()); {'Idris.Core.Env.::', E0, E1} -> (fun (V3, V4) -> case V3 of {'Idris.Core.TT.Let', E2, E3, E4, E5} -> (fun (V5, V6, V7, V8) -> ('un--lengthNoLet'('erased', 'erased', V4)) end(E2, E3, E4, E5)); _ -> (1 + ('un--lengthNoLet'('erased', 'erased', V4))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--length'(V0, V1, V2) -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> 0 end()); {'Idris.Core.Env.::', E0, E1} -> (fun (V3, V4) -> (1 + ('un--length'('erased', 'erased', V4))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isUsed'(V0, V1, V2) -> case V2 of [] -> 1; [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__Nat'(V1, ('Idris.Idris2.Core.TT':'un--varIdx'('erased', V3)))), fun () -> ('un--isUsed'('erased', V1, V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getBinderUnder'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V3 of [E0 | E1] -> (fun (V8, V9) -> case V4 of 0 -> case V7 of {'Idris.Core.Env.::', E4, E5} -> (fun (V10, V11) -> ('Idris.Idris2.Core.TT':'dn--un--map_Functor__Binder'('erased', 'erased', case V2 of {'Idris.Core.TT.dn--un--__mkWeaken', E6, E7} -> (fun (V12, V13) -> fun (V14) -> ((((V13('erased'))('erased'))(('Idris.Idris2.Core.TT.SizeOf':'un--reverse'('erased', 'erased', ('Idris.Idris2.Core.TT.SizeOf':'un--mkSizeOf'('erased', [V8 | V5]))))))(V14)) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V10)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V15 = (V4 - 1)), case V7 of {'Idris.Core.Env.::', E2, E3} -> (fun (V16, V17) -> ('un--getBinderUnder'('erased', 'erased', V2, V9, V15, [V8 | V5], 'erased', V17)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getBinderLoc'(V0, V1, V2, V3, V4, V5) -> case V2 of [E0 | E1] -> (fun (V6, V7) -> case V3 of 0 -> case V5 of {'Idris.Core.Env.::', E4, E5} -> (fun (V8, V9) -> ('Idris.Idris2.Core.TT':'un--binderLoc'('erased', V8)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V10 = (V3 - 1)), case V5 of {'Idris.Core.Env.::', E2, E3} -> (fun (V11, V12) -> ('un--getBinderLoc'('erased', 'erased', V7, V10, 'erased', V12)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getBinder'(V0, V1, V2, V3, V4, V5, V6) -> ('un--getBinderUnder'('erased', 'erased', V2, V3, V4, [], 'erased', V6)).
'un--findUsedLocs'(V0, V1, V2) -> ('Idris.Idris2.Data.List':'un--mapMaybe'('erased', 'erased', fun (V3) -> ('un--toVar'(V0, V3)) end, ('un--findUsed'(V0, V1, [], V2)))).
'un--findUsedInBinder'(V0, V1, V2, V3) -> case V3 of {'Idris.Core.TT.Let', E0, E1, E2, E3} -> (fun (V4, V5, V6, V7) -> ('un--findUsed'(V0, V1, ('un--findUsed'(V0, V1, V2, V6)), V7)) end(E0, E1, E2, E3)); {'Idris.Core.TT.PLet', E4, E5, E6, E7} -> (fun (V8, V9, V10, V11) -> ('un--findUsed'(V0, V1, ('un--findUsed'(V0, V1, V2, V10)), V11)) end(E4, E5, E6, E7)); _ -> ('un--findUsed'(V0, V1, V2, ('Idris.Idris2.Core.TT':'un--binderType'('erased', V3)))) end.
'un--findUsed'(V0, V1, V2, V3) -> case V3 of {'Idris.Core.TT.Local', E0, E1, E2} -> (fun (V4, V5, V6) -> ('case--findUsed-4732'(V0, 'erased', V6, 'erased', V5, V4, V2, V1, ('Idris.Idris2.Data.List':'un--elemBy'('erased', fun (V7) -> fun (V8) -> ('nested--3979-4721--in--un--eqNat'(V0, 'erased', V6, 'erased', V5, V4, V2, V1, V7, V8)) end end, V6, V2)))) end(E0, E1, E2)); {'Idris.Core.TT.Meta', E3, E4, E5, E6} -> (fun (V9, V10, V11, V12) -> ('nested--3979-4787--in--un--findUsedArgs'(V0, V9, V10, V11, V12, V2, V1, V1, V2, V12)) end(E3, E4, E5, E6)); {'Idris.Core.TT.Bind', E7, E8, E9, E10} -> (fun (V13, V14, V15, V16) -> ('nested--3979-4802--in--un--dropS'(V0, V14, V16, V15, V13, V2, V1, ('un--findUsed'([V14 | V0], {'Idris.Core.Env.::', V15, V1}, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V17) -> (1 + V17) end, ('un--findUsedInBinder'(V0, V1, V2, V15)))), V16)))) end(E7, E8, E9, E10)); {'Idris.Core.TT.App', E11, E12, E13} -> (fun (V18, V19, V20) -> ('un--findUsed'(V0, V1, ('un--findUsed'(V0, V1, V2, V19)), V20)) end(E11, E12, E13)); {'Idris.Core.TT.As', E14, E15, E16, E17} -> (fun (V21, V22, V23, V24) -> ('un--findUsed'(V0, V1, ('un--findUsed'(V0, V1, V2, V23)), V24)) end(E14, E15, E16, E17)); {'Idris.Core.TT.TDelayed', E18, E19, E20} -> (fun (V25, V26, V27) -> ('un--findUsed'(V0, V1, V2, V27)) end(E18, E19, E20)); {'Idris.Core.TT.TDelay', E21, E22, E23, E24} -> (fun (V28, V29, V30, V31) -> ('un--findUsed'(V0, V1, ('un--findUsed'(V0, V1, V2, V30)), V31)) end(E21, E22, E23, E24)); {'Idris.Core.TT.TForce', E25, E26, E27} -> (fun (V32, V33, V34) -> ('un--findUsed'(V0, V1, V2, V34)) end(E25, E26, E27)); _ -> V2 end.
'un--findSubEnv'(V0, V1, V2) -> ('un--mkShrink'(V0, ('un--findUsedLocs'(V0, V1, V2)))).
'un--extend'(V0, V1, V2, V3, V4) -> {'Idris.Core.Env.::', V3, V4}.
'un--defined'(V0, V1, V2) -> case V0 of [] -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V3, V4) -> case V2 of {'Idris.Core.Env.::', E2, E3} -> (fun (V5, V6) -> ('case--defined-4107'(V3, V4, V6, V5, V1, ('Idris.Idris2.Core.Name':'un--nameEq'(V1, V3)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bindEnv'(V0, V1, V2, V3) -> case V0 of [] -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> V3 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V4, V5) -> case V2 of {'Idris.Core.Env.::', E2, E3} -> (fun (V6, V7) -> ('un--bindEnv'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, V6, V3})) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--allVarsNoLet'(V0, V1) -> case V0 of [] -> case V1 of {'Idris.Core.Env.Nil'} -> (fun () -> [] end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V2, V3) -> case V1 of {'Idris.Core.Env.::', E2, E3} -> (fun (V4, V5) -> case V4 of {'Idris.Core.TT.Let', E4, E5, E6, E7} -> (fun (V6, V7, V8, V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V10) -> ('Idris.Idris2.Core.TT':'dn--un--weaken_Weaken__Var'('erased', 'erased', V10)) end, ('un--allVars'(V3, V5)))) end(E4, E5, E6, E7)); _ -> [0 | ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V11) -> ('Idris.Idris2.Core.TT':'dn--un--weaken_Weaken__Var'('erased', 'erased', V11)) end, ('un--allVars'(V3, V5))))] end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--allVars'(V0, V1) -> case V0 of [] -> case V1 of {'Idris.Core.Env.Nil'} -> (fun () -> [] end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V2, V3) -> case V1 of {'Idris.Core.Env.::', E2, E3} -> (fun (V4, V5) -> [0 | ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V6) -> ('Idris.Idris2.Core.TT':'dn--un--weaken_Weaken__Var'('erased', 'erased', V6)) end, ('un--allVars'(V3, V5))))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--abstractFullEnvType'(V0, V1, V2, V3) -> case V0 of [] -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> V3 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V4, V5) -> case V2 of {'Idris.Core.Env.::', E2, E3} -> (fun (V6, V7) -> case V6 of {'Idris.Core.TT.Pi', E4, E5, E6, E7} -> (fun (V8, V9, V10, V11) -> ('un--abstractFullEnvType'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, {'Idris.Core.TT.Pi', V8, V9, V10, V11}, V3})) end(E4, E5, E6, E7)); _ -> begin (V12 = {'Idris.Core.TT.Pi', V1, ('Idris.Idris2.Core.TT':'un--multiplicity'('erased', V6)), {'Idris.Core.TT.Explicit'}, ('Idris.Idris2.Core.TT':'un--binderType'('erased', V6))}), ('un--abstractFullEnvType'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, V12, V3})) end end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--abstractEnvType'(V0, V1, V2, V3) -> case V0 of [] -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> V3 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V4, V5) -> case V2 of {'Idris.Core.Env.::', E2, E3} -> (fun (V6, V7) -> case V6 of {'Idris.Core.TT.Let', E4, E5, E6, E7} -> (fun (V8, V9, V10, V11) -> ('un--abstractEnvType'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, {'Idris.Core.TT.Let', V8, V9, V10, V11}, V3})) end(E4, E5, E6, E7)); {'Idris.Core.TT.Pi', E8, E9, E10, E11} -> (fun (V12, V13, V14, V15) -> ('un--abstractEnvType'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, {'Idris.Core.TT.Pi', V12, V13, V14, V15}, V3})) end(E8, E9, E10, E11)); _ -> begin (V16 = {'Idris.Core.TT.Pi', ('Idris.Idris2.Core.TT':'un--binderLoc'('erased', V6)), ('Idris.Idris2.Core.TT':'un--multiplicity'('erased', V6)), {'Idris.Core.TT.Explicit'}, ('Idris.Idris2.Core.TT':'un--binderType'('erased', V6))}), ('un--abstractEnvType'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, V16, V3})) end end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--abstractEnv'(V0, V1, V2, V3) -> case V0 of [] -> case V2 of {'Idris.Core.Env.Nil'} -> (fun () -> V3 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V4, V5) -> case V2 of {'Idris.Core.Env.::', E2, E3} -> (fun (V6, V7) -> case V6 of {'Idris.Core.TT.Let', E4, E5, E6, E7} -> (fun (V8, V9, V10, V11) -> ('un--abstractEnv'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, {'Idris.Core.TT.Let', V8, V9, V10, V11}, V3})) end(E4, E5, E6, E7)); _ -> begin (V12 = {'Idris.Core.TT.Lam', ('Idris.Idris2.Core.TT':'un--binderLoc'('erased', V6)), ('Idris.Idris2.Core.TT':'un--multiplicity'('erased', V6)), {'Idris.Core.TT.Explicit'}, ('Idris.Idris2.Core.TT':'un--binderType'('erased', V6))}), ('un--abstractEnv'(V5, V1, V7, {'Idris.Core.TT.Bind', V1, V4, V12, V3})) end end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
