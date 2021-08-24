-module('Idris.Idris2.Language.Reflection').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_Elab'/1,
  'dn--un--map_Functor_Elab'/2,
  'dn--un--join_Monad_Elab'/1,
  'dn--un--__Impl_Monad_Elab'/0,
  'dn--un--__Impl_Functor_Elab'/4,
  'dn--un--__Impl_Applicative_Elab'/0,
  'dn--un-->>=_Monad_Elab'/2,
  'dn--un--<*>_Applicative_Elab'/2,
  'un--quote'/1,
  'un--logTerm'/4,
  'un--logMsg'/3,
  'un--logGoal'/3,
  'un--localVars'/0,
  'un--lambda'/3,
  'un--inCurrentNS'/1,
  'un--goal'/0,
  'un--getType'/1,
  'un--getLocalType'/1,
  'un--getCons'/1,
  'un--genSym'/1,
  'un--failAt'/2,
  'un--fail'/1,
  'un--declare'/1,
  'un--check'/2
]).
'dn--un--pure_Applicative_Elab'(V0) -> {'Idris.Language.Reflection.Pure', V0}.
'dn--un--map_Functor_Elab'(V0, V1) -> {'Idris.Language.Reflection.Bind', V1, fun (V2) -> {'Idris.Language.Reflection.Pure', (V0(V2))} end}.
'dn--un--join_Monad_Elab'(V0) -> ('dn--un-->>=_Monad_Elab'(V0, fun (V1) -> V1 end)).
'dn--un--__Impl_Monad_Elab'() -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Elab'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Elab'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Elab'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_Elab'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_Elab'(V15)) end end}.
'dn--un--__Impl_Functor_Elab'(V0, V1, V2, V3) -> ('dn--un--map_Functor_Elab'(V2, V3)).
'dn--un--__Impl_Applicative_Elab'() -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Elab'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Elab'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Elab'(V8, V9)) end end end end}.
'dn--un-->>=_Monad_Elab'(V0, V1) -> {'Idris.Language.Reflection.Bind', V0, V1}.
'dn--un--<*>_Applicative_Elab'(V0, V1) -> {'Idris.Language.Reflection.Bind', V0, fun (V2) -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--map_Functor_Elab'(V5, V6)) end end end end, V2, V1)) end}.
'un--quote'(V0) -> {'Idris.Language.Reflection.Quote', V0}.
'un--logTerm'(V0, V1, V2, V3) -> {'Idris.Language.Reflection.LogTerm', V0, V1, V2, V3}.
'un--logMsg'(V0, V1, V2) -> {'Idris.Language.Reflection.LogMsg', V0, V1, V2}.
'un--logGoal'(V0, V1, V2) -> ('dn--un-->>=_Monad_Elab'({'Idris.Language.Reflection.Goal'}, fun (V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('dn--un--pure_Applicative_Elab'(0)) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> ('un--logTerm'(V0, V1, V2, V4)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'un--localVars'() -> {'Idris.Language.Reflection.LocalVars'}.
'un--lambda'(V0, V1, V2) -> {'Idris.Language.Reflection.Lambda', V2}.
'un--inCurrentNS'(V0) -> {'Idris.Language.Reflection.InCurrentNS', V0}.
'un--goal'() -> {'Idris.Language.Reflection.Goal'}.
'un--getType'(V0) -> {'Idris.Language.Reflection.GetType', V0}.
'un--getLocalType'(V0) -> {'Idris.Language.Reflection.GetLocalType', V0}.
'un--getCons'(V0) -> {'Idris.Language.Reflection.GetCons', V0}.
'un--genSym'(V0) -> {'Idris.Language.Reflection.GenSym', V0}.
'un--failAt'(V0, V1) -> {'Idris.Language.Reflection.Fail', V0, V1}.
'un--fail'(V0) -> {'Idris.Language.Reflection.Fail', {'Idris.Language.Reflection.TT.EmptyFC'}, V0}.
'un--declare'(V0) -> {'Idris.Language.Reflection.Declare', V0}.
'un--check'(V0, V1) -> {'Idris.Language.Reflection.Check', V0, V1}.
