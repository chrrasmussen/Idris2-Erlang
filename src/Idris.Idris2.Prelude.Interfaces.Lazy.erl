-module('Idris.Idris2.Prelude.Interfaces.Lazy').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_MonoidAlternative(%delayed ($f $a))'/1,
  'dn--un--<+>_Semigroup_SemigroupAlternative(%delayed ($f $a))'/3,
  'un--SemigroupAlternative'/3,
  'un--MonoidAlternative'/1
]).
'dn--un--neutral_Monoid_MonoidAlternative(%delayed ($f $a))'(V0) -> fun () -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V1, V2, V3) -> (V2('erased')) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'dn--un--<+>_Semigroup_SemigroupAlternative(%delayed ($f $a))'(V0, V1, V2) -> fun () -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V3, V4, V5) -> (((V5('erased'))((V1())))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--SemigroupAlternative'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_SemigroupAlternative(%delayed ($f $a))'(V0, V1, V2)).
'un--MonoidAlternative'(V0) -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_SemigroupAlternative(%delayed ($f $a))'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_MonoidAlternative(%delayed ($f $a))'(V0))}.
