-module('Idris.Idris2.Prelude.Types.String').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--length'/1,
  'un--++'/2
]).
'un--length'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num_Nat'(('string':'length'(V0)))).
'un--++'(V0, V1) -> (fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(V0, V1)).
