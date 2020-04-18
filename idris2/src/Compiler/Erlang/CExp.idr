module Compiler.Erlang.CExp

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

genOp : Line -> PrimFn arity -> Vect arity (ErlExpr vars) -> ErlExpr vars
genOp l (Add IntType) [x, y] = genIntAdd l 63 x y
genOp l (Sub IntType) [x, y] = genIntSub l 63 x y
genOp l (Mul IntType) [x, y] = genIntMult l 63 x y
genOp l (Div IntType) [x, y] = genIntDiv l 63 x y
genOp l (Add ty) [x, y] = EOp l "+" x y
genOp l (Sub ty) [x, y] = EOp l "-" x y
genOp l (Mul ty) [x, y] = EOp l "*" x y
genOp l (Div IntegerType) [x, y] = EOp l "div" x y -- NOTE: Is allowed to be partial
genOp l (Div ty) [x, y] = EOp l "/" x y -- NOTE: Is allowed to be partial
genOp l (Mod ty) [x, y] = EOp l "rem" x y -- NOTE: Is allowed to be partial -- TODO: Can `x` and `y` be floating point? `rem` does not work on floating points
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
genOp l DoubleExp [x] = genFunCall l "math" "pow" [EFloat l 2.718281828459045, x] -- TODO: Hard-coded literal
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


-- DATA CONSTRUCTORS

genCon : NamespaceInfo -> Line -> Name -> List (ErlExpr vars) -> ErlExpr vars
-- Unit
genCon namespaceInfo l (NS ["Builtin"] (UN "MkUnit")) [] = genMkUnit l
-- Bool
genCon namespaceInfo l (NS ["Prelude"] (UN "True")) [] = EAtom l "true"
genCon namespaceInfo l (NS ["Prelude"] (UN "False")) [] = EAtom l "false"
-- List
genCon namespaceInfo l (NS ["Prelude"] (UN "Nil")) [_] = ENil l
genCon namespaceInfo l (NS ["Prelude"] (UN "::")) [_, x, xs] = ECons l x xs
-- Raw
genCon namespaceInfo l (NS ["Idris", "Erlang"] (UN "MkRaw")) [_, x] = x
-- ErlAtom
genCon namespaceInfo l (NS ["Atoms", "Erlang"] (UN "MkErlAtom")) [x] =
  genUnsafeStringToAtom l x
-- ErlBinary
genCon namespaceInfo l (NS ["Strings", "Erlang"] (UN "MkErlBinary")) [x] =
  genFunCall l "unicode" "characters_to_binary" [x]
-- ErlCharlist
genCon namespaceInfo l (NS ["Strings", "Erlang"] (UN "MkErlCharlist")) [x] =
  genFunCall l "unicode" "characters_to_list" [x]
-- ErlNil
genCon namespaceInfo l (NS ["MaybeImproperLists", "Erlang"] (UN "Nil")) [] = ENil l
-- ErlCons
genCon namespaceInfo l (NS ["MaybeImproperLists", "Erlang"] (UN "::")) [_, _, x, y] = ECons l x y
-- ErlList
genCon namespaceInfo l (NS ["ProperLists", "Erlang"] (UN "Nil")) [] = ENil l
genCon namespaceInfo l (NS ["ProperLists", "Erlang"] (UN "::")) [_, _, x, xs] =  ECons l x xs
-- ErlTuple/A
genCon namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple0")) args = ETuple l (drop 0 args)
genCon namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple1")) args = ETuple l (drop 1 args)
genCon namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple2")) args = ETuple l (drop 2 args)
genCon namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple3")) args = ETuple l (drop 3 args)
genCon namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple4")) args = ETuple l (drop 4 args)
genCon namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple5")) args = ETuple l (drop 5 args)
-- ErlFun/A
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun0")) [_, fun] = genUncurry l 0 id fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun1")) [_, _, fun] = genUncurry l 1 id fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun2")) [_, _, _, fun] = genUncurry l 2 id fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun3")) [_, _, _, _, fun] = genUncurry l 3 id fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun4")) [_, _, _, _, _, fun] = genUncurry l 4 id fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun5")) [_, _, _, _, _, _, fun] = genUncurry l 5 id fun
-- ErlIO/A
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO0")) [_, fun] = genUncurry l 0 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO1")) [_, _, fun] = genUncurry l 1 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO2")) [_, _, _, fun] = genUncurry l 2 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO3")) [_, _, _, _, fun] = genUncurry l 3 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO4")) [_, _, _, _, _, fun] = genUncurry l 4 (genUnsafePerformIO namespaceInfo l) fun
genCon namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO5")) [_, _, _, _, _, _, fun] = genUncurry l 5 (genUnsafePerformIO namespaceInfo l) fun
-- Default
genCon namespaceInfo l name args =
  ECon l (constructorName namespaceInfo name) args


-- DATA DECONSTRUCTORS

argsToErlMatchers : (args : List Name) -> ErlMatchers vars args
argsToErlMatchers [] = []
argsToErlMatchers (x :: xs) = (::) {newVar=x} MAny (argsToErlMatchers xs)

supplyErasedArgs : Line -> (args : List Name) -> ErlExpr (args ++ vars) -> ErlExpr vars
supplyErasedArgs l [] body = body
supplyErasedArgs l (argVar :: argVars) body =
  supplyErasedArgs l argVars (genLet l argVar (genErased l) body)

readConAltTuple : Line -> (erasedArgs : List Name) -> (matcherArgs : List Name) -> ErlExpr (erasedArgs ++ matcherArgs ++ vars) -> ErlMatcher vars
readConAltTuple l erasedArgs matcherArgs body =
  MTuple (argsToErlMatchers matcherArgs) (supplyErasedArgs l erasedArgs body)

readConAltFun : Line -> (arity : Nat) -> (erasedArgs : List Name) -> (funVar : Name) -> ErlExpr (erasedArgs ++ (funVar :: vars)) -> (transform : {vars : _} -> ErlExpr vars -> ErlExpr vars) -> ErlMatcher vars
readConAltFun l arity erasedArgs funVar body transform =
  let tempVar = MN "" 0
      curriedFunMatcher = MTransform MAny tempVar (genCurry l arity transform (ELocal l First))
  in MTransform curriedFunMatcher funVar (supplyErasedArgs l erasedArgs body)

readConAlt : NamespaceInfo -> Line -> Name -> (args : List Name) -> ErlExpr (args ++ vars) -> ErlMatcher vars
-- Unit
readConAlt namespaceInfo l (NS ["Builtin"] (UN "MkUnit")) [] body =
  MTuple [] body
-- Bool
readConAlt namespaceInfo l (NS ["Prelude"] (UN "True")) [] body =
  let unusedVar = MN "" 0
  in MTransform (MExact (EAtom l "true")) unusedVar (weaken body)
readConAlt namespaceInfo l (NS ["Prelude"] (UN "False")) [] body =
  let unusedVar = MN "" 0
  in MTransform (MExact (EAtom l "false")) unusedVar (weaken body)
-- List
readConAlt namespaceInfo l (NS ["Prelude"] (UN "Nil")) [ty1Var] body =
  let unusedVar = MN "" 0
  in MTransform MNil unusedVar (weaken (supplyErasedArgs l [ty1Var] body))
readConAlt namespaceInfo l (NS ["Prelude"] (UN "::")) [ty1Var, xVar, xsVar] body =
  MCons MAny MAny xVar xsVar (supplyErasedArgs l [ty1Var] body)
-- Raw
readConAlt namespaceInfo l (NS ["Idris", "Erlang"] (UN "MkRaw")) [ty1Var, xVar] body =
  MTransform MAny xVar (supplyErasedArgs l [ty1Var] body)
-- ErlAtom
readConAlt namespaceInfo l (NS ["Atoms", "Erlang"] (UN "MkErlAtom")) [xVar] body =
  let tempVar = MN "" 0
      convertAtomMatcher = MTransform MAny tempVar (genAtomToString l (ELocal l First))
  in MTransform convertAtomMatcher xVar body
-- ErlBinary
readConAlt namespaceInfo l (NS ["Strings", "Erlang"] (UN "MkErlBinary")) [xVar] body =
  MTransform MAny xVar body
-- ErlCharlist
readConAlt namespaceInfo l (NS ["Strings", "Erlang"] (UN "MkErlCharlist")) [xVar] body =
  MTransform MAny xVar body
-- ErlNil
readConAlt namespaceInfo l (NS ["MaybeImproperLists", "Erlang"] (UN "Nil")) [] body =
  let unusedVar = MN "" 0
  in MTransform MNil unusedVar (weaken body)
-- ErlCons
readConAlt namespaceInfo l (NS ["MaybeImproperLists", "Erlang"] (UN "::")) [ty1Var, ty2Var, xVar, yVar] body =
  MCons MAny MAny xVar yVar (supplyErasedArgs l [ty1Var, ty2Var] body)
-- ErlList
readConAlt namespaceInfo l (NS ["ProperLists", "Erlang"] (UN "Nil")) [] body =
  let unusedVar = MN "" 0
  in MTransform MNil unusedVar (weaken body)
readConAlt namespaceInfo l (NS ["ProperLists", "Erlang"] (UN "::")) [ty1Var, ty2Var, xVar, xsVar] body =
  MCons MAny MAny xVar xsVar (supplyErasedArgs l [ty1Var, ty2Var] body)
-- ErlTuple/A
readConAlt namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple0")) [] body =
  readConAltTuple l [] [] body
readConAlt namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple1")) [ty1Var, x1Var] body =
  readConAltTuple l [ty1Var] [x1Var] body
readConAlt namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple2")) [ty1Var, ty2Var, x1Var, x2Var] body =
  readConAltTuple l [ty1Var, ty2Var] [x1Var, x2Var] body
readConAlt namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple3")) [ty1Var, ty2Var, ty3Var, x1Var, x2Var, x3Var] body =
  readConAltTuple l [ty1Var, ty2Var, ty3Var] [x1Var, x2Var, x3Var] body
readConAlt namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple4")) [ty1Var, ty2Var, ty3Var, ty4Var, x1Var, x2Var, x3Var, x4Var] body =
  readConAltTuple l [ty1Var, ty2Var, ty3Var, ty4Var] [x1Var, x2Var, x3Var, x4Var] body
readConAlt namespaceInfo l (NS ["Tuples", "Erlang"] (UN "MkErlTuple5")) [ty1Var, ty2Var, ty3Var, ty4Var, ty5Var, x1Var, x2Var, x3Var, x4Var, x5Var] body =
  readConAltTuple l [ty1Var, ty2Var, ty3Var, ty4Var, ty5Var] [x1Var, x2Var, x3Var, x4Var, x5Var] body
-- ErlFun/A
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun0")) [retVar, funVar] body =
  readConAltFun l 0 [retVar] funVar body id
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun1")) [retVar, ty1Var, funVar] body =
  readConAltFun l 1 [retVar, ty1Var] funVar body id
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun2")) [retVar, ty1Var, ty2Var, funVar] body =
  readConAltFun l 2 [retVar, ty1Var, ty2Var] funVar body id
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun3")) [retVar, ty1Var, ty2Var, ty3Var, funVar] body =
  readConAltFun l 3 [retVar, ty1Var, ty2Var, ty3Var] funVar body id
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun4")) [retVar, ty1Var, ty2Var, ty3Var, ty4Var, funVar] body =
  readConAltFun l 4 [retVar, ty1Var, ty2Var, ty3Var, ty4Var] funVar body id
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlFun5")) [retVar, ty1Var, ty2Var, ty3Var, ty4Var, ty5Var, funVar] body =
  readConAltFun l 5 [retVar, ty1Var, ty2Var, ty3Var, ty4Var, ty5Var] funVar body id
-- ErlIO/A
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO0")) [retVar, funVar] body =
  readConAltFun l 0 [retVar] funVar body (genMkIO namespaceInfo l)
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO1")) [retVar, ty1Var, funVar] body =
  readConAltFun l 1 [retVar, ty1Var] funVar body (genMkIO namespaceInfo l)
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO2")) [retVar, ty1Var, ty2Var, funVar] body =
  readConAltFun l 2 [retVar, ty1Var, ty2Var] funVar body (genMkIO namespaceInfo l)
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO3")) [retVar, ty1Var, ty2Var, ty3Var, funVar] body =
  readConAltFun l 3 [retVar, ty1Var, ty2Var, ty3Var] funVar body (genMkIO namespaceInfo l)
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO4")) [retVar, ty1Var, ty2Var, ty3Var, ty4Var, funVar] body =
  readConAltFun l 4 [retVar, ty1Var, ty2Var, ty3Var, ty4Var] funVar body (genMkIO namespaceInfo l)
readConAlt namespaceInfo l (NS ["Functions", "Erlang"] (UN "MkErlIO5")) [retVar, ty1Var, ty2Var, ty3Var, ty4Var, ty5Var, funVar] body =
  readConAltFun l 5 [retVar, ty1Var, ty2Var, ty3Var, ty4Var, ty5Var] funVar body (genMkIO namespaceInfo l)
-- Default
readConAlt namespaceInfo l name args body =
  let conAtom = EAtom l (constructorName namespaceInfo name)
      unusedVar = MN "" 0
  in MTuple ((::) {newVar=unusedVar} (MExact conAtom) (argsToErlMatchers args)) (weaken body)


-- EXTERNAL PRIMITIVES

data ExtPrim
  = PutStr | GetStr
  | VoidElim
  | ErlUnsafeCall | ErlTryCatch | ErlCase | ErlReceive | ErlModule
  | ErlBufferNew
  | ErlBufferSetByte | ErlBufferGetByte | ErlBufferSetInt | ErlBufferGetInt
  | ErlBufferSetDouble | ErlBufferGetDouble | ErlBufferSetString | ErlBufferGetString

Show ExtPrim where
  show PutStr = "PutStr"
  show GetStr = "GetStr"
  show VoidElim = "VoidElim"
  show ErlUnsafeCall = "ErlUnsafeCall"
  show ErlTryCatch = "ErlTryCatch"
  show ErlCase = "ErlCase"
  show ErlReceive = "ErlReceive"
  show ErlModule = "ErlModule"
  show ErlBufferNew = "ErlBufferNew"
  show ErlBufferSetByte = "ErlBufferSetByte"
  show ErlBufferGetByte = "ErlBufferGetByte"
  show ErlBufferSetInt = "ErlBufferSetInt"
  show ErlBufferGetInt = "ErlBufferGetInt"
  show ErlBufferSetDouble = "ErlBufferSetDouble"
  show ErlBufferGetDouble = "ErlBufferGetDouble"
  show ErlBufferSetString = "ErlBufferSetString"
  show ErlBufferGetString = "ErlBufferGetString"

toPrim : Name -> Maybe ExtPrim
toPrim (NS _ n) = cond [
  (n == UN "prim__putStr", Just PutStr),
  (n == UN "prim__getStr", Just GetStr),
  (n == UN "void", Just VoidElim),
  (n == UN "prim__erlUnsafeCall", Just ErlUnsafeCall),
  (n == UN "prim__erlTryCatch", Just ErlTryCatch),
  (n == UN "prim__erlCase", Just ErlCase),
  (n == UN "prim__erlReceive", Just ErlReceive),
  (n == UN "prim__erlModule", Just ErlModule),
  (n == UN "prim__erlBufferNew", Just ErlBufferNew),
  (n == UN "prim__erlBufferSetByte", Just ErlBufferSetByte),
  (n == UN "prim__erlBufferGetByte", Just ErlBufferGetByte),
  (n == UN "prim__erlBufferSetInt", Just ErlBufferSetInt),
  (n == UN "prim__erlBufferGetInt", Just ErlBufferGetInt),
  (n == UN "prim__erlBufferSetDouble", Just ErlBufferSetDouble),
  (n == UN "prim__erlBufferGetDouble", Just ErlBufferGetDouble),
  (n == UN "prim__erlBufferSetString", Just ErlBufferSetString),
  (n == UN "prim__erlBufferGetString", Just ErlBufferGetString)
  ]
  Nothing
toPrim pn = Nothing

genExtPrim : NamespaceInfo -> Line -> ExtPrim -> List (ErlExpr vars) -> Core (ErlExpr vars)
genExtPrim namespaceInfo l PutStr [arg, world] = do
  let putStrCall = genUnicodePutStr l arg
  let retVal = genMkIORes namespaceInfo l (genMkUnit l)
  pure $ genSequence l [putStrCall, retVal]
genExtPrim namespaceInfo l GetStr [world] = do
  let getStrCall = genUnicodeGetStr l (ECharlist l "")
  pure $ genMkIORes namespaceInfo l getStrCall
genExtPrim namespaceInfo l VoidElim [_, _] =
  pure $ genThrow l "Error: Executed 'void'"
genExtPrim namespaceInfo l ErlUnsafeCall [_, ret, modName, fnName, args, world] = do
  let erlCall = genFunCall l "erlang" "apply" [genUnsafeStringToAtom l modName, genUnsafeStringToAtom l fnName, args]
  pure $ genMkIORes namespaceInfo l erlCall
genExtPrim namespaceInfo l ErlTryCatch [_, action, world] = do
  let actionExpr = genUnsafePerformIO namespaceInfo l action
  pure $ genMkIORes namespaceInfo l (genTryCatch namespaceInfo l actionExpr)
genExtPrim namespaceInfo l ErlModule [] = do
  let moduleName = moduleNameFromNS (prefix namespaceInfo) (fromMaybe [] (inNS namespaceInfo)) -- TODO: Remove fromMaybe
  pure $ EAtom l moduleName
genExtPrim namespaceInfo l ErlBufferNew [size] =
  pure $ EBufferNew l size
genExtPrim namespaceInfo l ErlBufferSetByte [bin, loc, value] =
  pure $ EBufferSetByte l bin loc value
genExtPrim namespaceInfo l ErlBufferGetByte [bin, loc] =
  pure $ EBufferGetByte l bin loc
genExtPrim namespaceInfo l ErlBufferSetInt [bin, loc, value] =
  pure $ EBufferSetInt l bin loc value
genExtPrim namespaceInfo l ErlBufferGetInt [bin, loc] =
  pure $ EBufferGetInt l bin loc
genExtPrim namespaceInfo l ErlBufferSetDouble [bin, loc, value] =
  pure $ EBufferSetDouble l bin loc value
genExtPrim namespaceInfo l ErlBufferGetDouble [bin, loc] =
  pure $ EBufferGetDouble l bin loc
genExtPrim namespaceInfo l ErlBufferSetString [bin, loc, value] =
  pure $ EBufferSetString l bin loc value
genExtPrim namespaceInfo l ErlBufferGetString [bin, loc, len] =
  pure $ EBufferGetString l bin loc len
-- genExtPrim namespaceInfo l prim args =
--   throw (InternalError ("Badly formed external primitive " ++ show prim)) -- TODO: Is this preferable to run-time error?
genExtPrim namespaceInfo l prim args =
  pure $ genThrow l ("Error: Badly formed external primitive " ++ show prim)


-- CODE GENERATION

mutual
  export
  genCExp : NamespaceInfo -> EVars vars -> CExp vars -> Core (ErlExpr vars)
  genCExp namespaceInfo vs (CLocal fc prf) = do
    let l = genFC fc
    pure $ ELocal l prf
  genCExp namespaceInfo vs (CRef fc name) = do
    let l = genFC fc
    pure $ genRef namespaceInfo l name
  genCExp namespaceInfo vs (CLam fc x body) = do
    let l = genFC fc
    let (vs', _) = extendEVars [x] vs
    body' <- genCExp namespaceInfo vs' body
    pure $ ELam l [x] body'
  genCExp namespaceInfo vs (CLet fc x val body) = do
    let l = genFC fc
    let (vs', _) = extendEVars [x] vs
    val' <- genCExp namespaceInfo vs val
    body' <- genCExp namespaceInfo vs' body
    pure $ genLet l x val' body'
  genCExp namespaceInfo vs (CApp fc x args) = do
    let l = genFC fc
    pure $ EApp l !(genCExp namespaceInfo vs x) !(traverse (genCExp namespaceInfo vs) args)
  genCExp namespaceInfo vs (CCon fc name tag args) = do
    let l = genFC fc
    pure $ genCon namespaceInfo l name !(traverse (genCExp namespaceInfo vs) args)
  genCExp namespaceInfo vs (COp fc op args) = do
    let l = genFC fc
    pure $ genOp l op !(traverseVect namespaceInfo vs args)
  genCExp namespaceInfo vs (CExtPrim fc p args) = do
    let l = genFC fc
    let Just extPrim = toPrim p
      | Nothing => pure (genThrow l ("Can't compile unknown external primitive " ++ show p))
      -- TODO: throw (InternalError ("Can't compile unknown external primitive " ++ show p))
    case extPrim of
      ErlCase => genErlCase namespaceInfo l vs args
      ErlReceive => genErlReceive namespaceInfo l vs args
      _ => genExtPrim namespaceInfo l extPrim !(traverse (genCExp namespaceInfo vs) args)
  genCExp namespaceInfo vs (CForce fc t) = do
    let l = genFC fc
    pure $ EApp l !(genCExp namespaceInfo vs t) []
  genCExp namespaceInfo vs (CDelay fc t) = do
    let l = genFC fc
    pure $ ELam l [] !(genCExp namespaceInfo vs t)
  genCExp namespaceInfo vs (CConCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genCExp namespaceInfo vs sc
    alts' <- traverse (genConAlt namespaceInfo l vs) alts
    def' <- case def of
        Just defExpr => genCExp namespaceInfo vs defExpr
        Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EMatcherCase l sc' alts' def'
  genCExp namespaceInfo vs (CConstCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genCExp namespaceInfo vs sc
    let isMatchingOnString = case head' alts of
        Just (MkConstAlt (Str _) _) => True
        _ => False
    let sc'' = if isMatchingOnString
        then genFunCall l "unicode" "characters_to_binary" [sc']
        else sc'
    alts' <- traverse (genConstAlt namespaceInfo vs) alts
    def' <- case def of
        Just defExpr => genCExp namespaceInfo vs defExpr
        Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EConstCase l sc'' alts' def'
  genCExp namespaceInfo vs (CPrimVal fc c) = do
    let l = genFC fc
    pure $ EIdrisConstant l (genConstant c)
  genCExp namespaceInfo vs (CErased fc) = do
    let l = genFC fc
    pure $ genErased l
  genCExp namespaceInfo vs (CCrash fc msg) = do
    let l = genFC fc
    pure $ genThrow l msg

  traverseVect : NamespaceInfo -> EVars vars -> Vect n (CExp vars) -> Core (Vect n (ErlExpr vars))
  traverseVect namespaceInfo vs [] = pure []
  traverseVect namespaceInfo vs (arg :: args) = pure $ !(genCExp namespaceInfo vs arg) :: !(traverseVect namespaceInfo vs args)

  genConAlt : NamespaceInfo -> Line -> EVars vars -> CConAlt vars -> Core (ErlMatcher vars)
  genConAlt namespaceInfo l vs (MkConAlt name tag args body) = do
    let (vs', _) = extendEVars args vs
    pure $ readConAlt namespaceInfo l name args !(genCExp namespaceInfo vs' body)

  genConstAlt : NamespaceInfo -> EVars vars -> CConstAlt vars -> Core (ErlConstAlt vars)
  genConstAlt namespaceInfo vs (MkConstAlt constant body) = do
    pure $ MkConstAlt (genConstant constant) !(genCExp namespaceInfo vs body)

  genErlCase : NamespaceInfo -> Line -> EVars vars -> List (CExp vars) -> Core (ErlExpr vars)
  genErlCase namespaceInfo l vs [_, def, matchersCExp@(CCon _ _ _ _), sc] = do
    clauses <- readErlMatcherClauses namespaceInfo l vs matchersCExp
    pure $ EMatcherCase l !(genCExp namespaceInfo vs sc) clauses !(genCExp namespaceInfo vs def)
  genErlCase namespaceInfo l vs args =
    pure $ genThrow l "Error: Badly formed erlCase"

  genErlReceive : NamespaceInfo -> Line -> EVars vars -> List (CExp vars) -> Core (ErlExpr vars)
  genErlReceive namespaceInfo l vs [_, timeout, def, matchersCExp@(CCon _ _ _ _), world] = do
    clauses <- readErlMatcherClauses namespaceInfo l vs matchersCExp
    let receive = EReceive l clauses !(genCExp namespaceInfo vs timeout) !(genCExp namespaceInfo vs def)
    pure $ genMkIORes namespaceInfo l receive
  genErlReceive namespaceInfo l vs args =
    pure $ genThrow l "Error: Badly formed erlReceive"

  readErlMatcherClauses : NamespaceInfo -> Line -> EVars vars -> CExp vars -> Core (List (ErlMatcher vars))
  readErlMatcherClauses namespaceInfo l vs (CCon fc (NS ["Prelude"] (UN "Nil")) tag [_]) = pure []
  readErlMatcherClauses namespaceInfo l vs (CCon fc (NS ["Prelude"] (UN "::")) tag [_, x, xs]) = do
    first <- readErlMatcher namespaceInfo l vs x
    rest <- readErlMatcherClauses namespaceInfo l vs xs
    pure (first :: rest)
  readErlMatcherClauses namespaceInfo l vs args =
    throw (InternalError ("Expected a list of ErlMatcher clauses " ++ show args))

  readErlMatcher : NamespaceInfo -> Line -> EVars vars -> CExp vars -> Core (ErlMatcher vars)
  -- MExact
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MExact")) tag [_, _, matchValue]) = do
    let unusedVar = MN "" 0
    pure $ MTransform (MExact !(genCExp namespaceInfo vs matchValue)) unusedVar (genMkUnit l)
  -- MAny
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAny")) tag []) = do
    pure $ MAny
  -- Simple guards
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MCodepoint")) tag []) = pure $ MCodepoint
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MInteger")) tag []) = pure $ MInteger
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MDouble")) tag []) = pure $ MFloat
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAtom")) tag []) = pure $ MAtom
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MBinary")) tag []) = pure $ MBinary
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMap")) tag []) = pure $ MMap
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MPid")) tag []) = pure $ MPid
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MRef")) tag []) = pure $ MRef
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MPort")) tag []) = pure $ MPort
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAnyList")) tag []) = pure $ MAnyList
  -- MNil
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MNil")) tag []) = do
    let unusedVar = MN "" 0
    pure $ MTransform MNil unusedVar (genMkUnit l)
  -- MCons
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MCons")) tag [_, _, _, headMatcher, tailMatcher, transformFun]) = do
    headErlMatcher <- readErlMatcher namespaceInfo l vs headMatcher
    tailErlMatcher <- readErlMatcher namespaceInfo l vs tailMatcher
    fun <- genCExp namespaceInfo vs transformFun
    let headVar = MN "" 0
    let tailVar = MN "" 0
    pure $ MCons headErlMatcher tailErlMatcher headVar tailVar (genAppCurriedFun l (weakenNs [headVar, tailVar] fun) [ELocal l First, ELocal l (Later First)])
  -- MList
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MList")) tag [_, _, xs, transformFun]) = do
    (args ** erlMatchers) <- readErlMatchers namespaceInfo l vs xs
    fun <- genCExp namespaceInfo vs transformFun
    pure $ MList erlMatchers (genAppCurriedFun l (weakenNs args fun) (genArgsToLocals l args))
  -- MTuple
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MTuple")) tag [_, _, xs, transformFun]) = do
    (args ** erlMatchers) <- readErlMatchers namespaceInfo l vs xs
    fun <- genCExp namespaceInfo vs transformFun
    pure $ MTuple erlMatchers (genAppCurriedFun l (weakenNs args fun) (genArgsToLocals l args))
  -- MMapSubset
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMapSubset")) tag [_, _, xs, transformFun]) = do
    (args ** erlMapEntryMatchers) <- readErlMapEntryMatchers namespaceInfo l vs xs
    fun <- genCExp namespaceInfo vs transformFun
    pure $ MMapSubset erlMapEntryMatchers (genAppCurriedFun l (weakenNs args fun) (genArgsToLocals l args))
  -- MIO
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MIO")) tag [types]) = do
    arity <- readListLength types
    let resultVar = MN "" 0
    pure $ MTransform (MFun arity) resultVar (genCurry l arity (genMkIO namespaceInfo l . genTryCatch namespaceInfo l) (ELocal l First))
  -- MTransform
  readErlMatcher namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MTransform")) tag [_, _, matcher, transformFun]) = do
    erlMatcher <- readErlMatcher namespaceInfo l vs matcher
    let resultVar = MN "" 0
    pure $ MTransform erlMatcher resultVar (EApp l (weaken !(genCExp namespaceInfo vs transformFun)) [ELocal 1 First])
  -- Other
  readErlMatcher namespaceInfo l vs matcher =
    throw (InternalError ("Badly formed clause " ++ show matcher))

  readErlMatchers : NamespaceInfo -> Line -> EVars vars -> CExp vars -> Core (args ** ErlMatchers vars args)
  readErlMatchers namespaceInfo l vs (CCon fc (NS ["ErlMatchers", "CaseExpr", "Erlang"] (UN "Nil")) tag []) =
    pure ([] ** [])
  readErlMatchers namespaceInfo l vs (CCon fc (NS ["ErlMatchers", "CaseExpr", "Erlang"] (UN "::")) tag [_, _, x, xs]) = do
    first <- readErlMatcher namespaceInfo l vs x
    (args ** rest) <- readErlMatchers namespaceInfo l vs xs
    let newVar = MN "" 0
    pure ((newVar :: args) ** (::) {newVar} first rest)
  readErlMatchers namespaceInfo l vs args =
    throw (InternalError ("Expected ErlMatchers " ++ show args))

  readErlMapEntryMatchers : NamespaceInfo -> Line -> EVars vars -> CExp vars -> Core (args ** ErlMapEntryMatchers vars args)
  readErlMapEntryMatchers namespaceInfo l vs (CCon fc (NS ["ErlMapEntryMatchers", "CaseExpr", "Erlang"] (UN "Nil")) tag []) =
    pure ([] ** [])
  readErlMapEntryMatchers namespaceInfo l vs (CCon fc (NS ["ErlMapEntryMatchers", "CaseExpr", "Erlang"] (UN "::")) tag [_, _, x, xs]) = do
    mapEntry <- readErlMapEntry namespaceInfo l vs x
    (args ** rest) <- readErlMapEntryMatchers namespaceInfo l vs xs
    let newVar = MN "" 0
    pure ((newVar :: args) ** (::) {newVar} mapEntry rest)
  readErlMapEntryMatchers namespaceInfo l vs args =
    throw (InternalError ("Expected ErlMapEntryMatchers " ++ show args))

  readErlMapEntry : NamespaceInfo -> Line -> EVars vars -> CExp vars -> Core (ErlExpr vars, ErlMatcher vars)
  readErlMapEntry namespaceInfo l vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MkErlMapEntry")) tag [_, _, _, key, matcher]) = do
    keyExpr <- genCExp namespaceInfo vs key
    valueMatcher <- readErlMatcher namespaceInfo l vs matcher
    pure (keyExpr, valueMatcher)
  readErlMapEntry namespaceInfo l vs args =
    throw (InternalError ("Expected ErlMapEntry " ++ show args))

  readListLength : CExp vars -> Core Nat
  readListLength (CCon fc (NS ["Prelude"] (UN "Nil")) _ [_]) =
    pure 0
  readListLength (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = do
    tailLength <- readListLength xs
    pure (1 + tailLength)
  readListLength args =
    throw (InternalError ("Expected a list of types " ++ show args))


-- DEFINITIIONS

genDef : (prefix : String) -> Line -> Name -> CDef -> Core (Maybe (Namespace, ErlFunDecl))
genDef prefix l name (MkFun args body) = do
  let (vs, _) = initEVars args
  let ns = getNamespace name
  let (modName, fnName) = moduleNameFunctionName prefix name
  let namespaceInfo = MkNamespaceInfo prefix (Just ns)
  let funDecl = MkFunDecl l Public fnName args !(genCExp namespaceInfo vs body)
  pure $ Just (ns, funDecl)
genDef prefix l name (MkError body) = do
  let vs = fst (initEVars []) -- TODO: Workaround for `Trying to use linear name vs in non-linear context` in Idris 1
  let ns = getNamespace name
  let (modName, fnName) = moduleNameFunctionName prefix name
  let namespaceInfo = MkNamespaceInfo prefix (Just ns)
  let funDecl = MkFunDecl l Private fnName [] !(genCExp namespaceInfo vs body)
  pure $ Just (ns, funDecl)
genDef prefix l name (MkForeign _ _ _) =
  pure Nothing
genDef prefix l name (MkCon t a) =
  pure Nothing

getCompileExpr : {auto c : Ref Ctxt Defs} -> Name -> Core CDef
getCompileExpr name = do
  defs <- get Ctxt
  Just globalDef <- lookupCtxtExact name (gamma defs)
    | throw (InternalError ("Compiling undefined name " ++ show name))
  let Just expr = compexpr globalDef
    | throw (InternalError ("No compiled definition for " ++ show name))
  pure expr

export
genErlang : {auto c : Ref Ctxt Defs} -> (prefix : String) -> Line -> Name -> Core (Maybe (Namespace, ErlFunDecl))
genErlang prefix l name = do
  expr <- getCompileExpr name
  genDef prefix l name expr


-- EXPORT

data InternalArity = Value | Arity Nat

internalArity : CExp vars -> InternalArity
internalArity (CCon fc (NS ["Erlang"] (UN "ETFun")) _ _) = Arity 1
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlFun0")) _ _) = Arity 0
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlFun1")) _ _) = Arity 1
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlFun2")) _ _) = Arity 2
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlFun3")) _ _) = Arity 3
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlFun4")) _ _) = Arity 4
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlFun5")) _ _) = Arity 5
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlIO0")) _ _) = Arity 0
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlIO1")) _ _) = Arity 1
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlIO2")) _ _) = Arity 2
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlIO3")) _ _) = Arity 3
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlIO4")) _ _) = Arity 4
internalArity (CCon fc (NS ["Erlang"] (UN "ETErlIO5")) _ _) = Arity 5
internalArity _ = Value

externalArity : InternalArity -> Nat
externalArity Value = 0
externalArity (Arity arity) = arity

-- TODO: Do not require name of exported function to be a static string?
readExports : NamespaceInfo -> Line -> CExp [] -> Core (List ErlFunDecl)
readExports namespaceInfo l (CCon fc (NS ["IO", "Erlang"] (UN "Fun")) tag [_, exprTy, CPrimVal _ (Str fnName), expr]) = do
  let intArity = internalArity exprTy
  let extArity = externalArity intArity
  let args = take extArity (repeat (MN "" 0))
  let vs = fst (initEVars []) -- TODO: Workaround for `Trying to use linear name vs in non-linear context` in Idris 1
  let body = replace (appendNilRightNeutral args) (weakenNs args !(genCExp namespaceInfo vs expr))
  let invokedBody =
      case intArity of
        Value => body
        Arity => EApp l body (rewrite sym (appendNilRightNeutral args) in (genArgsToLocals {vars=[]} l args))
  let funDecl = MkFunDecl l Public fnName args invokedBody
  pure $ [funDecl]
readExports namespaceInfo l (CCon fc (NS ["IO", "Erlang"] (UN "Combine")) tag [exports1, exports2]) =
  pure $ !(readExports namespaceInfo l exports1) ++ !(readExports namespaceInfo l exports2)
readExports namespaceInfo l tm =
  throw (InternalError ("Invalid export: " ++ show tm))

export
genExports : {auto c : Ref Ctxt Defs} -> NamespaceInfo -> Line -> Name -> Core (List ErlFunDecl)
genExports namespaceInfo l name = do
  MkFun [] expr <- getCompileExpr name
    | throw (InternalError ("Expected function definition for " ++ show name))
  readExports namespaceInfo l expr
