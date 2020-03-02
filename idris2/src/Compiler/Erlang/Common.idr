module Compiler.Erlang.Common

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline

import Core.Context
import Core.Name
import Core.TT

import Utils.Hex

import Data.List
import Data.Vect

%default covering

public export
Namespace : Type
Namespace = List String

public export
record NamespaceInfo where
  constructor MkNamespaceInfo
  prefix : String
  inNs : Maybe Namespace

export
escapeAtomChars : String -> String
escapeAtomChars s = concatMap okchar (unpack s)
  where
    okchar : Char -> String
    okchar '\\' = "\\\\"
    okchar '\'' = "\\'"
    okchar c = cast c

export
getNamespace : Name -> List String
getNamespace (NS ns _) = ns
getNamespace n = []

genName : Name -> String
genName (NS ns n) = "ns--" ++ showSep "-" ns ++ "--" ++ genName n
genName (UN n) = "un--" ++ n
genName (MN n i) = n ++ "_" ++ show i
genName (PV n d) = "pat--" ++ genName n
genName (DN _ n) = "dn--" ++ genName n
genName (Nested i n) = "nested--" ++ show i ++ "--in--" ++ genName n
genName (CaseBlock x y) = "case--" ++ show x ++ "-" ++ show y
genName (WithBlock x y) = "with--" ++ show x ++ "-" ++ show y
genName (Resolved i) = "fn--" ++ show i

export
moduleNameFromNS : (prefix : String) -> List String -> String
moduleNameFromNS prefix ns = showSep "." (prefix :: reverse ns)

genModuleName : (prefix : String) -> Name -> String
genModuleName prefix n = moduleNameFromNS prefix (getNamespace n)

genModuleNameFunctionName : (prefix : String) -> Name -> (String, String)
genModuleNameFunctionName prefix n@(NS ns dcons) = (genModuleName prefix n, genName dcons)
genModuleNameFunctionName prefix n = (genModuleName prefix n, genName n)

genFunctionCallName : NamespaceInfo -> Name -> String
genFunctionCallName namespaceInfo n =
  let currentNs = getNamespace n
      (modName, fnName) = genModuleNameFunctionName (prefix namespaceInfo) n
      modNameStr = "'" ++ escapeAtomChars modName ++ "'"
      fnNameStr = "'" ++ escapeAtomChars fnName ++ "'"
  in if Just currentNs == inNs namespaceInfo
    then fnNameStr
    else modNameStr ++ ":" ++ fnNameStr

genFunctionDefName : (prefix : String) -> Name -> String
genFunctionDefName prefix n =
  let (modName, fnName) = genModuleNameFunctionName prefix n
  in "'" ++ escapeAtomChars fnName ++ "'"

genVariableName : String -> Int -> String
genVariableName n i = genName (MN n i)

genConstructorName : NamespaceInfo -> Name -> String
genConstructorName namespaceInfo (NS ns (UN dcons)) =
  let modName = moduleNameFromNS (prefix namespaceInfo) ns
  in "'" ++ escapeAtomChars modName ++ "." ++ escapeAtomChars dcons ++ "'"
genConstructorName namespaceInfo (UN dcons) =
  let modName = moduleNameFromNS (prefix namespaceInfo) []
  in "'" ++ escapeAtomChars modName ++ "." ++ escapeAtomChars dcons ++ "'"
genConstructorName namespaceInfo n =
  let (modName, fnName) = genModuleNameFunctionName (prefix namespaceInfo) n
  in "'" ++ escapeAtomChars modName ++ "." ++ escapeAtomChars fnName ++ "'"

-- local variable names as scheme names - we need to invent new names for the locals
-- because there might be shadows in the original expression which can't be resolved
-- by the same scoping rules. (e.g. something that computes \x, x => x + x where the
-- names are the same but refer to different bindings in the scope)
public export
data SVars : List Name -> Type where
  Nil : SVars []
  (::) : (svar : String) -> SVars ns -> SVars (n :: ns)

extendSVars : (xs : List Name) -> SVars ns -> SVars (xs ++ ns)
extendSVars {ns} xs vs = extSVars' (cast (length ns)) xs vs
  where
    extSVars' : Int -> (xs : List Name) -> SVars ns -> SVars (xs ++ ns)
    extSVars' i [] vs = vs
    extSVars' i (x :: xs) vs = genVariableName "V" i :: extSVars' (i + 1) xs vs

initSVars : (xs : List Name) -> SVars xs
initSVars xs = rewrite sym (appendNilRightNeutral xs) in extendSVars xs []

lookupSVar : {idx : Nat} -> .(IsVar n idx xs) -> SVars xs -> String
lookupSVar First (n :: ns) = n
lookupSVar (Later p) (n :: ns) = lookupSVar p ns

export
genConstructor : NamespaceInfo -> Name -> List String -> String
genConstructor namespaceInfo name args = "{" ++ showSep ", " (genConstructorName namespaceInfo name :: args) ++ "}"

op : String -> List String -> String
op o args = o ++ "(" ++ showSep ", " args ++ ")"

infixop : String -> String -> String -> String
infixop o x y = "(" ++ x ++ " " ++ o ++ " " ++ y ++ ")"

boolToInt : String -> String
boolToInt condition = "case " ++ condition ++ " of false -> 0; _ -> 1 end"

genOp : PrimFn arity -> Vect arity String -> String
genOp (Add IntType) [x, y] = op "'Idris.RTS-Internal':int_add" [x, y, "63"]
genOp (Sub IntType) [x, y] = op "'Idris.RTS-Internal':int_sub" [x, y, "63"]
genOp (Mul IntType) [x, y] = op "'Idris.RTS-Internal':int_mult" [x, y, "63"]
genOp (Div IntType) [x, y] = op "'Idris.RTS-Internal':int_div" [x, y, "63"]
genOp (Add ty) [x, y] = infixop "+" x y
genOp (Sub ty) [x, y] = infixop "-" x y
genOp (Mul ty) [x, y] = infixop "*" x y
genOp (Div IntegerType) [x, y] = infixop "div" x y -- NOTE: Is allowed to be partial
genOp (Div ty) [x, y] = infixop "/" x y -- NOTE: Is allowed to be partial
genOp (Mod ty) [x, y] = infixop "rem" x y -- NOTE: Is allowed to be partial -- TODO: Can `x` and `y` be floating point? `rem` does not work on floating points
genOp (Neg ty) [x] = op "-" [x]
genOp (ShiftL ty) [x, y] = infixop "bsl" x y
genOp (ShiftR ty) [x, y] = infixop "bsr" x y
genOp (BAnd ty) [x, y] = infixop "band" x y
genOp (BOr ty) [x, y] = infixop "bor" x y
genOp (BXOr ty) [x, y] = infixop "bxor" x y
genOp (LT StringType) [x, y] = op "'Idris.RTS-Internal':unicode_string_lt" [x, y]
genOp (LTE StringType) [x, y] = op "'Idris.RTS-Internal':unicode_string_lte" [x, y]
genOp (EQ StringType) [x, y] = op "'Idris.RTS-Internal':unicode_string_eq" [x, y]
genOp (GTE StringType) [x, y] = op "'Idris.RTS-Internal':unicode_string_gte" [x, y]
genOp (GT StringType) [x, y] = op "'Idris.RTS-Internal':unicode_string_gt" [x, y]
genOp (LT ty) [x, y] = boolToInt (infixop "<" x y)
genOp (LTE ty) [x, y] = boolToInt (infixop "=<" x y)
genOp (EQ ty) [x, y] = boolToInt (infixop "=:=" x y)
genOp (GTE ty) [x, y] = boolToInt (infixop ">=" x y)
genOp (GT ty) [x, y] = boolToInt (infixop ">" x y)
genOp StrLength [x] = op "'Idris.RTS-Internal':unicode_string_length" [x]
genOp StrHead [x] = op "'Idris.RTS-Internal':unicode_string_head" [x]
genOp StrTail [x] = op "'Idris.RTS-Internal':unicode_string_tail" [x]
genOp StrIndex [x, i] = op "'Idris.RTS-Internal':unicode_string_index" [x, i]
genOp StrCons [x, y] = op "'Idris.RTS-Internal':unicode_string_cons" [x, y]
genOp StrAppend [x, y] = op "'Idris.RTS-Internal':unicode_string_append" [x, y]
genOp StrReverse [x] = op "'Idris.RTS-Internal':unicode_string_reverse" [x]
genOp StrSubstr [x, y, z] = op "'Idris.RTS-Internal':unicode_string_substr" [x, y, z]

-- `e` is Euler's number, which approximates to: 2.718281828459045
genOp DoubleExp [x] = op "math:pow" ["2.718281828459045", x] -- TODO: Hard coded constant
genOp DoubleLog [x] = op "math:log" [x] -- Base is `e`
genOp DoubleSin [x] = op "math:sin" [x]
genOp DoubleCos [x] = op "math:cos" [x]
genOp DoubleTan [x] = op "math:tan" [x]
genOp DoubleASin [x] = op "math:asin" [x]
genOp DoubleACos [x] = op "math:acos" [x]
genOp DoubleATan [x] = op "math:atan" [x]
genOp DoubleSqrt [x] = op "math:sqrt" [x]
genOp DoubleFloor [x] = op "floor" [x]
genOp DoubleCeiling [x] = op "ceil" [x]

genOp (Cast IntegerType IntType) [x] = op "'Idris.RTS-Internal':integer_to_int" [x]
genOp (Cast IntegerType DoubleType) [x] = op "'Idris.RTS-Internal':integer_to_double" [x]
genOp (Cast IntegerType StringType) [x] = op "'Idris.RTS-Internal':integer_to_string" [x]

genOp (Cast IntType IntegerType) [x] = op "'Idris.RTS-Internal':int_to_integer" [x]
genOp (Cast IntType DoubleType) [x] = op "'Idris.RTS-Internal':int_to_double" [x]
genOp (Cast IntType CharType) [x] = op "'Idris.RTS-Internal':int_to_char" [x]
genOp (Cast IntType StringType) [x] = op "'Idris.RTS-Internal':int_to_string" [x]

genOp (Cast DoubleType IntegerType) [x] = op "'Idris.RTS-Internal':double_to_integer" [x]
genOp (Cast DoubleType IntType) [x] = op "'Idris.RTS-Internal':double_to_int" [x]
genOp (Cast DoubleType StringType) [x] = op "'Idris.RTS-Internal':double_to_string" [x]

genOp (Cast CharType IntegerType) [x] = op "'Idris.RTS-Internal':char_to_integer" [x]
genOp (Cast CharType IntType) [x] = op "'Idris.RTS-Internal':char_to_int" [x]
genOp (Cast CharType StringType) [x] = op "'Idris.RTS-Internal':char_to_string" [x]

genOp (Cast StringType IntegerType) [x] = op "'Idris.RTS-Internal':string_to_integer" [x]
genOp (Cast StringType IntType) [x] = op "'Idris.RTS-Internal':string_to_int" [x]
genOp (Cast StringType DoubleType) [x] = op "'Idris.RTS-Internal':string_to_double" [x]

genOp (Cast from to) [x] = "throw(\"Invalid cast " ++ show from ++ "->" ++ show to ++ "\")"

genOp BelieveMe [_, _, x] = x

public export
data ExtPrim
  = CCall | SchemeCall -- TODO: Remove these
  | PutStr | GetStr
  | FileOpen | FileClose | FileReadLine | FileWriteLine | FileEOF
  | Stdin | Stdout | Stderr
  | VoidElim | Unknown Name
  | ErlUnsafeCall | ErlTryCatch | ErlCase | ErlReceive | ErlModule
  | InternalTryCatch

export
Show ExtPrim where
  show CCall = "CCall"
  show SchemeCall = "SchemeCall"
  show PutStr = "PutStr"
  show GetStr = "GetStr"
  show FileOpen = "FileOpen"
  show FileClose = "FileClose"
  show FileReadLine = "FileReadLine"
  show FileWriteLine = "FileWriteLine"
  show FileEOF = "FileEOF"
  show Stdin = "Stdin"
  show Stdout = "Stdout"
  show Stderr = "Stderr"
  show VoidElim = "VoidElim"
  show (Unknown n) = "Unknown " ++ show n
  show ErlUnsafeCall = "ErlUnsafeCall"
  show ErlTryCatch = "ErlTryCatch"
  show ErlCase = "ErlCase"
  show ErlReceive = "ErlReceive"
  show ErlModule = "ErlModule"
  show InternalTryCatch = "InternalTryCatch"

toPrim : Name -> ExtPrim
toPrim pn@(NS _ n) = cond [
  (n == UN "prim__cCall", CCall),
  (n == UN "prim__schemeCall", SchemeCall),
  (n == UN "prim__putStr", PutStr),
  (n == UN "prim__getStr", GetStr),
  (n == UN "prim__open", FileOpen),
  (n == UN "prim__close", FileClose),
  (n == UN "prim__readLine", FileReadLine),
  (n == UN "prim__writeLine", FileWriteLine),
  (n == UN "prim__eof", FileEOF),
  (n == UN "prim__stdin", Stdin),
  (n == UN "prim__stdout", Stdout),
  (n == UN "prim__stderr", Stderr),
  (n == UN "void", VoidElim),
  (n == UN "prim__erlUnsafeCall", ErlUnsafeCall),
  (n == UN "prim__erlTryCatch", ErlTryCatch),
  (n == UN "prim__erlCase", ErlCase),
  (n == UN "prim__erlReceive", ErlReceive),
  (n == UN "prim__erlModule", ErlModule),
  (n == UN "internal__tryCatch", InternalTryCatch)
  ]
  (Unknown pn)
toPrim pn = Unknown pn


mkIdrisRtsExceptionAtom : String
mkIdrisRtsExceptionAtom = "'$idris_rts_exception'"

mkErased : String
mkErased = "erased"

mkUnit : String
mkUnit = "{}"

mkEither : NamespaceInfo -> Either String String -> String
mkEither namespaceInfo value =
  let name =
      case value of
        Right _ => NS ["Prelude"] (UN "Right")
        Left _ => NS ["Prelude"] (UN "Left")
  in genConstructor namespaceInfo name [mkErased, mkErased, either id id value]

mkEitherBuilder : NamespaceInfo -> Bool -> String
mkEitherBuilder namespaceInfo isRight = "fun(X) -> " ++ mkEither namespaceInfo (if isRight then Right "X" else Left "X") ++ " end"

-- PrimIO.MkIORes : {0 a : Type} -> a -> (1 x : %World) -> IORes a
export
mkWorld : NamespaceInfo -> String -> String
mkWorld namespaceInfo res = genConstructor namespaceInfo (NS ["PrimIO"] (UN "MkIORes")) [mkErased, res, "false"]

-- io_pure : {0 a : Type} -> a -> IO a
-- io_pure {a} x = MkIO {a} (\1 w : %World => (MkIORes {a} x w))
--
-- ns_PrimIO_un_io_pure(V_0, V_1) -> {0, erased, fun(V_2) -> {0, erased, V_1, V_2} end}.
mkIOPure : NamespaceInfo -> String -> String
mkIOPure namespaceInfo val =
  genConstructor namespaceInfo (NS ["PrimIO"] (UN "MkIO")) [mkErased, "fun(World) -> " ++ genConstructor namespaceInfo (NS ["PrimIO"] (UN "MkIORes")) [mkErased, val, "World"] ++ " end"]


mkCurriedFun : List String -> String -> String
mkCurriedFun []        body = body
mkCurriedFun (x :: xs) body = "fun(" ++ x ++ ") -> " ++ mkCurriedFun xs body ++ " end"

mkUncurriedFun : List String -> String -> String
mkUncurriedFun xs body = "fun(" ++ showSep ", " xs ++ ") -> " ++ body ++ " end"

mkStringToAtom : String -> String
mkStringToAtom str = "(binary_to_atom(unicode:characters_to_binary(" ++ str ++ "), utf8))"

mkTryCatch : String -> String
mkTryCatch str = "(fun() -> try " ++ str ++ " of Result -> Result catch Class:Reason:Stacktrace -> {" ++ mkIdrisRtsExceptionAtom ++ ", {Class, Reason, Stacktrace}} end end())"

-- TODO: Not a great workaround :-/
-- Will fail if the input string is not a string literal
stripErlangString : String -> String
stripErlangString str =
  pack (reverse (drop 8 (reverse (drop 3 (unpack str)))))

showErlChar : Char -> String -> String
showErlChar '\\' = ("\\\\" ++)
showErlChar c =
  if c < chr 32 || c > chr 126
    then (("\\x{" ++ asHex (cast c) ++ "}") ++)
    else strCons c

showErlString : List Char -> String -> String
showErlString [] = id
showErlString ('"' :: cs) = ("\\\"" ++) . showErlString cs
showErlString (c :: cs) = (showErlChar c) . showErlString cs

erlString : String -> String
erlString cs = strCons '"' (showErlString (unpack cs) "\"")

genConstant : Constant -> String
genConstant (I x) = show x
genConstant (BI x) = show x
genConstant (Str x) = "<<" ++ erlString x ++ "/utf8>>"
genConstant (Ch x) = show $ cast {to=Int} x
genConstant (Db x) = show x
genConstant WorldVal = "false" -- TODO: What is the point of `false` here, and `true` for the rest of the cases?
genConstant IntType = "true"
genConstant IntegerType = "true"
genConstant StringType = "true"
genConstant CharType = "true"
genConstant DoubleType = "true"
genConstant WorldType = "true"

genCaseDef : Maybe String -> List String
genCaseDef Nothing = []
genCaseDef (Just tm) = ["(_) -> " ++ tm]


applyUnsafePerformIO : CExp vars -> CExp vars
applyUnsafePerformIO expr = CApp EmptyFC (CRef EmptyFC (NS ["PrimIO"] (UN "unsafePerformIO"))) [CErased EmptyFC, expr]

applyToArgs : CExp vars -> List (CExp vars) -> CExp vars
applyToArgs expr [] = expr
applyToArgs expr (x :: xs) = applyToArgs (CApp EmptyFC expr [x]) xs

expectArgAtIndex : (n : Nat) -> List a -> Core a
expectArgAtIndex n xs =
  case index' n xs of
    Just val => pure val
    Nothing => throw (InternalError ("Missing expected argument at index " ++ show n ++ " in list"))


unitCExp : CExp vars
unitCExp =
  CCon EmptyFC (NS ["Builtin"] (UN "MkUnit")) 0 []

ioPureCExp : CExp vars -> CExp vars
ioPureCExp expr =
  CCon EmptyFC (NS ["PrimIO"] (UN "MkIO")) 0 [CErased EmptyFC, CLam EmptyFC (MN "World" 0) (CCon EmptyFC (NS ["PrimIO"] (UN "MkIORes")) 0 [CErased EmptyFC, weaken expr, CLocal EmptyFC First])]

tryCatchCExp : CExp vars -> CExp vars
tryCatchCExp expr =
  CExtPrim EmptyFC (NS [] (UN "internal__tryCatch")) [expr]

curryCExp : List Name -> ({innerVars : List Name} -> CExp innerVars -> CExp innerVars) -> CExp vars -> CExp vars
curryCExp allNames transformer expr = wrapLambda allNames (transformer (CApp EmptyFC (weakenNs allNames expr) (reverse (args allNames))))
  where
    wrapLambda : (names : List Name) -> CExp (names ++ vars) -> CExp vars
    wrapLambda []        innerExpr = innerExpr
    wrapLambda (x :: xs) innerExpr = wrapLambda xs (CLam EmptyFC x innerExpr)

    args : (names : List Name) -> List (CExp (names ++ vars))
    args [] = []
    args (x :: xs) = CLocal EmptyFC First :: map weaken (args xs)


mutual
  bindArgs : Int -> (ns : List Name) -> SVars (ns ++ vars) -> List String
  bindArgs i [] vs = []
  bindArgs i (n :: ns) (v :: vs) = v :: bindArgs (i + 1) ns vs

  genConAltTuple : NamespaceInfo -> Int -> SVars vars -> (args : List Name) -> CExp (args ++ vars) -> (arity : Nat) -> Core String
  genConAltTuple namespaceInfo i vs args sc arity = do
    let vs' = extendSVars args vs
    pure $ "({" ++ showSep ", " (drop arity $ bindArgs 1 args vs') ++ "}) -> " ++ !(genExp namespaceInfo i vs' sc)

  -- Given an Erlang function `ErlangFunc` with arity 2:
  -- 1. Curries this function according to arity: fun(X_0) -> fun(X_1) -> ErlangFunc(X_0, X_1) end end
  -- 2. Transform the inner result with a user-defined function: fun(X_0) -> fun(X_1) -> `Transformer`(ErlangFunc(X_0, X_1)) end end
  -- The transformer is specifically used to lift the value into the IO monad
  genConAltFun : NamespaceInfo -> Int -> SVars vars -> (args : List Name) -> CExp (args ++ vars) -> (arity : Nat) -> (String -> String) -> Core String
  genConAltFun namespaceInfo i vs args sc arity transformer = do
    let vs' = extendSVars args vs
    let tempVars = take arity $ zipWith (\name, idx => name ++ show idx) (repeat "X_") [0..]
    pure  $ "(Func) -> " ++ mkUncurriedFun (drop (S arity) $ bindArgs 1 args vs') !(genExp namespaceInfo i vs' sc) ++ "(" ++ mkCurriedFun tempVars (transformer ("Func(" ++ showSep ", " tempVars ++ ")")) ++ ")"

  genConAlt : NamespaceInfo -> Int -> SVars vars -> CConAlt vars -> Core String
  -- Unit
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Builtin"] (UN "MkUnit")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ mkUnit ++ ") -> " ++ !(genExp namespaceInfo i vs' sc)
  -- Bool
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Prelude"] (UN "True")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(true) -> " ++ !(genExp namespaceInfo i vs' sc)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Prelude"] (UN "False")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(false) -> " ++ !(genExp namespaceInfo i vs' sc)
  -- List
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Prelude"] (UN "Nil")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([]) -> " ++ !(genExp namespaceInfo i vs' sc)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Prelude"] (UN "::")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([" ++ showSep " | " (drop 1 $ bindArgs 1 args vs') ++ "]) -> " ++ !(genExp namespaceInfo i vs' sc)
  -- Raw
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Idris", "Erlang"] (UN "MkRaw")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ !(expectArgAtIndex 1 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp namespaceInfo i vs' sc)
  -- ErlAtom
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Atoms", "Erlang"] (UN "MkErlAtom")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(Atom) -> fun(" ++ !(expectArgAtIndex 0 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp namespaceInfo i vs' sc) ++ " end(atom_to_binary(Atom, utf8))"
  -- ErlBinary
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Strings", "Erlang"] (UN "MkErlBinary")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ !(expectArgAtIndex 0 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp namespaceInfo i vs' sc)
  -- ErlAtom
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Strings", "Erlang"] (UN "MkErlCharlist")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ !(expectArgAtIndex 0 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp namespaceInfo i vs' sc)
  -- ErlNil
  genConAlt namespaceInfo i vs (MkConAlt (NS ["MaybeImproperLists", "Erlang"] (UN "Nil")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([]) -> " ++ !(genExp namespaceInfo i vs' sc)
  -- ErlCons
  genConAlt namespaceInfo i vs (MkConAlt (NS ["MaybeImproperLists", "Erlang"] (UN "::")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([" ++ showSep " | " (drop 2 $ bindArgs 1 args vs') ++ "]) -> " ++ !(genExp namespaceInfo i vs' sc)
  -- ErlList
  genConAlt namespaceInfo i vs (MkConAlt (NS ["ProperLists", "Erlang"] (UN "Nil")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([]) -> " ++ !(genExp namespaceInfo i vs' sc)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["ProperLists", "Erlang"] (UN "::")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([" ++ showSep " | " (drop 2 $ bindArgs 1 args vs') ++ "]) -> " ++ !(genExp namespaceInfo i vs' sc)
  -- ErlTuple/A
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple0")) tag args sc) = genConAltTuple namespaceInfo i vs args sc 0
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple1")) tag args sc) = genConAltTuple namespaceInfo i vs args sc 1
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple2")) tag args sc) = genConAltTuple namespaceInfo i vs args sc 2
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple3")) tag args sc) = genConAltTuple namespaceInfo i vs args sc 3
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple4")) tag args sc) = genConAltTuple namespaceInfo i vs args sc 4
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple5")) tag args sc) = genConAltTuple namespaceInfo i vs args sc 5
  -- ErlFun/A
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun0")) tag args sc) = genConAltFun namespaceInfo i vs args sc 0 id
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun1")) tag args sc) = genConAltFun namespaceInfo i vs args sc 1 id
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun2")) tag args sc) = genConAltFun namespaceInfo i vs args sc 2 id
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun3")) tag args sc) = genConAltFun namespaceInfo i vs args sc 3 id
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun4")) tag args sc) = genConAltFun namespaceInfo i vs args sc 4 id
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun5")) tag args sc) = genConAltFun namespaceInfo i vs args sc 5 id
  -- ErlIO/A
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO0")) tag args sc) = genConAltFun namespaceInfo i vs args sc 0 (mkIOPure namespaceInfo)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO1")) tag args sc) = genConAltFun namespaceInfo i vs args sc 1 (mkIOPure namespaceInfo)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO2")) tag args sc) = genConAltFun namespaceInfo i vs args sc 2 (mkIOPure namespaceInfo)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO3")) tag args sc) = genConAltFun namespaceInfo i vs args sc 3 (mkIOPure namespaceInfo)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO4")) tag args sc) = genConAltFun namespaceInfo i vs args sc 4 (mkIOPure namespaceInfo)
  genConAlt namespaceInfo i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO5")) tag args sc) = genConAltFun namespaceInfo i vs args sc 5 (mkIOPure namespaceInfo)
  -- Other
  genConAlt namespaceInfo i vs (MkConAlt name tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "({" ++ showSep ", " (genConstructorName namespaceInfo name :: bindArgs 1 args vs') ++ "}) -> " ++ !(genExp namespaceInfo i vs' sc)

  genConstAlt : NamespaceInfo -> Int -> SVars vars -> CConstAlt vars -> Core String
  genConstAlt namespaceInfo i vs (MkConstAlt c exp) = pure $ "(" ++ genConstant c ++ ") -> " ++ !(genExp namespaceInfo i vs exp)

  genConTuple : NamespaceInfo -> Int -> SVars vars -> List (CExp vars) -> Core String
  genConTuple namespaceInfo i vs args = pure $ "{" ++ showSep ", " !(traverse (genExp namespaceInfo i vs) args) ++ "}"

  -- Given an Idris function `idrisFun` with arity 2:
  -- 1. Uncurries this function according to arity: fun(X_0, X_1) -> (idrisFun(X_0))(X_1) end
  -- 2. Transform the inner result with a user-defined function: fun(X_0, X_1) -> `transform`((idrisFun(X_0))(X_1)) end
  -- The transformer is specifically used to perform the side-effects of the result (using `unsafePerformIO`)
  genConFun : NamespaceInfo -> Int -> SVars vars -> (arity : Nat) -> CExp vars -> (CExp vars -> CExp vars) -> Core String
  genConFun namespaceInfo i vs arity func transformer = do
    let tempVars = take arity $ zipWith (\name, idx => name ++ show idx) (repeat "X_") [0..]
    let tempCRefs = take arity $ zipWith (\name, idx => CRef EmptyFC (MN name idx)) (repeat "X") [0..]
    let body = transformer (applyToArgs func tempCRefs)
    pure $ mkUncurriedFun tempVars !(genExp namespaceInfo i vs body)

  genCon : NamespaceInfo -> Int -> SVars vars -> CExp vars -> Core String
  -- Unit
  genCon namespaceInfo i vs (CCon fc (NS ["Builtin"] (UN "MkUnit")) _ _) = pure mkUnit
  -- Bool
  genCon namespaceInfo i vs (CCon fc (NS ["Prelude"] (UN "True")) _ _) = pure "true"
  genCon namespaceInfo i vs (CCon fc (NS ["Prelude"] (UN "False")) _ _) = pure "false"
  -- List
  genCon namespaceInfo i vs (CCon fc (NS ["Prelude"] (UN "Nil")) _ _) = pure "[]"
  genCon namespaceInfo i vs (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = pure $ "[" ++ !(genExp namespaceInfo i vs x) ++ " | " ++ !(genExp namespaceInfo i vs xs) ++ "]"
  -- Raw
  genCon namespaceInfo i vs (CCon fc (NS ["Idris", "Erlang"] (UN "MkRaw")) _ [_, x]) = pure $ !(genExp namespaceInfo i vs x)
  -- ErlAtom
  genCon namespaceInfo i vs (CCon fc (NS ["Atoms", "Erlang"] (UN "MkErlAtom")) _ [x]) = pure $ mkStringToAtom !(genExp namespaceInfo i vs x)
  -- ErlBinary
  genCon namespaceInfo i vs (CCon fc (NS ["Strings", "Erlang"] (UN "MkErlBinary")) _ [x]) = pure $ "unicode:characters_to_binary(" ++ !(genExp namespaceInfo i vs x) ++ ")"
  -- ErlCharlist
  genCon namespaceInfo i vs (CCon fc (NS ["Strings", "Erlang"] (UN "MkErlCharlist")) _ [x]) = pure $ "unicode:characters_to_list(" ++ !(genExp namespaceInfo i vs x) ++ ")"
  -- ErlNil
  genCon namespaceInfo i vs (CCon fc (NS ["MaybeImproperLists", "Erlang"] (UN "Nil")) _ []) = pure "[]"
  -- ErlCons
  genCon namespaceInfo i vs (CCon fc (NS ["MaybeImproperLists", "Erlang"] (UN "::")) _ [_, _, x, y]) = pure $ "[" ++ !(genExp namespaceInfo i vs x) ++ " | " ++ !(genExp namespaceInfo i vs y) ++ "]"
  -- ErlList
  genCon namespaceInfo i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "Nil")) _ []) = pure "[]"
  genCon namespaceInfo i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "::")) _ [_, _, x, xs]) = pure $ "[" ++ !(genExp namespaceInfo i vs x) ++ " | " ++ !(genExp namespaceInfo i vs xs) ++ "]"
  -- ErlTuple/A
  genCon namespaceInfo i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple0")) _ []) = genConTuple namespaceInfo i vs []
  genCon namespaceInfo i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple1")) _ args) = genConTuple namespaceInfo i vs (drop 1 args)
  genCon namespaceInfo i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple2")) _ args) = genConTuple namespaceInfo i vs (drop 2 args)
  genCon namespaceInfo i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple3")) _ args) = genConTuple namespaceInfo i vs (drop 3 args)
  genCon namespaceInfo i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple4")) _ args) = genConTuple namespaceInfo i vs (drop 4 args)
  genCon namespaceInfo i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple5")) _ args) = genConTuple namespaceInfo i vs (drop 5 args)
  -- ErlFun/A
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun0")) _ args) = genConFun namespaceInfo i vs 0 !(expectArgAtIndex 1 args) id
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun1")) _ args) = genConFun namespaceInfo i vs 1 !(expectArgAtIndex 2 args) id
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun2")) _ args) = genConFun namespaceInfo i vs 2 !(expectArgAtIndex 3 args) id
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun3")) _ args) = genConFun namespaceInfo i vs 3 !(expectArgAtIndex 4 args) id
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun4")) _ args) = genConFun namespaceInfo i vs 4 !(expectArgAtIndex 5 args) id
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun5")) _ args) = genConFun namespaceInfo i vs 5 !(expectArgAtIndex 6 args) id
  -- ErlIO/A
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO0")) _ args) = genConFun namespaceInfo i vs 0 !(expectArgAtIndex 1 args) applyUnsafePerformIO
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO1")) _ args) = genConFun namespaceInfo i vs 1 !(expectArgAtIndex 2 args) applyUnsafePerformIO
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO2")) _ args) = genConFun namespaceInfo i vs 2 !(expectArgAtIndex 3 args) applyUnsafePerformIO
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO3")) _ args) = genConFun namespaceInfo i vs 3 !(expectArgAtIndex 4 args) applyUnsafePerformIO
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO4")) _ args) = genConFun namespaceInfo i vs 4 !(expectArgAtIndex 5 args) applyUnsafePerformIO
  genCon namespaceInfo i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO5")) _ args) = genConFun namespaceInfo i vs 5 !(expectArgAtIndex 6 args) applyUnsafePerformIO
  -- Other
  genCon namespaceInfo i vs (CCon fc name tag args) = pure $ genConstructor namespaceInfo name !(traverse (genExp namespaceInfo i vs) args)
  genCon namespaceInfo i vs tm = throw (InternalError ("Invalid constructor: " ++ show tm))

  -- oops, no traverse for Vect in Core
  genArgs : NamespaceInfo -> Int -> SVars vars -> Vect n (CExp vars) -> Core (Vect n String)
  genArgs namespaceInfo i vs [] = pure []
  genArgs namespaceInfo i vs (arg :: args) = pure $ !(genExp namespaceInfo i vs arg) :: !(genArgs namespaceInfo i vs args)

  export
  genExp : NamespaceInfo -> Int -> SVars vars -> CExp vars -> Core String
  genExp namespaceInfo i vs (CLocal fc el) = pure $ lookupSVar el vs
  genExp namespaceInfo i vs (CRef fc (MN n index)) = pure $ genVariableName n index
  genExp namespaceInfo i vs (CRef fc n) = pure $ genFunctionCallName namespaceInfo n
  genExp namespaceInfo i vs (CLam fc x sc) = do
    let vs' = extendSVars [x] vs
    sc' <- genExp namespaceInfo i vs' sc
    pure $ "fun(" ++ lookupSVar First vs' ++ ") -> " ++ sc' ++ " end"
  genExp namespaceInfo i vs (CLet fc x val sc) = do
    let vs' = extendSVars [x] vs
    val' <- genExp namespaceInfo i vs val
    sc' <- genExp namespaceInfo i vs' sc
    pure $ "(fun(" ++ lookupSVar First vs' ++ ") -> " ++ sc' ++ " end(" ++ val' ++ "))"
  genExp namespaceInfo i vs (CApp fc x args) =
    pure $ "(" ++ !(genExp namespaceInfo i vs x) ++ "(" ++ showSep ", " !(traverse (genExp namespaceInfo i vs) args) ++ "))"
  genExp namespaceInfo i vs con@(CCon fc x tag args) =
    genCon namespaceInfo i vs con
  genExp namespaceInfo i vs (COp fc op args) =
    pure $ genOp op !(genArgs namespaceInfo i vs args)
  genExp namespaceInfo i vs (CExtPrim fc p args) =
    genExtPrim namespaceInfo i vs (toPrim p) args
  genExp namespaceInfo i vs (CForce fc t) =
    pure $ "(" ++ !(genExp namespaceInfo i vs t) ++ "())" -- TODO: Should use another mechanism to avoid evaluating delayed computation multiple times
  genExp namespaceInfo i vs (CDelay fc t) =
    pure $ "fun() -> " ++ !(genExp namespaceInfo i vs t) ++ " end"
  genExp namespaceInfo i vs (CConCase fc sc alts def) = do
    tcode <- genExp namespaceInfo i vs sc
    defc <- maybe (pure Nothing) (\v => pure (Just !(genExp namespaceInfo i vs v))) def
    conAlts <- traverse (genConAlt namespaceInfo i vs) alts
    pure $ "(fun " ++
      showSep "; " (conAlts ++ genCaseDef defc) ++
      " end(" ++ tcode ++ "))"
  genExp namespaceInfo i vs (CConstCase fc sc alts def) = do
    defc <- maybe (pure Nothing) (\v => pure (Just !(genExp namespaceInfo i vs v))) def
    tcode <- genExp namespaceInfo i vs sc
    constAlts <- traverse (genConstAlt namespaceInfo i vs) alts
    let isMatchingOnString = case head' alts of
      Just (MkConstAlt (Str _) _) => True
      _ => False
    let matchOnValue = if isMatchingOnString
      then "unicode:characters_to_binary(" ++ tcode ++ ", utf8)"
      else tcode
    pure $ "(fun " ++
      showSep "; " (constAlts ++ genCaseDef defc) ++
      " end(" ++ matchOnValue ++ "))"
  genExp namespaceInfo i vs (CPrimVal fc c) =
    pure $ genConstant c
  genExp namespaceInfo i vs (CErased fc) =
    pure mkErased
  genExp namespaceInfo i vs (CCrash fc msg) =
    pure $ "throw(\"" ++ msg ++ "\")"

  -- Evaluate the outer `ErlList` to figure out the arity of the function call
  readArgs : NamespaceInfo -> Int -> SVars vars -> CExp vars -> Core (List String)
  readArgs namespaceInfo i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "Nil")) _ []) = pure []
  readArgs namespaceInfo i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "::")) _ [_, _, x, xs]) = pure $ !(genExp namespaceInfo i vs x) :: !(readArgs namespaceInfo i vs xs)
  readArgs namespaceInfo i vs tm = throw (InternalError ("Unknown argument to foreign call: " ++ show tm))

  -- External primitives which are common to the scheme codegens (they can be
  -- overridden)
  export
  genExtPrim : NamespaceInfo -> Int -> SVars vars -> ExtPrim -> List (CExp vars) -> Core String
  genExtPrim namespaceInfo i vs CCall [ret, fn, args, world] =
    pure $ "throw(\"Can't compile C FFI calls to Erlang yet\")"
  genExtPrim namespaceInfo i vs SchemeCall [ret, fn, args, world] =
    pure $ "throw(\"Can't compile Scheme FFI calls to Erlang yet\")"
  genExtPrim namespaceInfo i vs PutStr [arg, world] =
    pure $ "(fun() -> 'Idris.RTS-Internal':io_unicode_put_str(" ++ !(genExp namespaceInfo i vs arg) ++ "), " ++ mkWorld namespaceInfo mkUnit ++ " end())"
  genExtPrim namespaceInfo i vs GetStr [world] =
    pure $ mkWorld namespaceInfo "'Idris.RTS-Internal':io_unicode_get_str(\"\")"
  genExtPrim namespaceInfo i vs FileOpen [file, mode, bin, world] =
    pure $ mkWorld namespaceInfo $ "'Idris.RTS-Internal':file_open(" ++ mkEitherBuilder namespaceInfo False ++ ", " ++ mkEitherBuilder namespaceInfo True ++ ", " ++ !(genExp namespaceInfo i vs file) ++ ", " ++ !(genExp namespaceInfo i vs mode) ++ ", " ++ !(genExp namespaceInfo i vs bin) ++ ")"
  genExtPrim namespaceInfo i vs FileClose [file, world] =
    pure $ "(fun() -> 'Idris.RTS-Internal':file_close(" ++ !(genExp namespaceInfo i vs file) ++ "), " ++ mkWorld namespaceInfo mkUnit ++ " end())"
  genExtPrim namespaceInfo i vs FileReadLine [file, world] =
    pure $ mkWorld namespaceInfo $ "'Idris.RTS-Internal':file_read_line(" ++ mkEitherBuilder namespaceInfo False ++ ", " ++ mkEitherBuilder namespaceInfo True ++ ", " ++ !(genExp namespaceInfo i vs file) ++ ")"
  genExtPrim namespaceInfo i vs FileWriteLine [file, str, world] =
    pure $ mkWorld namespaceInfo $ "'Idris.RTS-Internal':file_write_line(" ++ mkEitherBuilder namespaceInfo False ++ ", " ++ mkEitherBuilder namespaceInfo True ++ ", " ++ !(genExp namespaceInfo i vs file) ++ ", " ++ !(genExp namespaceInfo i vs str) ++ ")"
  genExtPrim namespaceInfo i vs FileEOF [file, world] =
    pure $ mkWorld namespaceInfo $ "'Idris.RTS-Internal':file_eof(" ++ !(genExp namespaceInfo i vs file) ++ ")"
  genExtPrim namespaceInfo i vs Stdin [] =
    pure "standard_io"
  genExtPrim namespaceInfo i vs Stdout [] =
    pure "standard_io"
  genExtPrim namespaceInfo i vs Stderr [] =
    pure "standard_error"
  genExtPrim namespaceInfo i vs VoidElim [_, _] =
    pure "throw(\"Error: Executed 'void'\")"
  genExtPrim namespaceInfo i vs (Unknown n) args =
    throw (InternalError ("Can't compile unknown external primitive " ++ show n))
  genExtPrim namespaceInfo i vs ErlUnsafeCall [_, ret, modName, fnName, args@(CCon _ _ _ _), world] = do
    parameterList <- readArgs namespaceInfo i vs args
    pure $ mkWorld namespaceInfo $ "(" ++ mkStringToAtom !(genExp namespaceInfo i vs modName) ++ ":" ++ mkStringToAtom !(genExp namespaceInfo i vs fnName) ++ "(" ++ showSep ", " parameterList ++ "))"
  genExtPrim namespaceInfo i vs ErlUnsafeCall [_, ret, modName, fnName, args, world] =
    pure $ mkWorld namespaceInfo "false" -- TODO: Implement?
  genExtPrim namespaceInfo i vs ErlTryCatch [_, action, world] =
    pure $ mkWorld namespaceInfo $ "(fun() -> try " ++ !(genExp namespaceInfo i vs (applyUnsafePerformIO action)) ++ " of Result -> " ++ mkEither namespaceInfo (Right "Result") ++ " catch Class:Reason:Stacktrace -> " ++ mkEither namespaceInfo (Left "{Class, Reason, Stacktrace}") ++ " end end())"
  genExtPrim namespaceInfo i vs ErlCase [_, def, matchers@(CCon _ _ _ _), term] = do
    clauses <- readMatchers namespaceInfo i 0 vs matchers
    genErlCase namespaceInfo i vs def clauses term
  genExtPrim namespaceInfo i vs ErlCase [_, def, matchers, tm] =
    pure $ mkWorld namespaceInfo "false" -- TODO: Do I need to implement this to make `erlCase` work with variables?
  genExtPrim namespaceInfo i vs ErlReceive [_, timeout, def, matchers@(CCon _ _ _ _), world] = do
    clauses <- readMatchers namespaceInfo i 0 vs matchers
    genErlReceive namespaceInfo i vs timeout def clauses
  genExtPrim namespaceInfo i vs ErlReceive [_, timeout, def, matchers, world] =
    pure $ mkWorld namespaceInfo "false" -- TODO: Do I need to implement this to make `erlReceive` work with variables?
  genExtPrim namespaceInfo i vs ErlModule [] =
    pure "?MODULE"
  genExtPrim namespaceInfo i vs InternalTryCatch [expr] =
    pure $ mkTryCatch !(genExp namespaceInfo i vs expr)
  genExtPrim namespaceInfo i vs prim args =
    throw (InternalError ("Badly formed external primitive " ++ show prim ++ " " ++ show args))

  data GuardBinOp = LTE | LT | EQ | GT | GTE

  data ErlGuard : List Name -> Type where
    IsAny     : ErlGuard vars
    IsInteger : CExp vars -> ErlGuard vars
    IsDouble  : CExp vars -> ErlGuard vars
    IsBinary  : CExp vars -> ErlGuard vars
    IsList    : CExp vars -> ErlGuard vars
    IsAtom    : CExp vars -> ErlGuard vars
    IsMap     : CExp vars -> ErlGuard vars
    IsPid     : CExp vars -> ErlGuard vars
    IsRef     : CExp vars -> ErlGuard vars
    IsPort    : CExp vars -> ErlGuard vars
    IsFun     : Nat -> CExp vars -> ErlGuard vars
    IsBinOp   : GuardBinOp -> CExp vars -> CExp vars -> ErlGuard vars
    AndAlso   : ErlGuard vars -> ErlGuard vars -> ErlGuard vars
    OrElse    : ErlGuard vars -> ErlGuard vars -> ErlGuard vars

  record ErlClause (vars : List Name) where
    constructor MkErlClause
    nextLocal : Int
    globals : List (CExp vars)
    pattern : String
    guard : ErlGuard vars
    body : CExp vars

  concatGlobals : List (ErlClause vars) -> List (CExp vars)
  concatGlobals clauses = clauses >>= globals

  concatGuards : List (ErlClause vars) -> ErlGuard vars
  concatGuards clauses = foldl AndAlso IsAny (map guard clauses)

  nextGlobal : (global : Int) -> List (ErlClause vars) -> Int
  nextGlobal global clauses = global + cast (length (concatGlobals clauses))

  readMatchers : NamespaceInfo -> Int -> (global : Int) -> SVars vars -> CExp vars -> Core (List (ErlClause vars))
  readMatchers namespaceInfo i global vs (CCon fc (NS ["Prelude"] (UN "Nil")) _ _) = pure []
  readMatchers namespaceInfo i global vs (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = do
    first <- readClause namespaceInfo i 0 global vs x
    rest <- readMatchers namespaceInfo i (nextGlobal global [first]) vs xs
    pure (first :: rest)
  readMatchers namespaceInfo i global vs args =
    throw (InternalError ("Expected a list of matchers " ++ show args))

  readListLength : Int -> SVars vars -> CExp vars -> Core Nat
  readListLength i vs (CCon fc (NS ["Prelude"] (UN "Nil")) _ _) = pure 0
  readListLength i vs (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = do
    tailLength <- readListLength i vs xs
    pure (1 + tailLength)
  readListLength i vs args =
    throw (InternalError ("Expected a list of types " ++ show args))

  createGuardClause : NamespaceInfo -> Int -> (local : Int) -> (global : Int) -> SVars vars -> (createGuard : CExp vars -> ErlGuard vars) -> Core (ErlClause vars)
  createGuardClause namespaceInfo i local global vs createGuard = do
    let ref = CRef EmptyFC (MN "C" local)
    pure $ MkErlClause (local + 1) [] !(genExp namespaceInfo i vs ref) (createGuard ref) ref

  readClause : NamespaceInfo -> Int -> (local : Int) -> (global : Int) -> SVars vars -> CExp vars -> Core (ErlClause vars)
  -- MExact
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MExact")) _ [_, _, matchValue]) = do
    let localRef = CRef EmptyFC (MN "C" global)
    let globalRef = CRef EmptyFC (MN "G" global)
    pure $ MkErlClause (local + 1) [matchValue] !(genExp namespaceInfo i vs localRef) (IsBinOp EQ localRef globalRef) unitCExp
  -- MAny
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAny")) _ []) = do
    let ref = CRef EmptyFC (MN "C" local)
    pure $ MkErlClause (local + 1) [] !(genExp namespaceInfo i vs ref) IsAny ref
  -- Simple guards
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MCodepoint")) _ []) = createGuardClause namespaceInfo i local global vs
    (\val => AndAlso (IsInteger val) (AndAlso (IsBinOp GTE val (CPrimVal EmptyFC (BI 0))) (IsBinOp LTE val (CPrimVal EmptyFC (BI 0x10FFFF)))))
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MInteger")) _ []) = createGuardClause namespaceInfo i local global vs IsInteger
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MDouble")) _ []) = createGuardClause namespaceInfo i local global vs IsDouble
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAtom")) _ []) = createGuardClause namespaceInfo i local global vs IsAtom
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MBinary")) _ []) = createGuardClause namespaceInfo i local global vs IsBinary
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMap")) _ []) = createGuardClause namespaceInfo i local global vs IsMap
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MPid")) _ []) = createGuardClause namespaceInfo i local global vs IsPid
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MRef")) _ []) = createGuardClause namespaceInfo i local global vs IsRef
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MPort")) _ []) = createGuardClause namespaceInfo i local global vs IsPort
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAnyList")) _ []) = createGuardClause namespaceInfo i local global vs IsList
  -- MNil
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MNil")) _ []) =
    pure $ MkErlClause local [] "[]" IsAny unitCExp
  -- MCons
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MCons")) _ [_, _, _, headMatcher, tailMatcher, mapper]) = do
    headClause <- readClause namespaceInfo i local global vs headMatcher
    tailClause <- readClause namespaceInfo i (nextLocal headClause) (nextGlobal global [headClause]) vs tailMatcher
    pure $ MkErlClause (nextLocal tailClause) (concatGlobals [headClause, tailClause])
      ("[" ++ pattern headClause ++ " | " ++ pattern tailClause ++ "]")
      (concatGuards [headClause, tailClause])
      (CApp EmptyFC (CApp EmptyFC mapper [body headClause]) [body tailClause])
  -- MList
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MList")) _ [_, _, xs, mapper]) = do
    clauses <- readClauseErlMatchers namespaceInfo i local global vs xs mapper
    let nextLoc = maybe local nextLocal (last' clauses)
    pure $ MkErlClause nextLoc (concatGlobals clauses)
      ("[" ++ showSep ", " (map pattern clauses) ++ "]")
      (concatGuards clauses)
      (applyToArgs mapper (map body clauses))
  -- MTuple
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MTuple")) _ [_, _, xs, mapper]) = do
    clauses <- readClauseErlMatchers namespaceInfo i local global vs xs mapper
    let nextLoc = maybe local nextLocal (last' clauses)
    pure $ MkErlClause nextLoc (concatGlobals clauses)
      ("{" ++ showSep ", " (map pattern clauses) ++ "}")
      (concatGuards clauses)
      (applyToArgs mapper (map body clauses))
  -- MMapSubset
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMapSubset")) _ [_, _, xs, mapper]) = do
    clauses <- readClauseErlMatchers namespaceInfo i local global vs xs mapper
    let nextLoc = maybe local nextLocal (last' clauses)
    pure $ MkErlClause nextLoc (concatGlobals clauses)
      ("#{" ++ showSep ", " (map pattern clauses) ++ "}")
      (concatGuards clauses)
      (applyToArgs mapper (map body clauses))
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MkErlMapEntry")) _ [_, _, _, key, valueMatcher]) = do
    let globalRef = CRef EmptyFC (MN "G" global)
    clause <- readClause namespaceInfo i local (global + 1) vs valueMatcher
    pure $ MkErlClause (nextLocal clause) (key :: globals clause) (!(genExp namespaceInfo i vs globalRef) ++ " := " ++ (pattern clause)) (guard clause) (body clause)
  -- MIO
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MIO")) _ [types]) = do
    let ref = CRef EmptyFC (MN "C" local)
    arity <- readListLength i vs types
    let tempVars = take arity $ zipWith (\name, idx => MN name idx) (repeat "M") [0..]
    pure $ MkErlClause local [] !(genExp namespaceInfo i vs ref) (IsFun arity ref) (curryCExp tempVars (ioPureCExp . tryCatchCExp) ref)
  -- MError
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MError")) _ [_, matcher]) = do
    clause <- readClause namespaceInfo i local global vs matcher
    pure $ MkErlClause (nextLocal clause) (globals clause) ("{" ++ mkIdrisRtsExceptionAtom ++ ", " ++ pattern clause ++ "}") (guard clause) (body clause)
  -- MMapper
  readClause namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMapper")) _ [_, _, matcher, mapper]) = do
    clause <- readClause namespaceInfo i local global vs matcher
    pure $ MkErlClause (nextLocal clause) (globals clause) (pattern clause) (guard clause) (CApp EmptyFC mapper [body clause])
  -- Other
  readClause namespaceInfo i local global vs matcher =
    throw (InternalError ("Badly formed clause " ++ show matcher))

  readClauseErlMatchers : NamespaceInfo -> Int -> (local : Int) -> (global : Int) -> SVars vars -> CExp vars -> (mapper : CExp vars) -> Core (List (ErlClause vars))
  readClauseErlMatchers namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "Nil")) _ _) mapper = pure []
  readClauseErlMatchers namespaceInfo i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "::")) _ [_, _, _, x, xs]) mapper = do
    first <- readClause namespaceInfo i local global vs x
    rest <- readClauseErlMatchers namespaceInfo i (nextLocal first) (nextGlobal global [first]) vs xs mapper
    pure (first :: rest)
  readClauseErlMatchers namespaceInfo i local global vs args mapper =
    throw (InternalError ("Badly formed ErlMatchers " ++ show args))

  genGuard : NamespaceInfo -> Int -> SVars vars -> ErlGuard vars -> Core String
  genGuard namespaceInfo i vs IsAny = pure "true"
  genGuard namespaceInfo i vs (IsInteger ref) = pure $ "is_integer(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsDouble ref) = pure $ "is_float(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsBinary ref) = pure $ "is_binary(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsList ref) = pure $ "is_list(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsAtom ref) = pure $ "is_atom(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsMap ref) = pure $ "is_map(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsPid ref) = pure $ "is_pid(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsRef ref) = pure $ "is_reference(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsPort ref) = pure $ "is_port(" ++ !(genExp namespaceInfo i vs ref) ++ ")"
  genGuard namespaceInfo i vs (IsFun arity ref) = pure $ "is_function(" ++ !(genExp namespaceInfo i vs ref) ++ ", " ++ show arity ++ ")"
  genGuard namespaceInfo i vs (IsBinOp LTE ref1 ref2) = pure $ !(genExp namespaceInfo i vs ref1) ++ " =< " ++ !(genExp namespaceInfo i vs ref2)
  genGuard namespaceInfo i vs (IsBinOp LT ref1 ref2) = pure $ !(genExp namespaceInfo i vs ref1) ++ " < " ++ !(genExp namespaceInfo i vs ref2)
  genGuard namespaceInfo i vs (IsBinOp EQ ref1 ref2) = pure $ !(genExp namespaceInfo i vs ref1) ++ " =:= " ++ !(genExp namespaceInfo i vs ref2)
  genGuard namespaceInfo i vs (IsBinOp GT ref1 ref2) = pure $ !(genExp namespaceInfo i vs ref1) ++ " > " ++ !(genExp namespaceInfo i vs ref2)
  genGuard namespaceInfo i vs (IsBinOp GTE ref1 ref2) = pure $ !(genExp namespaceInfo i vs ref1) ++ " >= " ++ !(genExp namespaceInfo i vs ref2)
  genGuard namespaceInfo i vs (AndAlso g1 g2) = pure $ "(" ++ !(genGuard namespaceInfo i vs g1) ++ " andalso " ++ !(genGuard namespaceInfo i vs g2) ++ ")"
  genGuard namespaceInfo i vs (OrElse g1 g2) = pure $ "(" ++ !(genGuard namespaceInfo i vs g1) ++ " orelse " ++ !(genGuard namespaceInfo i vs g2) ++ ")"

  genClause : NamespaceInfo -> Int -> SVars vars -> ErlClause vars -> Core String
  genClause namespaceInfo i vs (MkErlClause _ _ pattern guard body) =
    pure $ "(" ++ pattern ++ ") when " ++ !(genGuard namespaceInfo i vs guard) ++ " -> " ++ !(genExp namespaceInfo i vs body)

  genErlCase : NamespaceInfo -> Int -> SVars vars -> (def : CExp vars) -> List (ErlClause vars) -> (term : CExp vars) -> Core String
  genErlCase namespaceInfo i vs def clauses term = do
    globalValues <- traverse (genExp namespaceInfo i vs) (concatGlobals clauses)
    let globalVars = take (length globalValues) $ (zipWith (\name, idx => name ++ show idx) (repeat "G_") [0..])
    clausesStr <- traverse (genClause namespaceInfo i vs) clauses
    defStr <- pure $ "(_) -> " ++ !(genExp namespaceInfo i vs def)
    pure $ "(fun(" ++ showSep ", " globalVars ++") -> " ++
      "(fun " ++
      showSep "; " (clausesStr ++ [defStr]) ++
      " end(" ++ !(genExp namespaceInfo i vs term) ++ "))" ++
      " end(" ++ showSep ", " globalValues ++ "))"

  genErlReceive : NamespaceInfo -> Int -> SVars vars -> (timeout : CExp vars) -> (def : CExp vars) -> List (ErlClause vars) -> Core String
  genErlReceive namespaceInfo i vs timeout def clauses = do
    globalValues <- traverse (genExp namespaceInfo i vs) (concatGlobals clauses)
    let globalVars = take (length globalValues) $ (zipWith (\name, idx => name ++ show idx) (repeat "G_") [0..])
    clausesStr <- traverse (genClause namespaceInfo i vs) clauses
    pure $ mkWorld namespaceInfo $ "(fun(" ++ showSep ", " globalVars ++") -> " ++
      "(receive " ++
      showSep "; " clausesStr ++
      " after " ++ !(genExp namespaceInfo i vs timeout) ++ " -> " ++ !(genExp namespaceInfo i vs def) ++ " end)" ++
      " end(" ++ showSep ", " globalValues ++ "))"

genArglist : SVars ns -> String
genArglist [] = ""
genArglist [x] = x
genArglist (x :: xs) = x ++ ", " ++ genArglist xs

genDef : {auto c : Ref Ctxt Defs} -> (prefix : String) -> Name -> CDef -> Core (Maybe (Namespace, String))
genDef prefix name (MkFun args exp) = do
  let vs = initSVars args
  n <- getFullName name
  let ns = getNamespace n
  let def = genFunctionDefName prefix n ++ "(" ++ genArglist vs ++ ") -> " ++ !(genExp (MkNamespaceInfo prefix (Just ns)) 0 vs exp) ++ ".\n"
  pure $ Just (ns, def)
genDef prefix name (MkError exp) = do
  n <- getFullName name
  let ns = getNamespace n
  let def = genFunctionDefName prefix n ++ "() -> " ++ !(genExp (MkNamespaceInfo prefix (Just ns)) 0 [] exp) ++ ".\n"
  pure $ Just (ns, def)
genDef prefix name (MkForeign _ _ _) =
  pure Nothing -- compiled by specific back end
genDef prefix name (MkCon t a) =
  pure Nothing -- Nothing to compile here

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

genExports : NamespaceInfo -> Int -> SVars vars -> CExp vars -> Core (List (String, Nat, String))
genExports namespaceInfo i vs (CCon fc (NS ["IO", "Erlang"] (UN "Fun")) _ [_, exprTy, name, expr]) = do
  let intArity = internalArity exprTy
  let extArity = externalArity intArity
  let funcName = stripErlangString !(genExp namespaceInfo i vs name)
  let vars = take extArity $ zipWith (\name, idx => name ++ show idx) (repeat "E_") [0..]
  let invocation =
    case intArity of
      Value => ""
      Arity => "(" ++ showSep ", " vars ++ ")"
  let funcDecl = funcName ++ "(" ++ showSep ", " vars ++ ") -> " ++ !(genExp namespaceInfo i vs expr) ++ invocation ++ "."
  pure $ [(funcName, extArity, funcDecl)]
genExports namespaceInfo i vs (CCon fc (NS ["IO", "Erlang"] (UN "Combine")) _ [exports1, exports2]) =
  pure $ !(genExports namespaceInfo i vs exports1) ++ !(genExports namespaceInfo i vs exports2)
genExports namespaceInfo i vs tm = throw (InternalError ("Invalid export: " ++ show tm))

getCompileExpr : {auto c : Ref Ctxt Defs} -> Name -> Core CDef
getCompileExpr name = do
  defs <- get Ctxt
  Just globalDef <- lookupCtxtExact name (gamma defs)
    | throw (InternalError ("Compiling undefined name " ++ show name))
  let Just expr = compexpr globalDef
    | throw (InternalError ("No compiled definition for " ++ show name))
  pure expr

-- Convert the name to Erlang code
-- (There may be no code generated, for example if it's a constructor)
export
genErlang : {auto c : Ref Ctxt Defs} -> (prefix : String) -> Name -> Core (Maybe (Namespace, String))
genErlang prefix name = do
  expr <- getCompileExpr name
  genDef prefix name expr

export
genErlangExports : {auto c : Ref Ctxt Defs} -> NamespaceInfo -> Name -> Core (String, String)
genErlangExports namespaceInfo name = do
  MkFun args expr <- getCompileExpr name
    | throw (InternalError ("Expected function definition for " ++ show name)) 
  let vs = initSVars args
  exports <- genExports namespaceInfo 0 vs expr
  let exportDirectives = "-export([" ++ showSep ", " (map (\(name, arity, _) => name ++ "/" ++ show arity) exports) ++ "]).\n"
  let exportFuncs = showSep "\n" (map (\(_, _, funcDef) => funcDef) exports)
  pure (exportDirectives, exportFuncs)
