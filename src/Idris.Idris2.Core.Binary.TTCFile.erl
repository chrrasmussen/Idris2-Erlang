-module('Idris.Idris2.Core.Binary.TTCFile').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--version'/2,
  'un--userHoles'/2,
  'un--typeHints'/2,
  'un--transforms'/2,
  'un--rewritenames'/2,
  'un--primnames'/2,
  'un--pairnames'/2,
  'un--nextVar'/2,
  'un--nestedNS'/2,
  'un--namedirectives'/2,
  'un--imported'/2,
  'un--importHashes'/2,
  'un--ifaceHash'/2,
  'un--extraData'/2,
  'un--currentNS'/2,
  'un--context'/2,
  'un--cgdirectives'/2,
  'un--autoHints'/2
]).
'un--version'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--userHoles'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--typeHints'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--transforms'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V18 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rewritenames'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V14 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--primnames'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V15 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pairnames'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V13 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nextVar'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nestedNS'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--namedirectives'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V16 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--imported'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--importHashes'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ifaceHash'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--extraData'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V19 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--currentNS'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--context'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cgdirectives'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V17 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--autoHints'(V0, V1) -> case V1 of {'Idris.Core.Binary.MkTTCFile', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
