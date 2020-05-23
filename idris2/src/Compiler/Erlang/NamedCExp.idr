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
import Data.Stream
import Data.Vect

%default covering


-- VARS (Temporary)

genLocalVar : Name -> ErlName
genLocalVar n = MkVar ("V" ++ genName n)


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

genOp : Line -> PrimFn arity -> Vect arity ErlExpr -> ErlExpr
genOp l (Add IntType) [x, y] = genIntAdd l 63 x y
genOp l (Sub IntType) [x, y] = genIntSub l 63 x y
genOp l (Mul IntType) [x, y] = genIntMult l 63 x y
genOp l (Div IntType) [x, y] = genIntDiv l 63 x y
genOp l (Add ty) [x, y] = EOp l "+" x y
genOp l (Sub ty) [x, y] = EOp l "-" x y
genOp l (Mul ty) [x, y] = EOp l "*" x y
genOp l (Div IntegerType) [x, y] = EOp l "div" x y -- NOTE: Is allowed to be partial
genOp l (Div ty) [x, y] = EOp l "/" x y -- NOTE: Is allowed to be partial
genOp l (Mod ty) [x, y] = EOp l "rem" x y -- NOTE: Is allowed to be partial
genOp l (Neg ty) [x] = genFunCall l "erlang" "-" [x]
genOp l (ShiftL ty) [x, y] = EOp l "bsl" x y
genOp l (ShiftR ty) [x, y] = EOp l "bsr" x y
genOp l (BAnd ty) [x, y] = EOp l "band" x y
genOp l (BOr ty) [x, y] = EOp l "bor" x y
genOp l (BXOr ty) [x, y] = EOp l "bxor" x y
genOp l (LT StringType) [x, y] = genUnicodeStringLT l x y
genOp l (LTE StringType) [x, y] = genUnicodeStringLTE l x y
genOp l (EQ StringType) [x, y] = genUnicodeStringEQ l x y
genOp l (GTE StringType) [x, y] = genUnicodeStringGTE l x y
genOp l (GT StringType) [x, y] = genUnicodeStringGT l x y
genOp l (LT ty) [x, y] = genBoolToInt l (EOp l "<" x y)
genOp l (LTE ty) [x, y] = genBoolToInt l (EOp l "=<" x y)
genOp l (EQ ty) [x, y] = genBoolToInt l (EOp l "=:=" x y)
genOp l (GTE ty) [x, y] = genBoolToInt l (EOp l ">=" x y)
genOp l (GT ty) [x, y] = genBoolToInt l (EOp l ">" x y)
genOp l StrLength [str] = genUnicodeStringLength l str
genOp l StrHead [str] = genUnicodeStringHead l str
genOp l StrTail [str] = genUnicodeStringTail l str
genOp l StrIndex [str, index] = genUnicodeStringIndex l str index
genOp l StrCons [char, str] = genUnicodeStringCons l char str
genOp l StrAppend [str1, str2] = genUnicodeStringAppend l str1 str2
genOp l StrReverse [str] = genUnicodeStringReverse l str
genOp l StrSubstr [start, len, str] = genUnicodeStringSubstr l start len str

-- `e` is Euler's number, which approximates to: 2.718281828459045
genOp l DoubleExp [x] = genFunCall l "math" "pow" [EFloat l 2.718281828459045, x] -- Base is `e`
genOp l DoubleLog [x] = genFunCall l "math" "log" [x] -- Base is `e`
genOp l DoubleSin [x] = genFunCall l "math" "sin" [x]
genOp l DoubleCos [x] = genFunCall l "math" "cos" [x]
genOp l DoubleTan [x] = genFunCall l "math" "tan" [x]
genOp l DoubleASin [x] = genFunCall l "math" "asin" [x]
genOp l DoubleACos [x] = genFunCall l "math" "acos" [x]
genOp l DoubleATan [x] = genFunCall l "math" "atan" [x]
genOp l DoubleSqrt [x] = genFunCall l "math" "sqrt" [x]
genOp l DoubleFloor [x] = genFunCall l "erlang" "floor" [x]
genOp l DoubleCeiling [x] = genFunCall l "erlang" "ceil" [x]

genOp l (Cast IntegerType IntType) [x] = genIntegerToInt l x
genOp l (Cast IntegerType DoubleType) [x] = genIntegerToDouble l x
genOp l (Cast IntegerType StringType) [x] = genIntegerToString l x

genOp l (Cast IntType IntegerType) [x] = genIntToInteger l x
genOp l (Cast IntType DoubleType) [x] = genIntToDouble l x
genOp l (Cast IntType CharType) [x] = genIntToChar l x
genOp l (Cast IntType StringType) [x] = genIntToString l x

genOp l (Cast DoubleType IntegerType) [x] = genDoubleToInteger l x
genOp l (Cast DoubleType IntType) [x] = genDoubleToInt l x
genOp l (Cast DoubleType StringType) [x] = genDoubleToString l x

genOp l (Cast CharType IntegerType) [x] = genCharToInteger l x
genOp l (Cast CharType IntType) [x] = genCharToInt l x
genOp l (Cast CharType StringType) [x] = genCharToString l x

genOp l (Cast StringType IntegerType) [x] = genStringToInteger l x
genOp l (Cast StringType IntType) [x] = genStringToInt l x
genOp l (Cast StringType DoubleType) [x] = genStringToDouble l x

genOp l (Cast from to) [x] = genThrow l ("Invalid cast " ++ show from ++ "->" ++ show to)

genOp l BelieveMe [_, _, x] = x
genOp l Crash [_, msg] =
  let crashMsg = genFunCall l "unicode" "characters_to_list" [ECons l (ECharlist l "Crash: ") msg]
  in genFunCall l "erlang" "throw" [crashMsg]


-- DATA CONSTRUCTORS

genCon : NamespaceInfo -> Line -> Name -> List ErlExpr -> ErlExpr
-- List
genCon namespaceInfo l (NS ["Prelude"] (UN "Nil")) [] = ENil l
genCon namespaceInfo l (NS ["Prelude"] (UN "::")) [x, xs] = ECons l x xs
-- ErlAtom
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkAtom")) [x] =
  genUnsafeStringToAtom l x
-- ErlBinary
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkBinary")) [x] =
  genFunCall l "unicode" "characters_to_binary" [x]
-- ErlCharlist
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkCharlist")) [x] =
  genFunCall l "unicode" "characters_to_list" [x]
-- ErlNil
genCon namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "Nil")) [] = ENil l
-- ErlCons
genCon namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "::")) [x, y] = ECons l x y
-- ErlList
genCon namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "Nil")) [] = ENil l
genCon namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "::")) [x, xs] =  ECons l x xs
-- ErlTuple/A
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple0")) args = ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple1")) args = ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple2")) args = ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple3")) args = ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple4")) args = ETuple l args
genCon namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple5")) args = ETuple l args
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
  ECon l (constructorName name) args


-- DATA DECONSTRUCTORS

argsToErlMatchers : (args : List ErlName) -> ErlMatchers
argsToErlMatchers [] = []
argsToErlMatchers (x :: xs) = (::) {newVar=x} MAny (argsToErlMatchers xs)

readConAltFun : Line -> (arity : Nat) -> (funVar : ErlName) -> ErlExpr -> (transform : ErlExpr -> ErlExpr) -> ErlMatcher
readConAltFun l arity funVar body transform =
  -- TODO: Is it safe to use hard-coded variable names in this case?
  let tempVar = MkVar "TempVar"
      curriedFunMatcher = MTransform MAny tempVar (genCurry l arity transform (ELocal l tempVar))
  in MTransform curriedFunMatcher funVar body

readConAlt : NamespaceInfo -> Line -> Name -> (args : List ErlName) -> ErlExpr -> ErlMatcher
-- List
readConAlt namespaceInfo l (NS ["Prelude"] (UN "Nil")) [] body =
  let unusedVar = MkVar "_Unused"
  in MTransform MNil unusedVar body
readConAlt namespaceInfo l (NS ["Prelude"] (UN "::")) [xVar, xsVar] body =
  MCons MAny MAny xVar xsVar body
-- ErlAtom
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkAtom")) [xVar] body =
  -- TODO: Is it safe to use hard-coded variable names in this case?
  let tempVar = MkVar "TempVar"
      convertAtomMatcher = MTransform MAny tempVar (genAtomToString l (ELocal l tempVar))
  in MTransform convertAtomMatcher xVar body
-- ErlBinary
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkBinary")) [xVar] body =
  MTransform MAny xVar body
-- ErlCharlist
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkCharlist")) [xVar] body =
  MTransform MAny xVar body
-- ErlNil
readConAlt namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "Nil")) [] body =
  let unusedVar = MkVar "_Unused"
  in MTransform MNil unusedVar body
-- ErlCons
readConAlt namespaceInfo l (NS ["MaybeImproperList", "Data", "Erlang"] (UN "::")) [xVar, yVar] body =
  MCons MAny MAny xVar yVar body
-- ErlList
readConAlt namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "Nil")) [] body =
  let unusedVar = MkVar "_Unused"
  in MTransform MNil unusedVar body
readConAlt namespaceInfo l (NS ["ProperList", "Data", "Erlang"] (UN "::")) [xVar, xsVar] body =
  MCons MAny MAny xVar xsVar body
-- ErlTuple/A
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple0")) args body =
  MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple1")) args body =
  MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple2")) args body =
  MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple3")) args body =
  MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple4")) args body =
  MTuple (argsToErlMatchers args) body
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkTuple5")) args body =
  MTuple (argsToErlMatchers args) body
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
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun0")) [funVar] body =
  readConAltFun l 0 funVar body (genMkIO l)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun1")) [funVar] body =
  readConAltFun l 1 funVar body (genMkIO l)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun2")) [funVar] body =
  readConAltFun l 2 funVar body (genMkIO l)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun3")) [funVar] body =
  readConAltFun l 3 funVar body (genMkIO l)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun4")) [funVar] body =
  readConAltFun l 4 funVar body (genMkIO l)
readConAlt namespaceInfo l (NS ["Data", "Erlang"] (UN "MkIOFun5")) [funVar] body =
  readConAltFun l 5 funVar body (genMkIO l)
-- Default
readConAlt namespaceInfo l name args body =
  let conAtom = EAtom l (constructorName name)
      unusedVar = MkVar "_Unused"
  in MTuple ((::) {newVar=unusedVar} (MExact conAtom) (argsToErlMatchers args)) body


-- EXTERNAL PRIMITIVES

genDecode : Line -> ErlExpr -> ErlMatcher -> ErlExpr
genDecode l term matcher =
  -- TODO: Is it safe to use hard-coded variable names in this case?
  let tempVar = MkVar "TempVar"
  in EMatcherCase l term [MTransform matcher tempVar (genJust l (ELocal l tempVar))] (genNothing l)

genExtPrim : NamespaceInfo -> Line -> Name -> List ErlExpr -> Core ErlExpr
genExtPrim namespaceInfo l (NS _ (UN "prim__putStr")) [arg, world] = do
  let putStrCall = genUnicodePutStr l arg
  let retVal = genMkIORes l (genMkUnit l)
  pure $ genSequence l [putStrCall, retVal]
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
  let actionExpr = genUnsafePerformIO namespaceInfo l action
  pure $ genMkIORes l (genTryCatch l actionExpr)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlReceive")) [timeout, world] = do
  -- TODO: Is it safe to use hard-coded variable names in this case?
  let tempVar = MkVar "TempVar"
  let receive = EReceive l [MTransform MAny tempVar (genJust l (ELocal l tempVar))] timeout (genNothing l)
  pure $ genMkIORes l receive
genExtPrim namespaceInfo l (NS _ (UN "prim__erlModule")) [] =
  pure $ EAtom l (currentModuleName namespaceInfo)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlMatchExact")) [x, y] =
  pure $ genBoolToInt l (EOp l "=:=" x y)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeCodepoint")) [term] =
  pure $ genDecode l term MCodepoint
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeInteger")) [term] =
  pure $ genDecode l term MInteger
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeDouble")) [term] =
  pure $ genDecode l term MFloat
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeAtom")) [term] =
  pure $ genDecode l term MAtom
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeBinary")) [term] =
  pure $ genDecode l term MBinary
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodePid")) [term] =
  pure $ genDecode l term MPid
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeRef")) [term] =
  pure $ genDecode l term MRef
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodePort")) [term] =
  pure $ genDecode l term MPort
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeAnyMap")) [term] =
  pure $ genDecode l term MMap
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeAnyList")) [term] =
  pure $ genDecode l term MAnyList
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeNil")) [term] =
  pure $ genDecode l term MNil
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeCons")) [term] = do
  let hdVar = MkVar "Hd"
  let tlVar = MkVar "Tl"
  pure $ genDecode l term $ MCons MAny MAny hdVar tlVar (ECons l (ELocal l hdVar) (ELocal l tlVar))
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple0")) [term] =
  pure $ genDecode l term $ MTuple [] (ETuple l [])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple1")) [term] = do
  let x1Var = MkVar "X1"
  pure $ genDecode l term $ MTuple ((::) {newVar=x1Var} MAny Nil) (ETuple l [ELocal l x1Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple2")) [term] = do
  let x1Var = MkVar "X1"
  let x2Var = MkVar "X2"
  pure $ genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny Nil)) (ETuple l [ELocal l x1Var, ELocal l x2Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple3")) [term] = do
  let x1Var = MkVar "X1"
  let x2Var = MkVar "X2"
  let x3Var = MkVar "X3"
  pure $ genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny ((::) {newVar=x3Var} MAny Nil))) (ETuple l [ELocal l x1Var, ELocal l x2Var, ELocal l x3Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple4")) [term] = do
  let x1Var = MkVar "X1"
  let x2Var = MkVar "X2"
  let x3Var = MkVar "X3"
  let x4Var = MkVar "X4"
  pure $ genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny ((::) {newVar=x3Var} MAny ((::) {newVar=x4Var} MAny Nil)))) (ETuple l [ELocal l x1Var, ELocal l x2Var, ELocal l x3Var, ELocal l x4Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple5")) [term] = do
  let x1Var = MkVar "X1"
  let x2Var = MkVar "X2"
  let x3Var = MkVar "X3"
  let x4Var = MkVar "X4"
  let x5Var = MkVar "X5"
  pure $ genDecode l term $ MTuple ((::) {newVar=x1Var} MAny ((::) {newVar=x2Var} MAny ((::) {newVar=x3Var} MAny ((::) {newVar=x4Var} MAny ((::) {newVar=x5Var} MAny Nil))))) (ETuple l [ELocal l x1Var, ELocal l x2Var, ELocal l x3Var, ELocal l x4Var, ELocal l x5Var])
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun0")) [term] =
  pure $ genDecode l term (MFun 0)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun1")) [_, term] =
  pure $ genDecode l term (MFun 1)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun2")) [_, _, term] =
  pure $ genDecode l term (MFun 2)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun3")) [_, _, _, term] =
  pure $ genDecode l term (MFun 3)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun4")) [_, _, _, _, term] =
  pure $ genDecode l term (MFun 4)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun5")) [_, _, _, _, _, term] =
  pure $ genDecode l term (MFun 5)
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
  genNmExp : NamespaceInfo -> NamedCExp -> Core ErlExpr
  genNmExp namespaceInfo (NmLocal fc n) = do
    let l = genFC fc
    pure $ ELocal l (genLocalVar n)
  genNmExp namespaceInfo (NmRef fc name) = do
    let l = genFC fc
    pure $ genRef namespaceInfo l name
  genNmExp namespaceInfo (NmLam fc x body) = do
    let l = genFC fc
    body' <- genNmExp namespaceInfo body
    pure $ ELam l [genLocalVar x] body'
  genNmExp namespaceInfo (NmLet fc x val body) = do
    let l = genFC fc
    val' <- genNmExp namespaceInfo val
    body' <- genNmExp namespaceInfo body
    pure $ genLet l (genLocalVar x) val' body'
  genNmExp namespaceInfo (NmApp fc x args) = do
    let l = genFC fc
    pure $ EApp l !(genNmExp namespaceInfo x) !(traverse (genNmExp namespaceInfo) args)
  genNmExp namespaceInfo (NmCon fc name tag args) = do
    let l = genFC fc
    pure $ genCon namespaceInfo l name !(traverse (genNmExp namespaceInfo) args)
  genNmExp namespaceInfo (NmOp fc op args) = do
    let l = genFC fc
    pure $ genOp l op !(traverseVect namespaceInfo args)
  genNmExp namespaceInfo (NmExtPrim fc name args) = do
    let l = genFC fc
    genExtPrim namespaceInfo l name !(traverse (genNmExp namespaceInfo) args)
  genNmExp namespaceInfo (NmForce fc t) = do
    let l = genFC fc
    pure $ EApp l !(genNmExp namespaceInfo t) []
  genNmExp namespaceInfo (NmDelay fc t) = do
    let l = genFC fc
    pure $ ELam l [] !(genNmExp namespaceInfo t)
  genNmExp namespaceInfo (NmConCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genNmExp namespaceInfo sc
    alts' <- traverse (genConAlt namespaceInfo l) alts
    def' <- case def of
          Just defExpr => genNmExp namespaceInfo defExpr
          Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EMatcherCase l sc' alts' def'
  genNmExp namespaceInfo (NmConstCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genNmExp namespaceInfo sc
    let isMatchingOnString = case head' alts of
          Just (MkNConstAlt (Str _) _) => True
          _ => False
    let sc'' = if isMatchingOnString
          then genFunCall l "unicode" "characters_to_binary" [sc']
          else sc'
    alts' <- traverse (genConstAlt namespaceInfo) alts
    def' <- case def of
          Just defExpr => genNmExp namespaceInfo defExpr
          Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EConstCase l sc'' alts' def'
  genNmExp namespaceInfo (NmPrimVal fc c) = do
    let l = genFC fc
    pure $ EIdrisConstant l (genConstant c)
  genNmExp namespaceInfo (NmErased fc) = do
    let l = genFC fc
    pure $ genErased l
  genNmExp namespaceInfo (NmCrash fc msg) = do
    let l = genFC fc
    pure $ genThrow l msg

  traverseVect : NamespaceInfo -> Vect n NamedCExp -> Core (Vect n ErlExpr)
  traverseVect namespaceInfo [] = pure []
  traverseVect namespaceInfo (arg :: args) = pure $ !(genNmExp namespaceInfo arg) :: !(traverseVect namespaceInfo args)

  genConAlt : NamespaceInfo -> Line -> NamedConAlt -> Core ErlMatcher
  genConAlt namespaceInfo l (MkNConAlt name tag args body) =
    pure $ readConAlt namespaceInfo l name (map genLocalVar args) !(genNmExp namespaceInfo body)

  genConstAlt : NamespaceInfo -> NamedConstAlt -> Core ErlConstAlt
  genConstAlt namespaceInfo (MkNConstAlt constant body) =
    pure $ MkConstAlt (genConstant constant) !(genNmExp namespaceInfo body)


-- DEFINITIIONS

export
genDef : NamespaceInfo -> Line -> Name -> NamedDef -> Core (Maybe ErlFunDecl)
genDef namespaceInfo l name (MkNmFun args body) = do
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  let vars = map genLocalVar args
  let funDecl = MkFunDecl l Public fnName vars !(genNmExp namespaceInfo body)
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmError body) = do
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  let funDecl = MkFunDecl l Private fnName [] !(genNmExp namespaceInfo body)
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmForeign cs args ret) = do
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  let argNames = map (\i => MkVar ("X" ++ show i)) (natRange (length args))
  let funDecl = MkFunDecl l Private fnName argNames (genThrow l "Error: %foreign is unsupported") -- TODO: Should fail at compile-time instead
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
  let intArity = internalArity exprTy
  let extArity = externalArity intArity
  let args = map (\i => MkVar ("X" ++ show i)) (natRange extArity)
  body <- genNmExp namespaceInfo expr
  let invokedBody =
      case intArity of
        Value => body
        Arity arity => EApp l body (genArgsToLocals l args)
  let funDecl = MkFunDecl l Public fnName args invokedBody
  pure $ [funDecl]
readExports namespaceInfo l (NmCon fc (NS ["IO", "Erlang"] (UN "Combine")) tag [exports1, exports2]) =
  pure $ !(readExports namespaceInfo l exports1) ++ !(readExports namespaceInfo l exports2)
readExports namespaceInfo l tm =
  throw (InternalError ("Invalid export: " ++ show tm))
