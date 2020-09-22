-module('Idris.Idris2.Core.Options.ElabDirectives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--unboundImplicits'/1,
  'un--totality'/1,
  'un--lazyActive'/1,
  'un--autoImplicitLimit'/1,
  'un--ambigLimit'/1
]).
'un--unboundImplicits'(V0) -> case V0 of {'Idris.Core.Options.MkElabDirectives', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--totality'(V0) -> case V0 of {'Idris.Core.Options.MkElabDirectives', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lazyActive'(V0) -> case V0 of {'Idris.Core.Options.MkElabDirectives', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--autoImplicitLimit'(V0) -> case V0 of {'Idris.Core.Options.MkElabDirectives', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ambigLimit'(V0) -> case V0 of {'Idris.Core.Options.MkElabDirectives', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
