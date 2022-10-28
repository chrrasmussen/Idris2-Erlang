-module('Idris.Idris2.TTImp.Elab.Check.ElabInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.topLevel'/1,
  'un--.preciseInf'/1,
  'un--.implicitMode'/1,
  'un--.elabMode'/1,
  'un--.bindingVars'/1,
  'un--.ambigTries'/1,
  'un--topLevel'/1,
  'un--preciseInf'/1,
  'un--implicitMode'/1,
  'un--elabMode'/1,
  'un--bindingVars'/1,
  'un--ambigTries'/1
]).
'un--.topLevel'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V3 end.
'un--.preciseInf'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V5 end.
'un--.implicitMode'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V2 end.
'un--.elabMode'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V1 end.
'un--.bindingVars'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V4 end.
'un--.ambigTries'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V6 end.
'un--topLevel'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V3 end.
'un--preciseInf'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V5 end.
'un--implicitMode'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V2 end.
'un--elabMode'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V1 end.
'un--bindingVars'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V4 end.
'un--ambigTries'(V0) -> case V0 of {'TTImp.Elab.Check.MkElabInfo', V1, V2, V3, V4, V5, V6} -> V6 end.
