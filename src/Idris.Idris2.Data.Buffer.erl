-module('Idris.Idris2.Data.Buffer').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--concatBuffers-3769'/4,
  'nested--3925-3457--in--un--unpackTo'/4,
  'nested--4196-3720--in--un--scanSize'/4,
  'un--stringByteLength'/1,
  'un--splitBuffer'/3,
  'un--setString'/4,
  'un--setInt32'/4,
  'un--setInt16'/4,
  'un--setInt'/4,
  'un--setDouble'/4,
  'un--setByte'/4,
  'un--setBits8'/4,
  'un--setBits64'/4,
  'un--setBits32'/4,
  'un--setBits16'/4,
  'un--resizeBuffer'/3,
  'un--rawSize'/2,
  'un--prim__setString'/4,
  'un--prim__setInt32'/4,
  'un--prim__setInt16'/4,
  'un--prim__setInt'/4,
  'un--prim__setDouble'/4,
  'un--prim__setByte'/4,
  'un--prim__setBits8'/4,
  'un--prim__setBits64'/4,
  'un--prim__setBits32'/4,
  'un--prim__setBits16'/4,
  'un--prim__newBuffer'/2,
  'un--prim__getString'/4,
  'un--prim__getInt32'/3,
  'un--prim__getInt'/3,
  'un--prim__getDouble'/3,
  'un--prim__getByte'/3,
  'un--prim__getBits8'/3,
  'un--prim__getBits64'/3,
  'un--prim__getBits32'/3,
  'un--prim__getBits16'/3,
  'un--prim__copyData'/6,
  'un--prim__bufferSize'/1,
  'un--newBuffer'/2,
  'un--getString'/4,
  'un--getInt32'/3,
  'un--getInt'/3,
  'un--getDouble'/3,
  'un--getByte'/3,
  'un--getBits8'/3,
  'un--getBits64'/3,
  'un--getBits32'/3,
  'un--getBits16'/3,
  'un--copyData'/6,
  'un--concatBuffers'/2,
  'un--bufferData'/2
]).
'case--concatBuffers-3769'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> begin (V6 = ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V5))), case V0 of {'Prelude.IO.MkHasIO', V7, V8} -> case V7 of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> ((((V10('erased'))('erased'))(('un--newBuffer'(V0, V4))))(fun (V12) -> case V12 of {'Prelude.Types.Just', V13} -> case V0 of {'Prelude.IO.MkHasIO', V14, V15} -> case V14 of {'Prelude.Interfaces.MkMonad', V16, V17, V18} -> ((((V17('erased'))('erased'))(('Idris.Idris2.Prelude.Interfaces':'un--traverse_'(case V0 of {'Prelude.IO.MkHasIO', V28, V29} -> case V28 of {'Prelude.Interfaces.MkMonad', V30, V31, V32} -> V30 end end, {'Prelude.Interfaces.MkFoldable', fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V35, V36, V37)) end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> fun (V42) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V40, V41, V42)) end end end end end, fun (V43) -> fun (V44) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V44)) end end, fun (V45) -> fun (V46) -> fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> fun (V51) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V48, V49, V50, V51)) end end end end end end end, fun (V52) -> fun (V53) -> V53 end end, fun (V54) -> fun (V55) -> fun (V56) -> fun (V57) -> fun (V58) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V56, V57, V58)) end end end end end}, fun (V59) -> case V59 of {'Builtin.MkPair', V60, V61} -> case V61 of {'Builtin.MkPair', V62, V63} -> ('un--copyData'(V0, V60, 0, V62, V13, V63)) end end end, ('Idris.Idris2.Data.List':'dn--un--zip3_Zippable_List'(V1, V2, V6))))))(fun (V19) -> case V0 of {'Prelude.IO.MkHasIO', V20, V21} -> case V20 of {'Prelude.Interfaces.MkMonad', V22, V23, V24} -> case V22 of {'Prelude.Interfaces.MkApplicative', V25, V26, V27} -> ((V26('erased'))({'Prelude.Types.Just', V13})) end end end end)) end end; {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.IO.MkHasIO', V64, V65} -> case V64 of {'Prelude.Interfaces.MkMonad', V66, V67, V68} -> case V66 of {'Prelude.Interfaces.MkApplicative', V69, V70, V71} -> ((V70('erased'))({'Prelude.Types.Nothing'})) end end end end end)) end end end end.
'nested--3925-3457--in--un--unpackTo'(V0, V1, V2, V3) -> case V3 of 0 -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> case V4 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> case V6 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> ((V10('erased'))(V2)) end end end; _ -> case V0 of {'Prelude.IO.MkHasIO', V12, V13} -> case V12 of {'Prelude.Interfaces.MkMonad', V14, V15, V16} -> ((((V15('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V19, V20} -> ((V20('erased'))(fun (V21) -> ('un--prim__getByte'(V1, begin (V22 = (V3 - 1)), case ((V22 band 9223372036854775808) =/= 0) of 'true' -> (V22 bor -9223372036854775808); _ -> (V22 band 9223372036854775807) end end, V21)) end)) end))(fun (V17) -> ('nested--3925-3457--in--un--unpackTo'(V0, V1, [V17 | V2], begin (V18 = (V3 - 1)), case ((V18 band 9223372036854775808) =/= 0) of 'true' -> (V18 bor -9223372036854775808); _ -> (V18 band 9223372036854775807) end end)) end)) end end end.
'nested--4196-3720--in--un--scanSize'(V0, V1, V2, V3) -> case V2 of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', begin (V6 = (V4 + V3)), case ((V6 band 9223372036854775808) =/= 0) of 'true' -> (V6 bor -9223372036854775808); _ -> (V6 band 9223372036854775807) end end, [V4 | V5]} end.
'un--stringByteLength'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.stringByteLength"/utf8>>})).
'un--splitBuffer'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V70, V71} -> case V70 of {'Prelude.Interfaces.MkMonad', V72, V73, V74} -> case V72 of {'Prelude.Interfaces.MkApplicative', V75, V76, V77} -> ((V76('erased'))(('un--prim__bufferSize'(V1)))) end end end))(fun (V8) -> case case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V2, begin (V9 = 0), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V2, V8)); 0 -> 0 end of 1 -> case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> case V10 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> ((((V13('erased'))('erased'))(('un--newBuffer'(V0, V2))))(fun (V15) -> case V15 of {'Prelude.Types.Just', V16} -> case V0 of {'Prelude.IO.MkHasIO', V17, V18} -> case V17 of {'Prelude.Interfaces.MkMonad', V19, V20, V21} -> ((((V20('erased'))('erased'))(('un--newBuffer'(V0, begin (V53 = (V8 - V2)), case ((V53 band 9223372036854775808) =/= 0) of 'true' -> (V53 bor -9223372036854775808); _ -> (V53 band 9223372036854775807) end end))))(fun (V22) -> case V22 of {'Prelude.Types.Just', V23} -> case V0 of {'Prelude.IO.MkHasIO', V24, V25} -> case V24 of {'Prelude.Interfaces.MkMonad', V26, V27, V28} -> ((((V27('erased'))('erased'))(('un--copyData'(V0, V1, 0, V2, V16, 0))))(fun (V29) -> case V0 of {'Prelude.IO.MkHasIO', V30, V31} -> case V30 of {'Prelude.Interfaces.MkMonad', V32, V33, V34} -> ((((V33('erased'))('erased'))(('un--copyData'(V0, V1, V2, begin (V44 = (V8 - V2)), case ((V44 band 9223372036854775808) =/= 0) of 'true' -> (V44 bor -9223372036854775808); _ -> (V44 band 9223372036854775807) end end, V23, 0))))(fun (V35) -> case V0 of {'Prelude.IO.MkHasIO', V36, V37} -> case V36 of {'Prelude.Interfaces.MkMonad', V38, V39, V40} -> case V38 of {'Prelude.Interfaces.MkApplicative', V41, V42, V43} -> ((V42('erased'))({'Prelude.Types.Just', {'Builtin.MkPair', V16, V23}})) end end end end)) end end end)) end end; {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.IO.MkHasIO', V45, V46} -> case V45 of {'Prelude.Interfaces.MkMonad', V47, V48, V49} -> case V47 of {'Prelude.Interfaces.MkApplicative', V50, V51, V52} -> ((V51('erased'))({'Prelude.Types.Nothing'})) end end end end end)) end end; {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.IO.MkHasIO', V54, V55} -> case V54 of {'Prelude.Interfaces.MkMonad', V56, V57, V58} -> case V56 of {'Prelude.Interfaces.MkApplicative', V59, V60, V61} -> ((V60('erased'))({'Prelude.Types.Nothing'})) end end end end end)) end end; 0 -> case V0 of {'Prelude.IO.MkHasIO', V62, V63} -> case V62 of {'Prelude.Interfaces.MkMonad', V64, V65, V66} -> case V64 of {'Prelude.Interfaces.MkApplicative', V67, V68, V69} -> ((V68('erased'))({'Prelude.Types.Nothing'})) end end end end end)) end end.
'un--setString'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setString'(V1, V2, V3, V6)) end)) end.
'un--setInt32'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setInt32'(V1, V2, V3, V6)) end)) end.
'un--setInt16'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setInt16'(V1, V2, V3, V6)) end)) end.
'un--setInt'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setInt'(V1, V2, V3, V6)) end)) end.
'un--setDouble'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setDouble'(V1, V2, V3, V6)) end)) end.
'un--setByte'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setByte'(V1, V2, V3, V6)) end)) end.
'un--setBits8'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setBits8'(V1, V2, V3, V6)) end)) end.
'un--setBits64'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setBits64'(V1, V2, V3, V6)) end)) end.
'un--setBits32'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setBits32'(V1, V2, V3, V6)) end)) end.
'un--setBits16'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__setBits16'(V1, V2, V3, V6)) end)) end.
'un--resizeBuffer'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(('un--newBuffer'(V0, V2))))(fun (V8) -> case V8 of {'Prelude.Types.Just', V9} -> case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> case V10 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> ((((V13('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V31, V32} -> case V31 of {'Prelude.Interfaces.MkMonad', V33, V34, V35} -> case V33 of {'Prelude.Interfaces.MkApplicative', V36, V37, V38} -> ((V37('erased'))(('un--prim__bufferSize'(V1)))) end end end))(fun (V15) -> begin (V16 = case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V2, V15)) of 1 -> V2; 0 -> V15 end), case V0 of {'Prelude.IO.MkHasIO', V17, V18} -> case V17 of {'Prelude.Interfaces.MkMonad', V19, V20, V21} -> ((((V20('erased'))('erased'))(('un--copyData'(V0, V1, 0, V16, V9, 0))))(fun (V22) -> case V0 of {'Prelude.IO.MkHasIO', V23, V24} -> case V23 of {'Prelude.Interfaces.MkMonad', V25, V26, V27} -> case V25 of {'Prelude.Interfaces.MkApplicative', V28, V29, V30} -> ((V29('erased'))({'Prelude.Types.Just', V9})) end end end end)) end end end end)) end end; {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.IO.MkHasIO', V39, V40} -> case V39 of {'Prelude.Interfaces.MkMonad', V41, V42, V43} -> case V41 of {'Prelude.Interfaces.MkApplicative', V44, V45, V46} -> ((V45('erased'))({'Prelude.Types.Nothing'})) end end end end end)) end end.
'un--rawSize'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> case V4 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((V8('erased'))(('un--prim__bufferSize'(V1)))) end end end.
'un--prim__setString'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setString"/utf8>>})).
'un--prim__setInt32'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setInt32"/utf8>>})).
'un--prim__setInt16'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setInt16"/utf8>>})).
'un--prim__setInt'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setInt"/utf8>>})).
'un--prim__setDouble'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setDouble"/utf8>>})).
'un--prim__setByte'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setByte"/utf8>>})).
'un--prim__setBits8'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setBits8"/utf8>>})).
'un--prim__setBits64'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setBits64"/utf8>>})).
'un--prim__setBits32'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setBits32"/utf8>>})).
'un--prim__setBits16'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__setBits16"/utf8>>})).
'un--prim__newBuffer'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__newBuffer"/utf8>>})).
'un--prim__getString'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getString"/utf8>>})).
'un--prim__getInt32'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getInt32"/utf8>>})).
'un--prim__getInt'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getInt"/utf8>>})).
'un--prim__getDouble'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getDouble"/utf8>>})).
'un--prim__getByte'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getByte"/utf8>>})).
'un--prim__getBits8'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getBits8"/utf8>>})).
'un--prim__getBits64'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getBits64"/utf8>>})).
'un--prim__getBits32'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getBits32"/utf8>>})).
'un--prim__getBits16'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__getBits16"/utf8>>})).
'un--prim__copyData'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__copyData"/utf8>>})).
'un--prim__bufferSize'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Data.Buffer.prim__bufferSize"/utf8>>})).
'un--newBuffer'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(V1, begin (V2 = 0), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end)) of 1 -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V17, V18} -> ((V18('erased'))(fun (V19) -> ('un--prim__newBuffer'(V1, V19)) end)) end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))({'Prelude.Types.Just', V8})) end end end end)) end end; 0 -> case V0 of {'Prelude.IO.MkHasIO', V20, V21} -> case V20 of {'Prelude.Interfaces.MkMonad', V22, V23, V24} -> case V22 of {'Prelude.Interfaces.MkApplicative', V25, V26, V27} -> ((V26('erased'))({'Prelude.Types.Nothing'})) end end end end.
'un--getString'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('un--prim__getString'(V1, V2, V3, V6)) end)) end.
'un--getInt32'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getInt32'(V1, V2, V5)) end)) end.
'un--getInt'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getInt'(V1, V2, V5)) end)) end.
'un--getDouble'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getDouble'(V1, V2, V5)) end)) end.
'un--getByte'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getByte'(V1, V2, V5)) end)) end.
'un--getBits8'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getBits8'(V1, V2, V5)) end)) end.
'un--getBits64'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getBits64'(V1, V2, V5)) end)) end.
'un--getBits32'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getBits32'(V1, V2, V5)) end)) end.
'un--getBits16'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__getBits16'(V1, V2, V5)) end)) end.
'un--copyData'(V0, V1, V2, V3, V4, V5) -> case V0 of {'Prelude.IO.MkHasIO', V6, V7} -> ((V7('erased'))(fun (V8) -> ('un--prim__copyData'(V1, V2, V3, V4, V5, V8)) end)) end.
'un--concatBuffers'(V0, V1) -> begin (V10 = ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> ('un--prim__bufferSize'(V2)) end))(V1))), ('case--concatBuffers-3769'(V0, V1, V10, ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V11) -> fun (V12) -> ('nested--4196-3720--in--un--scanSize'(V0, V1, V11, V12)) end end, {'Builtin.MkPair', 0, []}, V10)))) end.
'un--bufferData'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('un--prim__bufferSize'(V1)))) end end end))(fun (V7) -> ('nested--3925-3457--in--un--unpackTo'(V0, V1, [], V7)) end)) end end.
