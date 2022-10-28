-module('Idris.Idris2.Compiler.ES.Javascript').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--htmlHeader'/0,
  'un--htmlFooter'/0,
  'un--executeExpr'/5,
  'un--compileToJS'/3,
  'un--compileLibrary'/5,
  'un--compileExpr'/6,
  'un--codegenJavascript'/0,
  'un--addHeaderAndFooter'/2
]).
'un--htmlHeader'() -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> <<V0/binary, V1/binary>> end end, <<""/utf8>>}, fun (V2) -> V2 end, [<<"<html>\x{a}  <head>\x{a}    <meta charset=\x{27}utf-8\x{27}>\x{a}  </head>\x{a}  <body>\x{a}    <script type=\x{27}text/javascript\x{27}>\x{a}"/utf8>> | []])).
'un--htmlFooter'() -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> <<V0/binary, V1/binary>> end end, <<""/utf8>>}, fun (V2) -> V2 end, [<<"\x{a}    </script>\x{a}  </body>\x{a}</html>"/utf8>> | []])).
'un--executeExpr'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Javascript backend is only able to compile, use Node instead"/utf8>>}, V4)).
'un--compileToJS'(V0, V1, V2) -> ('Idris.Idris2.Compiler.ES.Codegen':'un--compileToES'(V0, V1, {'Core.Options.Javascript'}, V2, [<<"browser"/utf8>> | [<<"javascript"/utf8>> | []]])).
'un--compileLibrary'(V0, V1, V2, V3, V4) -> begin (V7 = fun (V5) -> begin (V6 = ('Idris.Idris2.Prelude.IO':'un--prim__putStr'(<<"Compiling to library is not supported.\x{a}"/utf8>>, V5))), {'Prelude.Types.Right', V6} end end), fun (V8) -> begin (V9 = (V7(V8))), case V9 of {'Prelude.Types.Left', V10} -> {'Prelude.Types.Left', V10}; {'Prelude.Types.Right', V11} -> (begin (V13 = fun (V12) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end), V13 end(V8)) end end end end.
'un--compileExpr'(V0, V1, V2, V3, V4, V5) -> begin (V6 = ('un--compileToJS'(V0, V1, V4))), fun (V7) -> begin (V8 = (V6(V7))), case V8 of {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', V9}; {'Prelude.Types.Right', V10} -> (begin (V20 = begin (V11 = ('un--addHeaderAndFooter'(V5, V10))), begin (V12 = ('Idris.Idris2.Libraries.Utils.Path':'un--</>'(V3, V5))), begin (V13 = ('Idris.Idris2.Core.Core':'un--writeFile'(V12, V11))), fun (V14) -> begin (V15 = (V13(V14))), case V15 of {'Prelude.Types.Left', V16} -> {'Prelude.Types.Left', V16}; {'Prelude.Types.Right', V17} -> (begin (V19 = fun (V18) -> {'Prelude.Types.Right', {'Prelude.Types.Just', V12}} end), V19 end(V14)) end end end end end end), V20 end(V7)) end end end end.
'un--codegenJavascript'() -> {'Compiler.Common.MkCG', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('un--compileExpr'(V0, V1, V2, V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('un--executeExpr'(V6, V7, V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('un--compileLibrary'(V11, V12, V13, V14, V15)) end end end end end, {'Prelude.Types.Nothing'}, {'Prelude.Types.Nothing'}}.
'un--addHeaderAndFooter'(V0, V1) -> case ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> ('Idris.Idris2.Data.String':'un--toLower'(V2)) end))(('Idris.Idris2.Libraries.Utils.Path':'un--extension'(V0)))) of {'Prelude.Types.Just', V10} -> case V10 of <<"html"/utf8>> -> <<('un--htmlHeader'())/binary, <<V1/binary, ('un--htmlFooter'())/binary>>/binary>>; _ -> V1 end; _ -> V1 end.
