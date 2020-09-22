-module('Idris.Idris2.Utils.String').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--stripQuotes'/1,
  'un--dotSep'/1
]).
'un--stripQuotes'(V0) -> ('Idris.Idris2.Prelude.Types':'un--substr'((1 + 0), ('Idris.Idris2.Prelude.Types':'un--minus'(('Idris.Idris2.Prelude.Types.Strings':'un--length'(V0)), (1 + (1 + 0)))), V0)).
'un--dotSep'(V0) -> case V0 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> V1; _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, (('Idris.Idris2.Prelude.Interfaces':'un--concat'('erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V11, V12, V13)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup__String'(V14, V15)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid__String'())}}))(('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__List'('erased', 'erased', V2, fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__List'('erased', ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"."/utf8>>, V3)))) end)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
