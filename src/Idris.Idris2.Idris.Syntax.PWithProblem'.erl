-module('Idris.Idris2.Idris.Syntax.PWithProblem\x{27}').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.withRigValue'/1,
  'un--.withRigProof'/1,
  'un--.withRigCount'/1,
  'un--withRigValue'/1,
  'un--withRigProof'/1,
  'un--withRigCount'/1
]).
'un--.withRigValue'(V0) -> case V0 of {'Idris.Syntax.MkPWithProblem', V1, V2, V3} -> V2 end.
'un--.withRigProof'(V0) -> case V0 of {'Idris.Syntax.MkPWithProblem', V1, V2, V3} -> V3 end.
'un--.withRigCount'(V0) -> case V0 of {'Idris.Syntax.MkPWithProblem', V1, V2, V3} -> V1 end.
'un--withRigValue'(V0) -> case V0 of {'Idris.Syntax.MkPWithProblem', V1, V2, V3} -> V2 end.
'un--withRigProof'(V0) -> case V0 of {'Idris.Syntax.MkPWithProblem', V1, V2, V3} -> V3 end.
'un--withRigCount'(V0) -> case V0 of {'Idris.Syntax.MkPWithProblem', V1, V2, V3} -> V1 end.
