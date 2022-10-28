-module('Idris.Idris2.Idris.Env.EnvDesc').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.name'/1,
  'un--.help'/1,
  'un--name'/1,
  'un--help'/1
]).
'un--.name'(V0) -> case V0 of {'Idris.Env.MkEnvDesc', V1, V2} -> V1 end.
'un--.help'(V0) -> case V0 of {'Idris.Env.MkEnvDesc', V1, V2} -> V2 end.
'un--name'(V0) -> case V0 of {'Idris.Env.MkEnvDesc', V1, V2} -> V1 end.
'un--help'(V0) -> case V0 of {'Idris.Env.MkEnvDesc', V1, V2} -> V2 end.
