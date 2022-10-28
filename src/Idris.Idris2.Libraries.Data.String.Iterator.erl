-module('Idris.Idris2.Libraries.Data.String.Iterator').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2730-2259--in--un--unpack\x{27}'/2,
  'nested--2653-2205--in--un--loop'/5,
  'un--withString'/2,
  'un--unpack'/1,
  'un--uncons'/2,
  'un--fromString'/1,
  'un--foldl'/3
]).
'nested--2730-2259--in--un--unpack\x{27}'(V0, V1) -> case ('un--uncons'(V0, V1)) of {'Libraries.Data.String.Iterator.EOF'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.String.Iterator.Character', V2, V3} -> {'Libraries.Data.List.Lazy.::', V2, fun () -> ('nested--2730-2259--in--un--unpack\x{27}'(V0, V3)) end} end.
'nested--2653-2205--in--un--loop'(V0, V1, V2, V3, V4) -> case ('un--uncons'(V0, V4)) of {'Libraries.Data.String.Iterator.EOF'} -> V3; {'Libraries.Data.String.Iterator.Character', V5, V6} -> ('nested--2653-2205--in--un--loop'(V0, V1, V2, ((V2(V3))(V5)), V6)) end.
'un--withString'(V0, V1) -> (V1(('un--fromString'(V0)))).
'un--unpack'(V0) -> ('un--withString'(V0, fun (V1) -> ('nested--2730-2259--in--un--unpack\x{27}'(V0, V1)) end)).
'un--uncons'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Data.String.Iterator.uncons"/utf8>>})).
'un--fromString'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Data.String.Iterator.fromString"/utf8>>})).
'un--foldl'(V0, V1, V2) -> ('un--withString'(V2, fun (V3) -> ('nested--2653-2205--in--un--loop'(V2, V1, V0, V1, V3)) end)).
