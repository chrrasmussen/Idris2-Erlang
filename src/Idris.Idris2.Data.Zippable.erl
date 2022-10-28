-module('Idris.Idris2.Data.Zippable').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--zipWith3'/4,
  'un--zipWith'/4,
  'un--zip3'/4,
  'un--zip'/3,
  'un--unzipWith3'/3,
  'un--unzipWith'/3,
  'un--unzip3'/2,
  'un--unzip'/2
]).
'un--zipWith3'(V0, V1, V2, V3) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V4, V5, V6, V7, V8, V9, V10, V11} -> fun (V12) -> ((((((((V6('erased'))('erased'))('erased'))('erased'))(V1))(V2))(V3))(V12)) end end.
'un--zipWith'(V0, V1, V2, V3) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V4, V5, V6, V7, V8, V9, V10, V11} -> ((((((V4('erased'))('erased'))('erased'))(V1))(V2))(V3)) end.
'un--zip3'(V0, V1, V2, V3) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V4, V5, V6, V7, V8, V9, V10, V11} -> ((((((V7('erased'))('erased'))('erased'))(V1))(V2))(V3)) end.
'un--zip'(V0, V1, V2) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V3, V4, V5, V6, V7, V8, V9, V10} -> ((((V4('erased'))('erased'))(V1))(V2)) end.
'un--unzipWith3'(V0, V1, V2) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V3, V4, V5, V6, V7, V8, V9, V10} -> ((((((V9('erased'))('erased'))('erased'))('erased'))(V1))(V2)) end.
'un--unzipWith'(V0, V1, V2) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V3, V4, V5, V6, V7, V8, V9, V10} -> (((((V7('erased'))('erased'))('erased'))(V1))(V2)) end.
'un--unzip3'(V0, V1) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V2, V3, V4, V5, V6, V7, V8, V9} -> ((((V9('erased'))('erased'))('erased'))(V1)) end.
'un--unzip'(V0, V1) -> case V0 of {'Data.Zippable.dn--un--__mkZippable', V2, V3, V4, V5, V6, V7, V8, V9} -> (((V7('erased'))('erased'))(V1)) end.
