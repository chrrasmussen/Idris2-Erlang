-module('Idris.Idris2.Data.IOArray.Prims').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__newArray'/4,
  'un--prim__arraySet'/5,
  'un--prim__arrayGet'/4
]).
'un--prim__newArray'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Badly formed external primitive Data.IOArray.Prims.prim__newArray")).
'un--prim__arraySet'(V0, V1, V2, V3, V4) -> ('erlang':'throw'("Error: Badly formed external primitive Data.IOArray.Prims.prim__arraySet")).
'un--prim__arrayGet'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Badly formed external primitive Data.IOArray.Prims.prim__arrayGet")).
