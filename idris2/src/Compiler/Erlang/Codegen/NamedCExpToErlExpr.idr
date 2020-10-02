module Compiler.Erlang.Codegen.NamedCExpToErlExpr

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.Erlang.Name
import public Compiler.Erlang.IR.ErlExpr
import Compiler.Erlang.Codegen.NamedCExpToErlExpr.RtsSupport

import Core.Context
import Core.Name
import Core.TT

import Data.List
import Data.NameMap
import Data.Stream
import Data.Vect


%default total


-- OPTIONS

public export
record CGOpts where
  constructor MkCGOpts
  useMutableStorage : Bool


-- CONSTANTS

genConstant : Constant -> IdrisConstant
genConstant (I x) = IInt x
genConstant (BI x) = IInteger x
genConstant (B8 x) = IB8 x
genConstant (B16 x) = IB16 x
genConstant (B32 x) = IB32 x
genConstant (B64 x) = IB64 x
genConstant (Str x) = IString x
genConstant (Ch x) = IChar x
genConstant (Db x) = IDouble x
genConstant WorldVal = IWorldVal
genConstant IntType = IIntType
genConstant IntegerType = IIntegerType
genConstant Bits8Type = IBits8Type
genConstant Bits16Type = IBits16Type
genConstant Bits32Type = IBits32Type
genConstant Bits64Type = IBits64Type
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
genOp l (Add Bits8Type) [x, y] = pure $ genIntAdd l 8 x y
genOp l (Sub Bits8Type) [x, y] = pure $ genIntSub l 8 x y
genOp l (Mul Bits8Type) [x, y] = pure $ genIntMult l 8 x y
genOp l (Div Bits8Type) [x, y] = pure $ genIntDiv l 8 x y
genOp l (Add Bits16Type) [x, y] = pure $ genIntAdd l 16 x y
genOp l (Sub Bits16Type) [x, y] = pure $ genIntSub l 16 x y
genOp l (Mul Bits16Type) [x, y] = pure $ genIntMult l 16 x y
genOp l (Div Bits16Type) [x, y] = pure $ genIntDiv l 16 x y
genOp l (Add Bits32Type) [x, y] = pure $ genIntAdd l 32 x y
genOp l (Sub Bits32Type) [x, y] = pure $ genIntSub l 32 x y
genOp l (Mul Bits32Type) [x, y] = pure $ genIntMult l 32 x y
genOp l (Div Bits32Type) [x, y] = pure $ genIntDiv l 32 x y
genOp l (Add Bits64Type) [x, y] = pure $ genIntAdd l 64 x y
genOp l (Sub Bits64Type) [x, y] = pure $ genIntSub l 64 x y
genOp l (Mul Bits64Type) [x, y] = pure $ genIntMult l 64 x y
genOp l (Div Bits64Type) [x, y] = pure $ genIntDiv l 64 x y
genOp l (Add ty) [x, y] = pure $ EOp l "+" x y
genOp l (Sub ty) [x, y] = pure $ EOp l "-" x y
genOp l (Mul ty) [x, y] = pure $ EOp l "*" x y
genOp l (Div IntegerType) [x, y] = pure $ EOp l "div" x y -- NOTE: Is allowed to be partial
genOp l (Div ty) [x, y] = pure $ EOp l "/" x y -- NOTE: Is allowed to be partial
genOp l (Mod ty) [x, y] = pure $ EOp l "rem" x y -- NOTE: Is allowed to be partial
genOp l (Neg ty) [x] = pure $ genFunCall l "erlang" "-" [x]
genOp l (ShiftL IntType) [x, y] = pure $ genIntShiftL l 63 x y
genOp l (ShiftL Bits8Type) [x, y] = pure $ genIntShiftL l 8 x y
genOp l (ShiftL Bits16Type) [x, y] = pure $ genIntShiftL l 16 x y
genOp l (ShiftL Bits32Type) [x, y] = pure $ genIntShiftL l 32 x y
genOp l (ShiftL Bits64Type) [x, y] = pure $ genIntShiftL l 64 x y
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
genOp l StrTail [str] = genUnicodeStringTail l str
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
genOp l (Cast IntegerType Bits8Type) [x] = pure $ genIntegerToBits l 8 x
genOp l (Cast IntegerType Bits16Type) [x] = pure $ genIntegerToBits l 16 x
genOp l (Cast IntegerType Bits32Type) [x] = pure $ genIntegerToBits l 32 x
genOp l (Cast IntegerType Bits64Type) [x] = pure $ genIntegerToBits l 64 x

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

genOp l (Cast Bits8Type IntType) [x] = pure $ x
genOp l (Cast Bits8Type IntegerType) [x] = pure $ x
genOp l (Cast Bits8Type StringType) [x] = pure $ genIntegerToString l x

genOp l (Cast Bits16Type IntType) [x] = pure $ x
genOp l (Cast Bits16Type IntegerType) [x] = pure $ x
genOp l (Cast Bits16Type StringType) [x] = pure $ genIntegerToString l x

genOp l (Cast Bits32Type IntType) [x] = pure $ x
genOp l (Cast Bits32Type IntegerType) [x] = pure $ x
genOp l (Cast Bits32Type StringType) [x] = pure $ genIntegerToString l x

-- Bits64Type->IntType is omitted because Int may not be big enough to store a 64-bit unsigned integer
genOp l (Cast Bits64Type IntegerType) [x] = pure $ x
genOp l (Cast Bits64Type StringType) [x] = pure $ genIntegerToString l x

genOp l (Cast from to) [x] = pure $ genThrow l ("Invalid cast " ++ show from ++ "->" ++ show to)

genOp l BelieveMe [_, _, x] = pure $ x
genOp l Crash [_, msg] = do
  let crashMsg = EBinaryConcat l (EBinary l "Crash: ") msg
  pure $ genFunCall l "erlang" "throw" [crashMsg]


-- DATA CONSTRUCTORS

genCon : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> Line -> Name -> List ErlExpr -> Core ErlExpr
genCon namespaceInfo l name args = do
  let (NS ns (UN un)) = name
    | _ => pure $ ECon l (constructorName name) args
  case (unsafeUnfoldNamespace ns, un, args) of
    -- List
    (["Types", "Prelude"], "Nil", []) =>
      pure $ ENil l
    (["Types", "Prelude"], "::", [x, xs]) =>
      pure $ ECons l x xs
    -- ErlAtom
    (["Types", "Erlang"], "MkAtom", [x]) =>
      pure $ genUnsafeStringToAtom l x
    -- ErlCharlist
    (["Types", "Erlang"], "MkCharlist", [x]) =>
      pure $ genFunCall l "unicode" "characters_to_list" [x]
    -- ErlNil
    (["MaybeImproperList", "Types", "Erlang"], "Nil", []) =>
      pure $ ENil l
    -- ErlCons
    (["MaybeImproperList", "Types", "Erlang"], "::", [x, y]) =>
      pure $ ECons l x y
    -- ErlList
    (["ProperList", "Types", "Erlang"], "Nil", []) =>
      pure $ ENil l
    (["ProperList", "Types", "Erlang"], "::", [x, xs]) =>
      pure $ ECons l x xs
    -- ErlTuple/A
    (["Types", "Erlang"], "MkTuple0", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple1", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple2", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple3", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple4", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple5", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple6", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple7", args) => pure $ ETuple l args
    (["Types", "Erlang"], "MkTuple8", args) => pure $ ETuple l args
    -- ErlFun/A
    (["Types", "Erlang"], "MkFun0", [fun]) => genUncurry l 0 id fun
    (["Types", "Erlang"], "MkFun1", [fun]) => genUncurry l 1 id fun
    (["Types", "Erlang"], "MkFun2", [fun]) => genUncurry l 2 id fun
    (["Types", "Erlang"], "MkFun3", [fun]) => genUncurry l 3 id fun
    (["Types", "Erlang"], "MkFun4", [fun]) => genUncurry l 4 id fun
    (["Types", "Erlang"], "MkFun5", [fun]) => genUncurry l 5 id fun
    (["Types", "Erlang"], "MkFun6", [fun]) => genUncurry l 6 id fun
    (["Types", "Erlang"], "MkFun7", [fun]) => genUncurry l 7 id fun
    (["Types", "Erlang"], "MkFun8", [fun]) => genUncurry l 8 id fun
    -- ErlIOFun/A
    (["Types", "Erlang"], "MkIOFun0", [fun]) => genUncurry l 0 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun1", [fun]) => genUncurry l 1 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun2", [fun]) => genUncurry l 2 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun3", [fun]) => genUncurry l 3 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun4", [fun]) => genUncurry l 4 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun5", [fun]) => genUncurry l 5 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun6", [fun]) => genUncurry l 6 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun7", [fun]) => genUncurry l 7 (genUnsafePerformIO namespaceInfo l) fun
    (["Types", "Erlang"], "MkIOFun8", [fun]) => genUncurry l 8 (genUnsafePerformIO namespaceInfo l) fun
    -- Default
    _ =>
      pure $ ECon l (constructorName name) args


-- DATA DECONSTRUCTORS

argsToErlMatchers : (args : List LocalVar) -> List (LocalVar, ErlMatcher)
argsToErlMatchers xs = map (\arg => (arg, MAny)) xs

readConAltFun : {auto lv : Ref LV LocalVars} -> Line -> (arity : Nat) -> (funVar : LocalVar) -> ErlExpr -> (transform : ErlExpr -> ErlExpr) -> Core ErlMatcher
readConAltFun l arity funVar body transform = do
  tempVar <- newLocalVar
  let curriedFunMatcher = MTransform MAny tempVar !(genCurry l arity transform (ELocal l tempVar))
  pure $ MTransform curriedFunMatcher funVar body

readConAlt : {auto lv : Ref LV LocalVars} -> {auto cgOpts : CGOpts} -> NamespaceInfo -> Line -> Name -> (args : List LocalVar) -> ErlExpr -> Core ErlMatcher
readConAlt namespaceInfo l name args body = do
  let NS ns (UN un) = name
    | _ => pure $ MTaggedTuple (constructorName name) (argsToErlMatchers args) body
  case (unsafeUnfoldNamespace ns, un, args) of
    -- List
    (["Types", "Prelude"], "Nil", []) =>
      pure $ MConst MNil body
    (["Types", "Prelude"], "::", [xVar, xsVar]) =>
      pure $ MCons MAny MAny xVar xsVar body
    -- ErlAtom
    (["Types", "Erlang"], "MkAtom", [xVar]) => do
      tempVar <- newLocalVar
      let convertAtomMatcher = MTransform MAny tempVar (genAtomToString l (ELocal l tempVar))
      pure $ MTransform convertAtomMatcher xVar body
    -- ErlCharlist
    (["Types", "Erlang"], "MkCharlist", [xVar]) => do
      tempVar <- newLocalVar
      let convertCharlistMatcher = MTransform MAny tempVar (genFunCall l "unicode" "characters_to_binary" [ELocal l tempVar])
      pure $ MTransform convertCharlistMatcher xVar body
    -- ErlNil
    (["MaybeImproperList", "Types", "Erlang"], "Nil", []) =>
      pure $ MConst MNil body
    -- ErlCons
    (["MaybeImproperList", "Types", "Erlang"], "::", [xVar, yVar]) =>
      pure $ MCons MAny MAny xVar yVar body
    -- ErlList
    (["ProperList", "Types", "Erlang"], "Nil", []) =>
      pure $ MConst MNil body
    (["ProperList", "Types", "Erlang"], "::", [xVar, xsVar]) =>
      pure $ MCons MAny MAny xVar xsVar body
    -- ErlTuple/A
    (["Types", "Erlang"], "MkTuple0", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple1", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple2", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple3", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple4", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple5", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple6", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple7", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    (["Types", "Erlang"], "MkTuple8", args) =>
      pure $ MTuple (argsToErlMatchers args) body
    -- ErlFun/A
    (["Types", "Erlang"], "MkFun0", [funVar]) =>
      readConAltFun l 0 funVar body id
    (["Types", "Erlang"], "MkFun1", [funVar]) =>
      readConAltFun l 1 funVar body id
    (["Types", "Erlang"], "MkFun2", [funVar]) =>
      readConAltFun l 2 funVar body id
    (["Types", "Erlang"], "MkFun3", [funVar]) =>
      readConAltFun l 3 funVar body id
    (["Types", "Erlang"], "MkFun4", [funVar]) =>
      readConAltFun l 4 funVar body id
    (["Types", "Erlang"], "MkFun5", [funVar]) =>
      readConAltFun l 5 funVar body id
    (["Types", "Erlang"], "MkFun6", [funVar]) =>
      readConAltFun l 6 funVar body id
    (["Types", "Erlang"], "MkFun7", [funVar]) =>
      readConAltFun l 7 funVar body id
    (["Types", "Erlang"], "MkFun8", [funVar]) =>
      readConAltFun l 8 funVar body id
    -- ErlIOFun/A
    (["Types", "Erlang"], "MkIOFun0", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 0 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun1", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 1 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun2", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 2 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun3", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 3 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun4", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 4 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun5", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 5 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun6", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 6 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun7", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 7 funVar body (genMkIO l worldVal)
    (["Types", "Erlang"], "MkIOFun8", [funVar]) => do
      worldVal <- newLocalVar
      readConAltFun l 8 funVar body (genMkIO l worldVal)
    -- Default
    _ =>
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

genDecodeTuple : {auto lv : Ref LV LocalVars} -> Line -> ErlExpr -> (arity : Nat) -> Core ErlExpr
genDecodeTuple l term arity = do
  args <- newLocalVars arity
  genDecode l term $ MTuple (argsToErlMatchers args) (ETuple l (map (ELocal l) args))

genExtPrim : {auto lv : Ref LV LocalVars} -> {auto cgOpts : CGOpts} -> NamespaceInfo -> Line -> Name -> List ErlExpr -> Core ErlExpr
genExtPrim namespaceInfo l (NS _ (UN "void")) [_, _] =
  pure $ genThrow l "Error: Executed 'void'"
genExtPrim namespaceInfo l (NS _ (UN "prim__os")) [] =
  genOsType l
genExtPrim namespaceInfo l (NS _ (UN "prim__codegen")) [] =
  pure $ EBinary l "erlang"
genExtPrim {cgOpts} namespaceInfo l (NS _ (UN "prim__newIORef")) [_, val, world] = do
  expr <- if cgOpts.useMutableStorage
    then pure $ genFunCall l "mutable_storage" "term_new" [val]
    else do
      refVar <- newLocalVar
      pure $ genMkIORes l $ genProcessDictNewIORef l refVar val
  pure $ genMkIORes l expr
genExtPrim {cgOpts} namespaceInfo l (NS _ (UN "prim__readIORef")) [_, mutableRef, world] = do
  let expr = if cgOpts.useMutableStorage
        then genFunCall l "mutable_storage" "term_get" [mutableRef]
        else genProcessDictReadIORef l mutableRef
  pure $ genMkIORes l expr
genExtPrim {cgOpts} namespaceInfo l (NS _ (UN "prim__writeIORef")) [_, mutableRef, newVal, world] = do
  let expr = if cgOpts.useMutableStorage
        then genFunCall l "mutable_storage" "term_set" [mutableRef, newVal]
        else genProcessDictWriteIORef l mutableRef newVal
  pure $ genMkIORes l expr
genExtPrim namespaceInfo l (NS _ (UN "prim__erlUnsafeCall")) [_, ret, modName, fnName, args] = do
  pure $ genFunCall l "erlang" "apply" [genUnsafeStringToAtom l modName, genUnsafeStringToAtom l fnName, args]
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
genExtPrim namespaceInfo l (NS _ (UN "prim__erldecodeReference")) [term] =
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
  genDecodeTuple l term 0
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple1")) [term] =
  genDecodeTuple l term 1
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple2")) [term] =
  genDecodeTuple l term 2
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple3")) [term] =
  genDecodeTuple l term 3
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple4")) [term] =
  genDecodeTuple l term 4
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple5")) [term] =
  genDecodeTuple l term 5
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple6")) [term] =
  genDecodeTuple l term 6
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple7")) [term] =
  genDecodeTuple l term 7
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeTuple8")) [term] =
  genDecodeTuple l term 8
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
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun6")) [_, _, _, _, _, _, term] =
  genDecode l term (MFun 6)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun7")) [_, _, _, _, _, _, _, term] =
  genDecode l term (MFun 7)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlDecodeFun8")) [_, _, _, _, _, _, _, _, term] =
  genDecode l term (MFun 8)
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferNew")) [size] =
  pure $ EBufferNew l size
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferResize")) [bin, newSize] =
  pure $ EBufferResize l bin newSize
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferFlatten")) [bin, maxbytes] =
  pure $ EBufferFlatten l bin maxbytes
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetByte")) [bin, loc, value] =
  pure $ EBufferSetBits8 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetByte")) [bin, loc] =
  pure $ EBufferGetBits8 l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetBits8")) [bin, loc, value] =
  pure $ EBufferSetBits8 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetBits8")) [bin, loc] =
  pure $ EBufferGetBits8 l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetBits16")) [bin, loc, value] =
  pure $ EBufferSetBits16 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetBits16")) [bin, loc] =
  pure $ EBufferGetBits16 l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetBits32")) [bin, loc, value] =
  pure $ EBufferSetBits32 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetBits32")) [bin, loc] =
  pure $ EBufferGetBits32 l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetBits64")) [bin, loc, value] =
  pure $ EBufferSetBits64 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetBits64")) [bin, loc] =
  pure $ EBufferGetBits64 l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetInt32")) [bin, loc, value] =
  pure $ EBufferSetInt32 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetInt32")) [bin, loc] =
  pure $ EBufferGetInt32 l bin loc
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferSetInt64")) [bin, loc, value] =
  pure $ EBufferSetInt64 l bin loc value
genExtPrim namespaceInfo l (NS _ (UN "prim__erlBufferGetInt64")) [bin, loc] =
  pure $ EBufferGetInt64 l bin loc
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


-- %FOREIGN PRIMITIVES

genForeign : {auto lv : Ref LV LocalVars} -> NamespaceInfo -> Line -> Name -> List ErlExpr -> Core ErlExpr
genForeign namespaceInfo l (NS _ (UN "prim__putStr")) [arg, world] = do
  let putStrCall = genUnicodePutStr l arg
  let retVal = genMkIORes l (genMkUnit l)
  pure $ ESequence l [putStrCall, retVal]
genForeign namespaceInfo l (NS _ (UN "prim__getStr")) [world] = do
  let getStrCall = genUnicodeGetStr l (ECharlist l "")
  pure $ genMkIORes l getStrCall
genForeign namespaceInfo l (NS _ (UN "fastPack")) [xs] = do
  pure $ genFunCall l "unicode" "characters_to_binary" [xs]
genForeign namespaceInfo l (NS _ (UN "fastConcat")) [xs] = do
  pure $ genFunCall l "unicode" "characters_to_binary" [xs] -- TODO: Can this be improved?
-- genForeign namespaceInfo l name args =
--   throw (InternalError ("Unsupported %foreign primitive " ++ show name))
genForeign namespaceInfo l name args =
  pure $ genThrow l ("Error: Unsupported %foreign primitive " ++ show name) -- TODO: Should fail at compile-time instead


-- CODE GENERATION

mutual
  export
  genNmExp : {auto lv : Ref LV LocalVars} -> {auto cgOpts : CGOpts} -> NamespaceInfo -> NameMap LocalVar -> NamedCExp -> Core ErlExpr
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
    (vs', xVar) <- addLocalVar x vs
    body' <- genNmExp namespaceInfo vs' body
    pure $ ELet l xVar val' body'
  genNmExp namespaceInfo vs (NmApp fc x args) = do
    let l = genFC fc
    args' <- assert_total $ traverse (genNmExp namespaceInfo vs) args
    pure $ EApp l !(genNmExp namespaceInfo vs x) args'
  genNmExp namespaceInfo vs (NmCon fc name tag args) = do
    let l = genFC fc
    args' <- assert_total $ traverse (genNmExp namespaceInfo vs) args
    genCon namespaceInfo l name args'
  genNmExp namespaceInfo vs (NmOp fc op args) = do
    let l = genFC fc
    args' <- assert_total $ traverseVect namespaceInfo vs args
    genOp l op args'
  genNmExp namespaceInfo vs (NmExtPrim fc name args) = do
    let l = genFC fc
    args' <- assert_total $ traverse (genNmExp namespaceInfo vs) args
    genExtPrim namespaceInfo l name args'
  genNmExp namespaceInfo vs (NmForce fc t) = do
    let l = genFC fc
    pure $ EApp l !(genNmExp namespaceInfo vs t) []
  genNmExp namespaceInfo vs (NmDelay fc t) = do
    let l = genFC fc
    pure $ ELam l [] !(genNmExp namespaceInfo vs t)
  genNmExp namespaceInfo vs (NmConCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genNmExp namespaceInfo vs sc
    alts' <- assert_total $ traverse (genConAlt namespaceInfo vs l) alts
    def' <- case def of
          Just defExpr => genNmExp namespaceInfo vs defExpr
          Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EMatcherCase l sc' alts' def'
  genNmExp namespaceInfo vs (NmConstCase fc sc alts def) = do
    let l = genFC fc
    sc' <- genNmExp namespaceInfo vs sc
    alts' <- assert_total $ traverse (genConstAlt namespaceInfo vs) alts
    def' <- case def of
          Just defExpr => genNmExp namespaceInfo vs defExpr
          Nothing => pure $ genThrow l "Error: Unreachable branch"
    pure $ EConstCase l sc' alts' def'
  genNmExp namespaceInfo vs (NmPrimVal fc c) = do
    let l = genFC fc
    pure $ EIdrisConstant l (genConstant c)
  genNmExp namespaceInfo vs (NmErased fc) = do
    let l = genFC fc
    pure $ genErased l
  genNmExp namespaceInfo vs (NmCrash fc msg) = do
    let l = genFC fc
    pure $ genThrow l msg

  traverseVect : {auto lv : Ref LV LocalVars} -> {auto cgOpts : CGOpts} -> NamespaceInfo -> NameMap LocalVar -> Vect n NamedCExp -> Core (Vect n ErlExpr)
  traverseVect namespaceInfo vs [] = pure []
  traverseVect namespaceInfo vs (arg :: args) = pure $ !(genNmExp namespaceInfo vs arg) :: !(traverseVect namespaceInfo vs args)

  genConAlt : {auto lv : Ref LV LocalVars} -> {auto cgOpts : CGOpts} -> NamespaceInfo -> NameMap LocalVar -> Line -> NamedConAlt -> Core ErlMatcher
  genConAlt namespaceInfo vs l (MkNConAlt name tag args body) = do
    (vs', vars) <- addLocalVars args vs
    readConAlt namespaceInfo l name vars !(genNmExp namespaceInfo vs' body)

  genConstAlt : {auto lv : Ref LV LocalVars} -> {auto cgOpts : CGOpts} -> NamespaceInfo -> NameMap LocalVar -> NamedConstAlt -> Core ErlConstAlt
  genConstAlt namespaceInfo vs (MkNConstAlt constant body) =
    pure $ MkConstAlt (genConstant constant) !(genNmExp namespaceInfo vs body)


-- DEFINITIIONS

export
genDef : {auto cgOpts : CGOpts} -> NamespaceInfo -> Line -> Name -> NamedDef -> Core (Maybe ErlFunDecl)
genDef namespaceInfo l name (MkNmFun args body) = do
  lv <- newRef LV (initLocalVars "V")
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  (vs, vars) <- addLocalVars args empty
  let funDecl = MkFunDecl l Public fnName vars !(genNmExp namespaceInfo vs body)
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmCon tag arity nt) =
  pure Nothing
genDef namespaceInfo l name (MkNmForeign cs args ret) = do
  lv <- newRef LV (initLocalVars "V")
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  vars <- newLocalVars (length args)
  let funDecl = MkFunDecl l Public fnName vars !(genForeign namespaceInfo l name (map (ELocal l) vars))
  pure $ Just funDecl
genDef namespaceInfo l name (MkNmError body) = do
  lv <- newRef LV (initLocalVars "V")
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  let funDecl = MkFunDecl l Private fnName [] !(genNmExp namespaceInfo empty body)
  pure $ Just funDecl


-- EXPORTS

data InternalArity = Value | Arity Nat

internalArity : NamedCExp -> InternalArity
internalArity (NmCon fc (NS ns (UN un)) _ _) =
  if ns == erlangTypesNS
    then case un of
      "ETFun" => Arity 1
      "ETErlFun0" => Arity 0
      "ETErlFun1" => Arity 1
      "ETErlFun2" => Arity 2
      "ETErlFun3" => Arity 3
      "ETErlFun4" => Arity 4
      "ETErlFun5" => Arity 5
      "ETErlFun6" => Arity 6
      "ETErlFun7" => Arity 7
      "ETErlFun8" => Arity 8
      "ETErlIOFun0" => Arity 0
      "ETErlIOFun1" => Arity 1
      "ETErlIOFun2" => Arity 2
      "ETErlIOFun3" => Arity 3
      "ETErlIOFun4" => Arity 4
      "ETErlIOFun5" => Arity 5
      "ETErlIOFun6" => Arity 6
      "ETErlIOFun7" => Arity 7
      "ETErlIOFun8" => Arity 8
      _ => Value
    else Value
internalArity _ = Value

externalArity : InternalArity -> Nat
externalArity Value = 0
externalArity (Arity arity) = arity

-- TODO: Do not require name of exported function to be a static string?
export
readExports : NamespaceInfo -> Line -> NamedCExp -> Core (List ErlFunDecl)
readExports namespaceInfo l tm = do
  case tm of
    NmCon fc (NS ns (UN "Fun")) tag [exprTy, NmPrimVal _ (Str fnName), expr] => do
      let True = ns == erlangIONS
        | False => throw (InternalError ("Invalid export: " ++ show tm))
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
    NmCon fc (NS ns (UN "Combine")) tag [exports1, exports2] => do
      let True = ns == erlangIONS
        | False => throw (InternalError ("Invalid export: " ++ show tm))
      pure $ !(readExports namespaceInfo l exports1) ++ !(readExports namespaceInfo l exports2)
    _ =>
      throw (InternalError ("Invalid export: " ++ show tm))
