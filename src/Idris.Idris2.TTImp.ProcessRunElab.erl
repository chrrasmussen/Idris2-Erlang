-module('Idris.Idris2.TTImp.ProcessRunElab').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--processRunElab'/10
]).
'un--processRunElab'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> begin (V38 = begin (V37 = (('Idris.Idris2.Erlang.Data.IORef':'un--readIORef'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> fun (V17) -> V16 end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> begin (V23 = (V20(V22))), begin (V24 = (V21(V22))), (V23(V24)) end end end end end end end}, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> begin (V30 = (V27(V29))), ((V28(V30))(V29)) end end end end end end, fun (V31) -> fun (V32) -> fun (V33) -> begin (V34 = (V32(V33))), (V34(V33)) end end end end}, fun (V35) -> fun (V36) -> V36 end end}, V1))(V9))), {'Idris.Prelude.Types.Right', V37} end), case V38 of {'Idris.Prelude.Types.Left', E0} -> (fun (V39) -> {'Idris.Prelude.Types.Left', V39} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V40) -> begin (V41 = case ('Idris.Idris2.Prelude.Basics':'un--not'(('Idris.Idris2.Core.Context':'un--isExtension'({'Idris.Core.Options.ElabReflection'}, V40)))) of 0 -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable__Core_Error'('erased', {'Idris.Core.Core.GenericMsg', V7, <<"%language ElabReflection not enabled"/utf8>>}, V9)); 1 -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkUnit'}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end), case V41 of {'Idris.Prelude.Types.Left', E2} -> (fun (V42) -> {'Idris.Prelude.Types.Left', V42} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V43) -> begin (V44 = (('Idris.Idris2.Core.Context':'un--resolveName'(V1, {'Idris.Core.Name.UN', <<"[elaborator script]"/utf8>>}))(V9))), case V44 of {'Idris.Prelude.Types.Left', E4} -> (fun (V45) -> {'Idris.Prelude.Types.Left', V45} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V46) -> begin (V47 = {'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--reflectionNS'()), {'Idris.Core.Name.UN', <<"Elab"/utf8>>}}), begin (V48 = ('Idris.Idris2.Core.Reflect':'un--getCon'(V0, V7, V40, ('Idris.Idris2.Core.Reflect':'un--builtin'(<<"Unit"/utf8>>)), V9))), case V48 of {'Idris.Prelude.Types.Left', E6} -> (fun (V49) -> {'Idris.Prelude.Types.Left', V49} end(E6)); {'Idris.Prelude.Types.Right', E7} -> (fun (V50) -> begin (V51 = ('Idris.Idris2.Core.Reflect':'un--appCon'(V0, V7, V40, V47, [V50 | []], V9))), case V51 of {'Idris.Prelude.Types.Left', E8} -> (fun (V52) -> {'Idris.Prelude.Types.Left', V52} end(E8)); {'Idris.Prelude.Types.Right', E9} -> (fun (V53) -> begin (V54 = ('Idris.Idris2.TTImp.Elab':'un--checkTerm'(V0, V1, V2, V3, V46, {'Idris.TTImp.Elab.Check.InExpr'}, V4, V5, V6, V8, ('Idris.Idris2.Core.Normalise':'un--gnf'(V0, V6, V53)), V9))), case V54 of {'Idris.Prelude.Types.Left', E10} -> (fun (V55) -> {'Idris.Prelude.Types.Left', V55} end(E10)); {'Idris.Prelude.Types.Right', E11} -> (fun (V56) -> begin (V60 = begin (V57 = (('Idris.Idris2.Core.Normalise':'un--nfOpts'(V1, V0, ('Idris.Idris2.Core.Value':'un--withAll'()), V40, V6, V56))(V9))), case V57 of {'Idris.Prelude.Types.Left', E12} -> (fun (V58) -> {'Idris.Prelude.Types.Left', V58} end(E12)); {'Idris.Prelude.Types.Right', E13} -> (fun (V59) -> (('Idris.Idris2.TTImp.Elab.RunElab':'un--elabScript'(V0, V1, V2, V3, V7, V5, V6, V59, {'Idris.Prelude.Types.Nothing'}))(V9)) end(E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end), case V60 of {'Idris.Prelude.Types.Left', E14} -> (fun (V61) -> {'Idris.Prelude.Types.Left', V61} end(E14)); {'Idris.Prelude.Types.Right', E15} -> (fun (V62) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkUnit'}} end(E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.