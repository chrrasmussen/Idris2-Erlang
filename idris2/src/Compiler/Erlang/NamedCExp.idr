module Compiler.Erlang.NamedCExp

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.Erlang.ErlExpr
import Compiler.Erlang.Name
import Compiler.Erlang.RtsSupport

import Core.Context
import Core.Name
import Core.TT

import Data.List
import Data.NameMap
import Data.Stream
import Data.Vect

%default covering


-- CONSTANTS

genConstant : Constant -> IdrisConstant
genConstant (I x) = IInt x
genConstant (BI x) = IInteger x
genConstant (Str x) = IString x
genConstant (Ch x) = IChar x
genConstant (Db x) = IDouble x
genConstant WorldVal = IWorldVal
genConstant IntType = IIntType
genConstant IntegerType = IIntegerType
genConstant StringType = IStringType
genConstant CharType = ICharType
genConstant DoubleType = IDoubleType
genConstant WorldType = IWorldType


-- OPERATORS

genOp : {auto lv : Ref LV LocalVars} -> Line -> PrimFn arity -> Vect arity ErlExpr -> Core ErlExpr
genOp l (Add IntType) [x, y] = pure $ genIntAdd l 63 x y
genOp l (Sub IntType) [x, y] = pure $ genIntSub l 63 x y
genOp l (Mul IntType) [x, y] = pure $ genIntMult l 63 x y
genOp l (Div IntType) [x, y] = pure $ genIntDiv l 63 x y
genOp l (Add ty) [x, y] = pure $ EOp l "+" x y
genOp l (Sub ty) [x, y] = pure $ EOp l "-" x y
genOp l (Mul ty) [x, y] = pure $ EOp l "*" x y
genOp l (Div IntegerType) [x, y] = pure $ EOp l "div" x y -- NOTE: Is allowed to be partial
genOp l (Div ty) [x, y] = pure $ EOp l "/" x y -- NOTE: Is allowed to be partial
genOp l (Mod ty) [x, y] = pure $ EOp l "rem" x y -- NOTE: Is allowed to be partial
genOp l (Neg ty) [x] = pure $ genFunCall l "erlang" "-" [x]
genOp l (ShiftL ty) [x, y] = pure $ EOp l "bsl" x y
genOp l (ShiftR ty) [x, y] = pure $ EOp l "bsr" x y
genOp l (BAnd ty) [x, y] = pure $ EOp l "band" x y
genOp l (BOr ty) [x, y] = pure $ EOp l "bor" x y
genOp l (BXOr ty) [x, y] = pure $ EOp l "bxor" x y
genOp l (LT StringType) [x, y] = pure $ genUnicodeStringLT l x y
genOp l (LTE StringType) [x, y] = pure $ genUnicodeStringLTE l x y
genOp l (EQ StringType) [x, y] = pure $ genUnicodeStringEQ l x y
genOp l (GTE StringType) [x, y] = pure $ genUnicodeStringGTE l x y
genOp l (GT StringType) [x, y] = pure $ genUnicodeStringGT l x y
genOp l (LT ty) [x, y] = pure $ genBoolToInt l (EOp l "<" x y)
genOp l (LTE ty) [x, y] = pure $ genBoolToInt l (EOp l "=<" x y)
genOp l (EQ ty) [x, y] = pure $ genBoolToInt l (EOp l "=:=" x y)
genOp l (GTE ty) [x, y] = pure $ genBoolToInt l (EOp l ">=" x y)
genOp l (GT ty) [x, y] = pure $ genBoolToInt l (EOp l ">" x y)
genOp l StrLength [str] = pure $ genUnicodeStringLength l str
genOp l StrHead [str] = pure $ genUnicodeStringHead l str
genOp l StrTail [str] = pure $ genUnicodeStringTail l str
genOp l StrIndex [str, index] = pure $ genUnicodeStringIndex l str index
genOp l StrCons [char, str] = pure $ genUnicodeStringCons l char str
genOp l StrAppend [str1, str2] = pure $ genUnicodeStringAppend l str1 str2
genOp l StrReverse [str] = pure $ genUnicodeStringReverse l str
genOp l StrSubstr [start, len, str] = pure $ genUnicodeStringSubstr l start len str

-- `e` is Euler's number, which approximates to: 2.718281828459045
genOp l DoubleExp [x] = pure $ genFunCall l "math" "pow" [EFloat l 2.718281828459045, x] -- Base is `e`
genOp l DoubleLog [x] = pure $ genFunCall l "math" "log" [x] -- Base is `e`
genOp l DoubleSin [x] = pure $ genFunCall l "math" "sin" [x]
genOp l DoubleCos [x] = pure $ genFunCall l "math" "cos" [x]
genOp l DoubleTan [x] = pure $ genFunCall l "math" "tan" [x]
genOp l DoubleASin [x] = pure $ genFunCall l "math" "asin" [x]
genOp l DoubleACos [x] = pure $ genFunCall l "math" "acos" [x]
genOp l DoubleATan [x] = pure $ genFunCall l "math" "atan" [x]
genOp l DoubleSqrt [x] = pure $ genFunCall l "math" "sqrt" [x]
genOp l DoubleFloor [x] = pure $ genFunCall l "erlang" "floor" [x]
genOp l DoubleCeiling [x] = pure $ genFunCall l "erlang" "ceil" [x]

genOp l (Cast IntegerType IntType) [x] = pure $ genIntegerToInt l x
genOp l (Cast IntegerType DoubleType) [x] = pure $ genIntegerToDouble l x
genOp l (Cast IntegerType StringType) [x] = pure $ genIntegerToString l x

genOp l (Cast IntType IntegerType) [x] = pure $ genIntToInteger l x
genOp l (Cast IntType DoubleType) [x] = pure $ genIntToDouble l x
genOp l (Cast IntType CharType) [x] = pure $ genIntToChar l x
genOp l (Cast IntType StringType) [x] = pure $ genIntToString l x

genOp l (Cast DoubleType IntegerType) [x] = pure $ genDoubleToInteger l x
genOp l (Cast DoubleType IntType) [x] = pure $ genDoubleToInt l x
genOp l (Cast DoubleType StringType) [x] = pure $ genDoubleToString l x

genOp l (Cast CharType IntegerType) [x] = pure $ genCharToInteger l x
genOp l (Cast CharType IntType) [x] = pure $ genCharToInt l x
genOp l (Cast CharType StringType) [x] = pure $ genCharToString l x

genOp l (Cast StringType IntegerType) [x] = genStringToInteger l x
genOp l (Cast StringType IntType) [x] = genStringToInt l x
genOp l (Cast StringType DoubleType) [x] = genStringToDouble l x

genOp l (Cast from to) [x] = pure $ genThrow l ("Invalid cast " ++ show from ++ "->" ++ show to)

genOp l BelieveMe [_, _, x] = pure $ x
genOp l Crash [_, msg] = do
  let crashMsg = genFunCall l "unicode" "characters_to_list" [ECons l (ECharlist l "Crash: ") msg]
  pure $ genFunCall l "erlang" "throw" [crashMsg]


-- DATA CONSTRUCTORS

genCon : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> Line -> Name -> List ErlExpr -> Core ErlExpr
-- List
genCon namespaceInfo l (NS ["Prelude"] (UN "Nil")) [] =
  pure $ ENil l
genCon namespaceInfo l (NS ["Prelude"] (UN "::")) [x, xs] =
  pure $ ECons l x xs
-- ErlAtom
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkAtom")) [x] =
  pure $ genUnsafeStringToAtom l x
-- ErlBinary
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkBinary")) [x] =
  pure $ genFunCall l "unicode" "characters_to_binary" [x]
-- ErlCharlist
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkCharlist")) [x] =
  pure $ genFunCall l "unicode" "characters_to_list" [x]
-- ErlNil
genCon namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "Nil")) [] =
  pure $ ENil l
-- ErlCons
genCon namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "::")) [x, y] =
  pure $ ECons l x y
-- ErlList
genCon namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "Nil")) [] =
  pure $ ENil l
genCon namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "::")) [x, xs] =
  pure $ ECons l x xs
-- ErlTuple/A
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple0")) args = pure $ ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple1")) args = pure $ ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple2")) args = pure $ ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple3")) args = pure $ ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple4")) args = pure $ ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple5")) args = pure $ ETuple l args
-- ErlFun/A
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun0")) [fun] = genUncurry l 0 id fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun1")) [fun] = genUncurry l 1 id fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun2")) [fun] = genUncurry l 2 id fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun3")) [fun] = genUncurry l 3 id fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun4")) [fun] = genUncurry l 4 id fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun5")) [fun] = genUncurry l 5 id fun
-- ErlIOFun/A
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun0")) [fun] = genUncurry l 0 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun1")) [fun] = genUncurry l 1 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun2")) [fun] = genUncurry l 2 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun3")) [fun] = genUncurry l 3 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun4")) [fun] = genUncurry l 4 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun5")) [fun] = genUncurry l 5 (genUnsafePerformIO namespaceInfo l) fun
-- Default
genCon namespaceInfo l name args =
  pure $ ECon l (constructorName name) args


-- DATA DECONSTRUCTORS

argsToErlMatchers : (args : List LocalVar) -> ErlMatchers
argsToErlMatchers [] = []
argsToErlMatchers (x :: xs) = (::) {newVar=x} MAny (argsToErlMatchers xs)

readConAltFun : {auto lv : Ref LV LocalVars} -> Line -> (arity : Nat) -> (funVar : LocalVar) -> ErlExpr -> (transform : ErlExpr -> ErlExpr) -> Core ErlMatcher
readConAltFun l arity funVar body transform = do
  tempVar <- newLocalVar
  let curriedFunMatcher = MTransform MAny tempVar !(genCurry l arity transform (ELocal l tempVar))
  pure $ MTransform curriedFunMatcher funVar body

readConAlt : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> Line -> Name -> (args : List LocalVar) -> ErlExpr -> Core ErlMatcher
-- List
readConAlt namespaceInfo l (NS ["Prelude"] (UN "Nil")) [] body =
  pure $ MConst MNil body
readConAlt namespaceInfo l (NS ["Prelude"] (UN "::")) [xVar, xsVar] body =
  pure $ MCons MAny MAny xVar xsVar body
-- ErlAtom
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkAtom")) [xVar] body = do
  tempVar <- newLocalVar
  let convertAtomMatcher = MTransform MAny tempVar (genAtomToString l (ELocal l tempVar))
  pure $ MTransform convertAtomMatcher xVar body
-- ErlBinary
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkBinary")) [xVar] body =
  pure $ MTransform MAny xVar body
-- ErlCharlist
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkCharlist")) [xVar] body =
  pure $ MTransform MAny xVar body
-- ErlNil
readConAlt namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "Nil")) [] body =
  pure $ MConst MNil body
-- ErlCons
readConAlt namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "::")) [xVar, yVar] body =
  pure $ MCons MAny MAny xVar yVar body
-- ErlList
readConAlt namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "Nil")) [] body =
  pure $ MConst MNil body
readConAlt namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "::")) [xVar, xsVar] body =
  pure $ MCons MAny MAny xVar xsVar body
-- ErlTuple/A
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple0")) args body =
  pure $ MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple1")) args body =
  pure $ MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple2")) args body =
  pure $ MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple3")) args body =
  pure $ MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple4")) args body =
  pure $ MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple5")) args body =
  pure $ MTuple (argsToErlMatchers args) body
-- ErlFun/A
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun0")) [funVar] body =
  readConAltFun l 0 funVar body id
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun1")) [funVar] body =
  readConAltFun l 1 funVar body id
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun2")) [funVar] body =
  readConAltFun l 2 funVar body id
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun3")) [funVar] body =
  readConAltFun l 3 funVar body id
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun4")) [funVar] body =
  readConAltFun l 4 funVar body id
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkFun5")) [funVar] body =
  readConAltFun l 5 funVar body id
-- ErlIOFun/A
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun0")) [funVar] body = do
  worldVal <- newLocalVar
  readConAltFun l 0 funVar body (genMkIO l worldVal)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun1")) [funVar] body = do
  worldVal <- newLocalVar
  readConAltFun l 1 funVar body (genMkIO l worldVal)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun2")) [funVar] body = do
  worldVal <- newLocalVar
  readConAltFun l 2 funVar body (genMkIO l worldVal)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun3")) [funVar] body = do
  worldVal <- newLocalVar
  readConAltFun l 3 funVar body (genMkIO l worldVal)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun4")) [funVar] body = do
  worldVal <- newLocalVar
  readConAltFun l 4 funVar body (genMkIO l worldVal)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun5")) [funVar] body = do
  worldVal <- newLocalVar
  readConAltFun l 5 funVar body (genMkIO l worldVal)
-- Default
readConAlt namespaceInfo l name args body =
  pure $ MTaggedTuple (constructorName name) (argsToErlMatchers args) body


-- EXTERNAL PRIMITIVES

genDecode : {auto lv : Ref LV LocalVars} -> Line -> ErlExpr -> ErlMatcher -> Core ErlExpr
genDecode l term matcher = do
  tempVar <- newLocalVar
  pure $ EMatcherCase l
    term
    [ MTransform matcher tempVar (genJust l (ELocal l tempVar))
    ]
    (genNothing l)

genExtPrim : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> Line -> Name -> List ErlExpr -> Core ErlExpr
genExtPrim namespaceInfo l (NS _ (UN "prim__putStr")) [arg, world] = do
  let putStrCall = genUnicodePutStr l arg
  let retVal = genMkIORes l (genMkUnit l)
  genSequence l [putStrCall, retVal]
genExtPrim namespaceInfo l (NS _ (UN "prim__getStr")) [world] = do
  let getStrCall = genUnicodeGetStr l (ECharlist l "")
  pure $ genMkIORes l getStrCall
genExtPrim namespaceInfo l (NS _ (UN "prim__fastAppend")) [xs] = do
  pure $ xs
genExtPrim namespaceInfo l (NS _ (UN "void")) [_, _] =
  pure $ genThrow l "Error: Executed 'void'"
genExtPrim namespaceInfo l (NS _ (UN "prim__erlUnsafeCall")) [_, ret, modName, fnName, args, world] = do
  let erlCall = genFunCall l "erlang" "apply" [genUnsafeStringToAtom l modName, genUnsafeStringToAtom l fnName, args]
  pure $ genMkIORes l erlCall
genExtPrim namespaceInfo l (NS _ (UN "prim__erlTryCatch")) [_, action, world] = do
  okVar <- newLocalVar
  errorVar <- newLocalVar
  let actionExpr = genUnsafePerformIO namespaceInfo l action
  let body = ETryCatch l actionExpr okVar (genRight l (ELocal l okVar)) errorVar (genLeft l (ELocal l errorVar))
  pure $ genMkIORes l body
genExtPrim namespaceInfo l (NS _ (UN "prim__erlReceive")) [timeout, world] = do
  tempVar <- newLocalVar
  let receive = EReceive l [MTransform MAny tempVar (genJust l (ELocal l tempVar))] timeout (genNothing l)
  pure $ genMkIORes l receive
genExtPrim namespaceInfo l (NS _ (UN "prim__erlModule")) [] =
  pure $ EAtom l (currentModuleName namespaceInfo)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlMatchExact")) [x, y] =
  pure $ genBoolToInt l (EOp l "=:=" x y)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeCodepoint")) [term] =
  genDecode l term MCodepoint
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeInteger")) [term] =
   genDecode l term MInteger
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeDouble")) [term] =
  genDecode l term MFloat
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeAtom")) [term] =
  genDecode l term MAtom
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeBinary")) [term] =
  genDecode l term MBinary
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodePid")) [term] =
  genDecode l term MPid
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeRef")) [term] =
  genDecode l term MRef
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodePort")) [term] =
  genDecode l term MPort
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeAnyMap")) [term] =
  genDecode l term MMap
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeAnyList")) [term] =
  genDecode l term MAnyList
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeNil")) [term] =
  genDecode l term MNil
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeCons")) [term] = do
  hdVar <- newLocalVar
  tlVar <- newLocalVar
  genDecode l term $ MCons MAny MAny hdVar tlVar (ECons l (ELocal l hdVar) (ELocal l tlVar))
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple0")) [term] =
  genDecode l term $ MTuple [] (ETuple l [])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple1")) [term] = do
  x1Var <- newLocalVar
  genDecode l term $ MTuple ((::) {newVar=x1Var} MAny Nil) (ETuple l [ELocal l x1Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple2")) [term] = do
  x1Var <- newLocalVar
  x2Var <- newLocalVar
  genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny Nil)) (ETuple l [ELocal l x1Var, ELocal l x2Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple3")) [term] = do
  x1Var <- newLocalVar
  x2Var <- newLocalVar
  x3Var <- newLocalVar
  genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny ((::) {newVar=x3Var} MAny Nil))) (ETuple l [ELocal l x1Var, ELocal l x2Var, ELocal l x3Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple4")) [term] = do
  x1Var <- newLocalVar
  x2Var <- newLocalVar
  x3Var <- newLocalVar
  x4Var <- newLocalVar
  genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny ((::) {newVar=x3Var} MAny ((::) {newVar=x4Var} MAny Nil)))) (ETuple l [ELocal l x1Var, ELocal l x2Var, ELocal l x3Var, ELocal l x4Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple5")) [term] = do
  x1Var <- newLocalVar
  x2Var <- newLocalVar
  x3Var <- newLocalVar
  x4Var <- newLocalVar
  x5Var <- newLocalVar
  genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny ((::) {newVar=x3Var} MAny ((::) {newVar=x4Var} MAny ((::) {newVar=x5Var} MAny Nil))))) (ETuple l [ELocal l x1Var, ELocal l x2Var, ELocal l x3Var, ELocal l x4Var, ELocal l x5Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun0")) [term] =
  genDecode l term (MFun 0)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun1")) [_, term] =
  genDecode l term (MFun 1)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun2")) [_, _, term] =
  genDecode l term (MFun 2)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun3")) [_, _, _, term] =
  genDecode l term (MFun 3)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun4")) [_, _, _, _, term] =
  genDecode l term (MFun 4)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun5")) [_, _, _, _, _, term] =
  genDecode l term (MFun 5)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferNew")) [size] =
  pure $ EBufferNew l size
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetByte")) [bin, loc, value] =
  pure $ EBufferSetByte l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetByte")) [bin, loc] =
  pure $ EBufferGetByte l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetInt")) [bin, loc, value] =
  pure $ EBufferSetInt l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetInt")) [bin, loc] =
  pure $ EBufferGetInt l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetDouble")) [bin, loc, value] =
  pure $ EBufferSetDouble l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetDouble")) [bin, loc] =
  pure $ EBufferGetDouble l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetString")) [bin, loc, value] =
  pure $ EBufferSetString l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetString")) [bin, loc, len] =
  pure $ EBufferGetString l bin loc len
-- genExtPrim namespaceInfo l name args =
--   throw (InternalError ("Badly formed external primitive " ++ show name))
genExtPrim namespaceInfo l name args =
  pure $ genThrow l ("Error: Badly formed external primitive " ++ show name) -- TODO: Should fail at compile-time instead


-- CODE GENERATION

mutual
  export
  genNmExp : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> NameMap LocalVar -> NamedCExp -> Core ErlExpr
  genNmExp namespaceInfo vs (NmLocal fc name) = do
    let l = genFC fc
    let Just var = lookup name vs
      | Nothing => throw (InternalError ("Missing variable name: " ++ show name))
    pure $ ELocal l var
  genNmExp namespaceInfo vs (NmRef fc name) = do
    let l = genFC fc
    pure $ genRef namespaceInfo l name
  genNmExp namespaceInfo vs (NmLam fc x body) = do
    let l = genFC fc
    (vs', vars) <- addLocalVars [x] vs
    body' <- genNmExp namespaceInfo vs' body
    pure $ ELam l vars body'
  genNmExp namespaceInfo vs (NmLet fc x val body) = do
    let l = genFC fc
    val' <- genNmExp namespaceInfo vs val
    (vs', vars) <- addLocalVars [x] vs
    body' <- genNmExp namespaceInfo vs' body
    pure $ EApp l (ELam l vars body') [val']
  genNmExp namespaceInfo vs (NmApp fc x args) = do
    let l = genFC fc
    pure $ EApp l !(genNmExp namespaceInfo vs x) !(traverse (genNmExp namespaceInfo vs) args)
  genNmExp namespaceInfo vs (NmCon fc name tag args) = do
    let l = genFC fc
    genCon namespaceInfo l name !(traverse (genNmExp namespaceInfo vs) args)
  genNmExp namespaceInfo vs (NmOp fc op args) = do
    let l = genFC fc
    genOp l op !(traverseVect namespaceInfo vs args)
  genNmExp namespaceInfo vs (NmExtPrim fc name args) = do
    let l = genFC fc
    genExtPrim namespaceInfo l name !(traverse (genNmExp namespaceInfo vs) args)
  genNmExp namespaceInfo vs (NmForce fc t) = do
    let l = genFC fc
    pure $ EApp l !(genNmExp namespaceInfo vs t) []
  genNmExp namespaceInfo vs (NmDelay fc t) = do
    let l = genFC fc
    pure $ ELam l [] !(genNmExp namespaceInfo vs t)
  genNmExp namespaceInfo vs (NmConCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genNmExp namespaceInfo vs sc
    alts' <- traverse (genConAlt namespaceInfo vs l) alts
    def' <- case def of
          Just defExpr => genNmExp namespaceInfo vs defExpr
          Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EMatcherCase l sc' alts' def'
  genNmExp namespaceInfo vs (NmConstCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genNmExp namespaceInfo vs sc
    let isMatchingOnString = case head' alts of
          Just (MkNConstAlt (Str _) _) => True
          _ => False
    let sc'' = if isMatchingOnString
          then genFunCall l "unicode" "characters_to_binary" [sc']
          else sc'
    alts' <- traverse (genConstAlt namespaceInfo vs) alts
    def' <- case def of
          Just defExpr => genNmExp namespaceInfo vs defExpr
          Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EConstCase l sc'' alts' def'
  genNmExp namespaceInfo vs (NmPrimVal fc c) = do
    let l = genFC fc
    pure $ EIdrisConstant l (genConstant c)
  genNmExp namespaceInfo vs (NmErased fc) = do
    let l = genFC fc
    pure $ genErased l
  genNmExp namespaceInfo vs (NmCrash fc msg) = do
    let l = genFC fc
    pure $ genThrow l msg

  traverseVect : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> NameMap LocalVar -> Vect n NamedCExp -> Core (Vect n ErlExpr)
  traverseVect namespaceInfo vs [] = pure []
  traverseVect namespaceInfo vs (arg :: args) = pure $ !(genNmExp namespaceInfo vs arg) :: !(traverseVect namespaceInfo vs args)

  genConAlt : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> NameMap LocalVar -> Line -> NamedConAlt -> Core ErlMatcher
  genConAlt namespaceInfo vs l (MkNConAlt name tag args body) = do
    (vs', vars) <- addLocalVars args vs
    readConAlt namespaceInfo l name vars !(genNmExp namespaceInfo vs' body)

  genConstAlt : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> NameMap LocalVar -> NamedConstAlt -> Core ErlConstAlt
  genConstAlt namespaceInfo vs (MkNConstAlt constant body) =
    pure $ MkConstAlt (genConstant constant) !(genNmExp namespaceInfo vs body)


-- DEFINITIIONS

export
genDef : NamespaceInfo -> Line -> Name -> NamedDef -> Core (Maybe ErlFunDecl)
genDef namespaceInfo l name (MkNmFun args body) = do
  lv <- newRef LV (initLocalVars "V")
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  (vs, vars) <- addLocalVars args empty
  let funDecl = MkFunDecl l Public fnName vars !(genNmExp namespaceInfo vs body)
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmError body) = do
  lv <- newRef LV (initLocalVars "V")
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  let funDecl = MkFunDecl l Private fnName [] !(genNmExp namespaceInfo empty body)
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmForeign cs args ret) = do
  lv <- newRef LV (initLocalVars "V")
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  vars <- newLocalVars (length args)
  let funDecl = MkFunDecl l Private fnName vars (genThrow l "Error: %foreign is unsupported") -- TODO: Should fail at compile-time instead
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmCon tag arity nt) =
  pure Nothing


-- EXPORTS

data InternalArity = Value | Arity Nat

internalArity : NamedCExp -> InternalArity
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETFun")) _ _) = Arity 1
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlFun0")) _ _) = Arity 0
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlFun1")) _ _) = Arity 1
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlFun2")) _ _) = Arity 2
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlFun3")) _ _) = Arity 3
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlFun4")) _ _) = Arity 4
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlFun5")) _ _) = Arity 5
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlIOFun0")) _ _) = Arity 0
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlIOFun1")) _ _) = Arity 1
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlIOFun2")) _ _) = Arity 2
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlIOFun3")) _ _) = Arity 3
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlIOFun4")) _ _) = Arity 4
internalArity (NmCon fc (NS ["Data", "Erlang"] (UN "ETErlIOFun5")) _ _) = Arity 5
internalArity _ = Value

externalArity : InternalArity -> Nat
externalArity Value = 0
externalArity (Arity arity) = arity

-- TODO: Do not require name of exported function to be a static string?
export
readExports : NamespaceInfo -> Line -> NamedCExp -> Core (List ErlFunDecl)
readExports namespaceInfo l (NmCon fc (NS ["IO", "Erlang"] (UN "Fun")) tag [exprTy, NmPrimVal _ (Str fnName), expr]) = do
  lv <- newRef LV (initLocalVars "V")
  body <- genNmExp namespaceInfo empty expr -- NOTE: Vars are not relevant to `body`
  let intArity = internalArity exprTy
  let extArity = externalArity intArity
  vars <- newLocalVars extArity
  let invokedBody =
      case intArity of
        Value => body
        Arity arity => EApp l body (genArgsToLocals l vars)
  let funDecl = MkFunDecl l Public fnName vars invokedBody
  pure $ [funDecl]
readExports namespaceInfo l (NmCon fc (NS ["IO", "Erlang"] (UN "Combine")) tag [exports1, exports2]) =
  pure $ !(readExports namespaceInfo l exports1) ++ !(readExports namespaceInfo l exports2)
readExports namespaceInfo l tm =
  throw (InternalError ("Invalid export: " ++ show tm))
