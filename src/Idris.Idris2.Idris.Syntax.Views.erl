-module('Idris.Idris2.Idris.Syntax.Views').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--7755-9551--in--un--go'/2,
  'nested--7703-9503--in--un--go'/2,
  'nested--7500-9300--in--un--go'/3,
  'un--underPis'/1,
  'un--underLams'/1,
  'un--unArg'/1,
  'un--getFnArgs'/2
]).
'nested--7755-9551--in--un--go'(V0, V1) -> case V1 of {'Idris.Syntax.PBracketed', V2, V3} -> ('nested--7755-9551--in--un--go'(V0, V3)); {'Idris.Syntax.PLam', V4, V5, V6, V7, V8, V9} -> fun (V10) -> (('nested--7755-9551--in--un--go'(V0, V9))([{'Builtin.MkPair', V7, {'Core.TT.Lam', V4, V5, V6, V8}} | V10])) end; _ -> fun (V11) -> {'Builtin.MkPair', V11, V1} end end.
'nested--7703-9503--in--un--go'(V0, V1) -> case V1 of {'Idris.Syntax.PPi', V2, V3, V4, V5, V6, V7} -> fun (V8) -> (('nested--7703-9503--in--un--go'(V0, V7))([{'Builtin.MkPair', V5, {'Core.TT.Pi', V2, V3, V4, V6}} | V8])) end; {'Idris.Syntax.PBracketed', V9, V10} -> ('nested--7703-9503--in--un--go'(V0, V10)); _ -> fun (V11) -> {'Builtin.MkPair', V11, V1} end end.
'nested--7500-9300--in--un--go'(V0, V1, V2) -> case V2 of {'Idris.Syntax.PApp', V3, V4, V5} -> fun (V6) -> (('nested--7500-9300--in--un--go'(V0, V1, V4))([{'Idris.Syntax.Views.Explicit', V3, V5} | V6])) end; {'Idris.Syntax.PAutoApp', V7, V8, V9} -> fun (V10) -> (('nested--7500-9300--in--un--go'(V0, V1, V8))([{'Idris.Syntax.Views.Auto', V7, V9} | V10])) end; {'Idris.Syntax.PNamedApp', V11, V12, V13, V14} -> fun (V15) -> (('nested--7500-9300--in--un--go'(V0, V1, V12))([{'Idris.Syntax.Views.Named', V11, V13, V14} | V15])) end; {'Idris.Syntax.PBracketed', V16, V17} -> ('nested--7500-9300--in--un--go'(V0, V1, V17)); {'Idris.Syntax.POp', V18, V19, V20, V21, V22} -> fun (V23) -> {'Builtin.MkPair', {'Idris.Syntax.PRef', V19, V20}, [{'Idris.Syntax.Views.Explicit', V18, V21} | [{'Idris.Syntax.Views.Explicit', V18, V22} | V23]]} end; {'Idris.Syntax.PEq', V24, V25, V26} -> fun (V27) -> {'Builtin.MkPair', {'Idris.Syntax.PRef', V24, (V1(('Idris.Idris2.Idris.Syntax.Builtin':'un--eqName'())))}, [{'Idris.Syntax.Views.Explicit', V24, V25} | [{'Idris.Syntax.Views.Explicit', V24, V26} | V27]]} end; {'Idris.Syntax.PPair', V28, V29, V30} -> fun (V31) -> {'Builtin.MkPair', {'Idris.Syntax.PRef', V28, (V1(('Idris.Idris2.Idris.Syntax.Builtin':'un--pairname'())))}, [{'Idris.Syntax.Views.Explicit', V28, V29} | [{'Idris.Syntax.Views.Explicit', V28, V30} | V31]]} end; {'Idris.Syntax.PDPair', V32, V33, V34, V35, V36} -> fun (V37) -> {'Builtin.MkPair', {'Idris.Syntax.PRef', V33, (V1(('Idris.Idris2.Idris.Syntax.Builtin':'un--dpairname'())))}, [{'Idris.Syntax.Views.Explicit', V33, V34} | [{'Idris.Syntax.Views.Explicit', V33, V35} | [{'Idris.Syntax.Views.Explicit', V33, V36} | V37]]]} end; _ -> fun (V38) -> {'Builtin.MkPair', V2, V38} end end.
'un--underPis'(V0) -> (('nested--7703-9503--in--un--go'(V0, V0))([])).
'un--underLams'(V0) -> (('nested--7755-9551--in--un--go'(V0, V0))([])).
'un--unArg'(V0) -> case V0 of {'Idris.Syntax.Views.Explicit', V1, V2} -> V2; {'Idris.Syntax.Views.Auto', V3, V4} -> V4; {'Idris.Syntax.Views.Named', V5, V6, V7} -> V7 end.
'un--getFnArgs'(V0, V1) -> (('nested--7500-9300--in--un--go'(V1, V0, V1))([])).
