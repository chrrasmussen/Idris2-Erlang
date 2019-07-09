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

escapeAtomChars : String -> String
escapeAtomChars s = concatMap okchar (unpack s)
  where
    okchar : Char -> String
    okchar '\\' = "\\\\"
    okchar '\'' = "\\'"
    okchar c = cast c

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

moduleNameFromNS : List String -> String
moduleNameFromNS ns = showSep "." ("Idris" :: reverse ns)

genModuleName : Name -> String
genModuleName n = moduleNameFromNS (getNamespace n)

genModuleNameFunctionName : Name -> (String, String)
genModuleNameFunctionName n@(NS ns dcons) = (genModuleName n, genName dcons)
genModuleNameFunctionName n = (genModuleName n, genName n)

genFunctionCallName : Name -> String
genFunctionCallName n =
  let (modName, fnName) = genModuleNameFunctionName n
  in "'" ++ escapeAtomChars modName ++ "--" ++ escapeAtomChars fnName ++ "'"

genFunctionDefName : Name -> String
genFunctionDefName n =
  let (modName, fnName) = genModuleNameFunctionName n
  in "'" ++ escapeAtomChars modName ++ "--" ++ escapeAtomChars fnName ++ "'"

genVariableName : String -> Int -> String
genVariableName n i = genName (MN n i)

genConstructorName : Name -> String
genConstructorName (NS ns (UN dcons)) =
  let modName = moduleNameFromNS ns
  in "'" ++ escapeAtomChars modName ++ "." ++ escapeAtomChars dcons ++ "'"
genConstructorName (UN dcons) =
  let modName = moduleNameFromNS []
  in "'" ++ escapeAtomChars modName ++ "." ++ escapeAtomChars dcons ++ "'"
genConstructorName n =
  let (modName, fnName) = genModuleNameFunctionName n
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
genConstructor : Name -> List String -> String
genConstructor name args = "{" ++ showSep ", " (genConstructorName name :: args) ++ "}"

op : String -> List String -> String
op o args = o ++ "(" ++ showSep ", " args ++ ")"

infixop : String -> String -> String -> String
infixop o x y = "(" ++ x ++ " " ++ o ++ " " ++ y ++ ")"

boolToInt : String -> String
boolToInt condition = "case " ++ condition ++ " of false -> 0; _ -> 1 end"

genOp : PrimFn arity -> Vect arity String -> String
genOp (Add IntType) [x, y] = op "idris_rts_int_add" [x, y, "63"]
genOp (Sub IntType) [x, y] = op "idris_rts_int_sub" [x, y, "63"]
genOp (Mul IntType) [x, y] = op "idris_rts_int_mult" [x, y, "63"]
genOp (Div IntType) [x, y] = op "idris_rts_int_div" [x, y, "63"]
genOp (Add ty) [x, y] = infixop "+" x y
genOp (Sub ty) [x, y] = infixop "-" x y
genOp (Mul ty) [x, y] = infixop "*" x y
genOp (Div IntegerType) [x, y] = infixop "div" x y -- NOTE: Is allowed to be partial
genOp (Div ty) [x, y] = infixop "/" x y -- NOTE: Is allowed to be partial
genOp (Mod ty) [x, y] = infixop "rem" x y -- NOTE: Is allowed to be partial -- TODO: Can `x` and `y` be floating point? `rem` does not work on floating points
genOp (Neg ty) [x] = op "-" [x]
genOp (ShiftL ty) [x, y] = infixop "bsl" x y
genOp (ShiftR ty) [x, y] = infixop "bsr" x y
genOp (LT StringType) [x, y] = op "idris_rts_unicode_string_lt" [x, y]
genOp (LTE StringType) [x, y] = op "idris_rts_unicode_string_lte" [x, y]
genOp (EQ StringType) [x, y] = op "idris_rts_unicode_string_eq" [x, y]
genOp (GTE StringType) [x, y] = op "idris_rts_unicode_string_gte" [x, y]
genOp (GT StringType) [x, y] = op "idris_rts_unicode_string_gt" [x, y]
genOp (LT ty) [x, y] = boolToInt (infixop "<" x y)
genOp (LTE ty) [x, y] = boolToInt (infixop "=<" x y)
genOp (EQ ty) [x, y] = boolToInt (infixop "=:=" x y)
genOp (GTE ty) [x, y] = boolToInt (infixop ">=" x y)
genOp (GT ty) [x, y] = boolToInt (infixop ">" x y)
genOp StrLength [x] = op "idris_rts_unicode_string_length" [x]
genOp StrHead [x] = op "idris_rts_unicode_string_head" [x]
genOp StrTail [x] = op "idris_rts_unicode_string_tail" [x]
genOp StrIndex [x, i] = op "idris_rts_unicode_string_index" [x, i]
genOp StrCons [x, y] = op "idris_rts_unicode_string_cons" [x, y]
genOp StrAppend [x, y] = op "idris_rts_unicode_string_append" [x, y]
genOp StrReverse [x] = op "idris_rts_unicode_string_reverse" [x]
genOp StrSubstr [x, y, z] = op "idris_rts_unicode_string_substr" [x, y, z]

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

genOp (Cast IntegerType IntType) [x] = op "idris_rts_integer_to_int" [x]
genOp (Cast IntegerType DoubleType) [x] = op "idris_rts_integer_to_double" [x]
genOp (Cast IntegerType StringType) [x] = op "idris_rts_integer_to_string" [x]

genOp (Cast IntType IntegerType) [x] = op "idris_rts_int_to_integer" [x]
genOp (Cast IntType DoubleType) [x] = op "idris_rts_int_to_double" [x]
genOp (Cast IntType CharType) [x] = op "idris_rts_int_to_char" [x]
genOp (Cast IntType StringType) [x] = op "idris_rts_int_to_string" [x]

genOp (Cast DoubleType IntegerType) [x] = op "idris_rts_double_to_integer" [x]
genOp (Cast DoubleType IntType) [x] = op "idris_rts_double_to_int" [x]
genOp (Cast DoubleType StringType) [x] = op "idris_rts_double_to_string" [x]

genOp (Cast CharType IntegerType) [x] = op "idris_rts_char_to_integer" [x]
genOp (Cast CharType IntType) [x] = op "idris_rts_char_to_int" [x]
genOp (Cast CharType StringType) [x] = op "idris_rts_char_to_string" [x]

genOp (Cast StringType IntegerType) [x] = op "idris_rts_string_to_integer" [x]
genOp (Cast StringType IntType) [x] = op "idris_rts_string_to_int" [x]
genOp (Cast StringType DoubleType) [x] = op "idris_rts_string_to_double" [x]

genOp (Cast from to) [x] = "throw(\"Invalid cast " ++ show from ++ "->" ++ show to ++ "\")"

genOp BelieveMe [_, _, x] = x

public export
data ExtPrim
  = CCall | SchemeCall -- TODO: Remove these
  | PutStr | GetStr
  | FileOpen | FileClose | FileReadLine | FileWriteLine | FileEOF
  | NewIORef | ReadIORef | WriteIORef
  | Stdin | Stdout | Stderr
  | VoidElim | Unknown Name
  | ErlUnsafeCall | ErlCall | ErlCase | ErlReceive
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
  show NewIORef = "NewIORef"
  show ReadIORef = "ReadIORef"
  show WriteIORef = "WriteIORef"
  show Stdin = "Stdin"
  show Stdout = "Stdout"
  show Stderr = "Stderr"
  show VoidElim = "VoidElim"
  show (Unknown n) = "Unknown " ++ show n
  show ErlUnsafeCall = "ErlUnsafeCall"
  show ErlCall = "ErlCall"
  show ErlCase = "ErlCase"
  show ErlReceive = "ErlReceive"
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
  (n == UN "prim__newIORef", NewIORef),
  (n == UN "prim__readIORef", ReadIORef),
  (n == UN "prim__writeIORef", WriteIORef),
  (n == UN "prim__stdin", Stdin),
  (n == UN "prim__stdout", Stdout),
  (n == UN "prim__stderr", Stderr),
  (n == UN "void", VoidElim),
  (n == UN "prim__erlUnsafeCall", ErlUnsafeCall),
  (n == UN "prim__erlCall", ErlCall),
  (n == UN "prim__erlCase", ErlCase),
  (n == UN "prim__erlReceive", ErlReceive),
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

-- PrimIO.MkIORes : {0 a : Type} -> a -> (1 x : %World) -> IORes a
export
mkWorld : String -> String
mkWorld res = genConstructor (NS ["PrimIO"] (UN "MkIORes")) [mkErased, res, "false"]

-- io_pure : {0 a : Type} -> a -> IO a
-- io_pure {a} x = MkIO {a} (\1 w : %World => (MkIORes {a} x w))
--
-- ns_PrimIO_un_io_pure(V_0, V_1) -> {0, erased, fun(V_2) -> {0, erased, V_1, V_2} end}.
mkIOPure : String -> String
mkIOPure val =
  genConstructor (NS ["PrimIO"] (UN "MkIO")) [mkErased, "fun(World) -> " ++ genConstructor (NS ["PrimIO"] (UN "MkIORes")) [mkErased, val, "World"] ++ " end"]


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

  genConAltTuple : Int -> SVars vars -> (args : List Name) -> CExp (args ++ vars) -> (arity : Nat) -> Core String
  genConAltTuple i vs args sc arity = do
    let vs' = extendSVars args vs
    pure $ "({" ++ showSep ", " (drop arity $ bindArgs 1 args vs') ++ "}) -> " ++ !(genExp i vs' sc)

  -- Given an Erlang function `ErlangFunc` with arity 2:
  -- 1. Curries this function according to arity: fun(X_0) -> fun(X_1) -> ErlangFunc(X_0, X_1) end end
  -- 2. Transform the inner result with a user-defined function: fun(X_0) -> fun(X_1) -> `Transformer`(ErlangFunc(X_0, X_1)) end end
  -- The transformer is specifically used to lift the value into the IO monad
  genConAltFun : Int -> SVars vars -> (args : List Name) -> CExp (args ++ vars) -> (arity : Nat) -> (String -> String) -> Core String
  genConAltFun i vs args sc arity transformer = do
    let vs' = extendSVars args vs
    let tempVars = take arity $ zipWith (\name, idx => name ++ show idx) (repeat "X_") [0..]
    pure  $ "(Func) -> " ++ mkUncurriedFun (drop (S arity) $ bindArgs 1 args vs') !(genExp i vs' sc) ++ "(" ++ mkCurriedFun tempVars (transformer ("Func(" ++ showSep ", " tempVars ++ ")")) ++ ")"

  genConAlt : Int -> SVars vars -> CConAlt vars -> Core String
  -- Unit
  genConAlt i vs (MkConAlt (NS ["Builtin"] (UN "MkUnit")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ mkUnit ++ ") -> " ++ !(genExp i vs' sc)
  -- Bool
  genConAlt i vs (MkConAlt (NS ["Prelude"] (UN "True")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(true) -> " ++ !(genExp i vs' sc)
  genConAlt i vs (MkConAlt (NS ["Prelude"] (UN "False")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(false) -> " ++ !(genExp i vs' sc)
  -- List
  genConAlt i vs (MkConAlt (NS ["Prelude"] (UN "Nil")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([]) -> " ++ !(genExp i vs' sc)
  genConAlt i vs (MkConAlt (NS ["Prelude"] (UN "::")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([" ++ showSep " | " (drop 1 $ bindArgs 1 args vs') ++ "]) -> " ++ !(genExp i vs' sc)
  -- Raw
  genConAlt i vs (MkConAlt (NS ["Idris", "Erlang"] (UN "MkRaw")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ !(expectArgAtIndex 1 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp i vs' sc)
  -- ErlAtom
  genConAlt i vs (MkConAlt (NS ["Atoms", "Erlang"] (UN "MkErlAtom")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(Atom) -> fun(" ++ !(expectArgAtIndex 0 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp i vs' sc) ++ " end(atom_to_binary(Atom, utf8))"
  -- ErlBinary
  genConAlt i vs (MkConAlt (NS ["Strings", "Erlang"] (UN "MkErlBinary")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ !(expectArgAtIndex 0 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp i vs' sc)
  -- ErlAtom
  genConAlt i vs (MkConAlt (NS ["Strings", "Erlang"] (UN "MkErlCharlist")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "(" ++ !(expectArgAtIndex 0 (bindArgs 1 args vs')) ++ ") -> " ++ !(genExp i vs' sc)
  -- ErlNil
  genConAlt i vs (MkConAlt (NS ["MaybeImproperLists", "Erlang"] (UN "Nil")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([]) -> " ++ !(genExp i vs' sc)
  -- ErlCons
  genConAlt i vs (MkConAlt (NS ["MaybeImproperLists", "Erlang"] (UN "::")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([" ++ showSep " | " (drop 2 $ bindArgs 1 args vs') ++ "]) -> " ++ !(genExp i vs' sc)
  -- ErlList
  genConAlt i vs (MkConAlt (NS ["ProperLists", "Erlang"] (UN "Nil")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([]) -> " ++ !(genExp i vs' sc)
  genConAlt i vs (MkConAlt (NS ["ProperLists", "Erlang"] (UN "::")) tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "([" ++ showSep " | " (drop 2 $ bindArgs 1 args vs') ++ "]) -> " ++ !(genExp i vs' sc)
  -- ErlTuple/A
  genConAlt i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple0")) tag args sc) = genConAltTuple i vs args sc 0
  genConAlt i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple1")) tag args sc) = genConAltTuple i vs args sc 1
  genConAlt i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple2")) tag args sc) = genConAltTuple i vs args sc 2
  genConAlt i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple3")) tag args sc) = genConAltTuple i vs args sc 3
  genConAlt i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple4")) tag args sc) = genConAltTuple i vs args sc 4
  genConAlt i vs (MkConAlt (NS ["Tuples", "Erlang"] (UN "MkErlTuple5")) tag args sc) = genConAltTuple i vs args sc 5
  -- ErlFun/A
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun0")) tag args sc) = genConAltFun i vs args sc 0 id
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun1")) tag args sc) = genConAltFun i vs args sc 1 id
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun2")) tag args sc) = genConAltFun i vs args sc 2 id
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun3")) tag args sc) = genConAltFun i vs args sc 3 id
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun4")) tag args sc) = genConAltFun i vs args sc 4 id
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlFun5")) tag args sc) = genConAltFun i vs args sc 5 id
  -- ErlIO/A
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO0")) tag args sc) = genConAltFun i vs args sc 0 mkIOPure
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO1")) tag args sc) = genConAltFun i vs args sc 1 mkIOPure
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO2")) tag args sc) = genConAltFun i vs args sc 2 mkIOPure
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO3")) tag args sc) = genConAltFun i vs args sc 3 mkIOPure
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO4")) tag args sc) = genConAltFun i vs args sc 4 mkIOPure
  genConAlt i vs (MkConAlt (NS ["Functions", "Erlang"] (UN "MkErlIO5")) tag args sc) = genConAltFun i vs args sc 5 mkIOPure
  -- Other
  genConAlt i vs (MkConAlt name tag args sc) = do
    let vs' = extendSVars args vs
    pure $ "({" ++ showSep ", " (genConstructorName name :: bindArgs 1 args vs') ++ "}) -> " ++ !(genExp i vs' sc)

  genConstAlt : Int -> SVars vars -> CConstAlt vars -> Core String
  genConstAlt i vs (MkConstAlt c exp) = pure $ "(" ++ genConstant c ++ ") -> " ++ !(genExp i vs exp)

  genConTuple : Int -> SVars vars -> List (CExp vars) -> Core String
  genConTuple i vs args = pure $ "{" ++ showSep ", " !(traverse (genExp i vs) args) ++ "}"

  -- Given an Idris function `idrisFun` with arity 2:
  -- 1. Uncurries this function according to arity: fun(X_0, X_1) -> (idrisFun(X_0))(X_1) end
  -- 2. Transform the inner result with a user-defined function: fun(X_0, X_1) -> `transform`((idrisFun(X_0))(X_1)) end
  -- The transformer is specifically used to perform the side-effects of the result (using `unsafePerformIO`)
  genConFun : Int -> SVars vars -> (arity : Nat) -> CExp vars -> (CExp vars -> CExp vars) -> Core String
  genConFun i vs arity func transformer = do
    let tempVars = take arity $ zipWith (\name, idx => name ++ show idx) (repeat "X_") [0..]
    let tempCRefs = take arity $ zipWith (\name, idx => CRef EmptyFC (MN name idx)) (repeat "X") [0..]
    let body = transformer (applyToArgs func tempCRefs)
    pure $ mkUncurriedFun tempVars !(genExp i vs body)

  genCon : Int -> SVars vars -> CExp vars -> Core String
  -- Unit
  genCon i vs (CCon fc (NS ["Builtin"] (UN "MkUnit")) _ _) = pure mkUnit
  -- Bool
  genCon i vs (CCon fc (NS ["Prelude"] (UN "True")) _ _) = pure "true"
  genCon i vs (CCon fc (NS ["Prelude"] (UN "False")) _ _) = pure "false"
  -- List
  genCon i vs (CCon fc (NS ["Prelude"] (UN "Nil")) _ _) = pure "[]"
  genCon i vs (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = pure $ "[" ++ !(genExp i vs x) ++ " | " ++ !(genExp i vs xs) ++ "]"
  -- Raw
  genCon i vs (CCon fc (NS ["Idris", "Erlang"] (UN "MkRaw")) _ [_, x]) = pure $ !(genExp i vs x)
  -- ErlAtom
  genCon i vs (CCon fc (NS ["Atoms", "Erlang"] (UN "MkErlAtom")) _ [x]) = pure $ mkStringToAtom !(genExp i vs x)
  -- ErlBinary
  genCon i vs (CCon fc (NS ["Strings", "Erlang"] (UN "MkErlBinary")) _ [x]) = pure $ "unicode:characters_to_binary(" ++ !(genExp i vs x) ++ ")"
  -- ErlCharlist
  genCon i vs (CCon fc (NS ["Strings", "Erlang"] (UN "MkErlCharlist")) _ [x]) = pure $ "unicode:characters_to_list(" ++ !(genExp i vs x) ++ ")"
  -- ErlNil
  genCon i vs (CCon fc (NS ["MaybeImproperLists", "Erlang"] (UN "Nil")) _ []) = pure "[]"
  -- ErlCons
  genCon i vs (CCon fc (NS ["MaybeImproperLists", "Erlang"] (UN "::")) _ [_, _, x, y]) = pure $ "[" ++ !(genExp i vs x) ++ " | " ++ !(genExp i vs y) ++ "]"
  -- ErlList
  genCon i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "Nil")) _ []) = pure "[]"
  genCon i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "::")) _ [_, _, x, xs]) = pure $ "[" ++ !(genExp i vs x) ++ " | " ++ !(genExp i vs xs) ++ "]"
  -- ErlTuple/A
  genCon i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple0")) _ []) = genConTuple i vs []
  genCon i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple1")) _ args) = genConTuple i vs (drop 1 args)
  genCon i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple2")) _ args) = genConTuple i vs (drop 2 args)
  genCon i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple3")) _ args) = genConTuple i vs (drop 3 args)
  genCon i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple4")) _ args) = genConTuple i vs (drop 4 args)
  genCon i vs (CCon fc (NS ["Tuples", "Erlang"] (UN "MkErlTuple5")) _ args) = genConTuple i vs (drop 5 args)
  -- ErlFun/A
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun0")) _ args) = genConFun i vs 0 !(expectArgAtIndex 1 args) id
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun1")) _ args) = genConFun i vs 1 !(expectArgAtIndex 2 args) id
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun2")) _ args) = genConFun i vs 2 !(expectArgAtIndex 3 args) id
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun3")) _ args) = genConFun i vs 3 !(expectArgAtIndex 4 args) id
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun4")) _ args) = genConFun i vs 4 !(expectArgAtIndex 5 args) id
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlFun5")) _ args) = genConFun i vs 5 !(expectArgAtIndex 6 args) id
  -- ErlIO/A
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO0")) _ args) = genConFun i vs 0 !(expectArgAtIndex 1 args) applyUnsafePerformIO
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO1")) _ args) = genConFun i vs 1 !(expectArgAtIndex 2 args) applyUnsafePerformIO
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO2")) _ args) = genConFun i vs 2 !(expectArgAtIndex 3 args) applyUnsafePerformIO
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO3")) _ args) = genConFun i vs 3 !(expectArgAtIndex 4 args) applyUnsafePerformIO
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO4")) _ args) = genConFun i vs 4 !(expectArgAtIndex 5 args) applyUnsafePerformIO
  genCon i vs (CCon fc (NS ["Functions", "Erlang"] (UN "MkErlIO5")) _ args) = genConFun i vs 5 !(expectArgAtIndex 6 args) applyUnsafePerformIO
  -- Other
  genCon i vs (CCon fc name tag args) = pure $ genConstructor name !(traverse (genExp i vs) args)
  genCon i vs tm = throw (InternalError ("Invalid constructor: " ++ show tm))

  -- oops, no traverse for Vect in Core
  genArgs : Int -> SVars vars -> Vect n (CExp vars) -> Core (Vect n String)
  genArgs i vs [] = pure []
  genArgs i vs (arg :: args) = pure $ !(genExp i vs arg) :: !(genArgs i vs args)

  export
  genExp : Int -> SVars vars -> CExp vars -> Core String
  genExp i vs (CLocal fc el) = pure $ lookupSVar el vs
  genExp i vs (CRef fc (MN n index)) = pure $ genVariableName n index
  genExp i vs (CRef fc n) = pure $ genFunctionCallName n
  genExp i vs (CLam fc x sc) = do
    let vs' = extendSVars [x] vs
    sc' <- genExp i vs' sc
    pure $ "fun(" ++ lookupSVar First vs' ++ ") -> " ++ sc' ++ " end"
  genExp i vs (CLet fc x val sc) = do
    let vs' = extendSVars [x] vs
    val' <- genExp i vs val
    sc' <- genExp i vs' sc
    pure $ "(fun(" ++ lookupSVar First vs' ++ ") -> " ++ sc' ++ " end(" ++ val' ++ "))"
  genExp i vs (CApp fc x args) =
    pure $ "(" ++ !(genExp i vs x) ++ "(" ++ showSep ", " !(traverse (genExp i vs) args) ++ "))"
  genExp i vs con@(CCon fc x tag args) =
    genCon i vs con
  genExp i vs (COp fc op args) =
    pure $ genOp op !(genArgs i vs args)
  genExp i vs (CExtPrim fc p args) =
    genExtPrim i vs (toPrim p) args
  genExp i vs (CForce fc t) =
    pure $ "(" ++ !(genExp i vs t) ++ "())" -- TODO: Should use another mechanism to avoid evaluating delayed computation multiple times
  genExp i vs (CDelay fc t) =
    pure $ "fun() -> " ++ !(genExp i vs t) ++ " end"
  genExp i vs (CConCase fc sc alts def) = do
    tcode <- genExp i vs sc
    defc <- maybe (pure Nothing) (\v => pure (Just !(genExp i vs v))) def
    conAlts <- traverse (genConAlt i vs) alts
    pure $ "(fun " ++
      showSep "; " (conAlts ++ genCaseDef defc) ++
      " end(" ++ tcode ++ "))"
  genExp i vs (CConstCase fc sc alts def) = do
    defc <- maybe (pure Nothing) (\v => pure (Just !(genExp i vs v))) def
    tcode <- genExp i vs sc
    constAlts <- traverse (genConstAlt i vs) alts
    let isMatchingOnString = case head' alts of
      Just (MkConstAlt (Str _) _) => True
      _ => False
    let matchOnValue = if isMatchingOnString
      then "unicode:characters_to_binary(" ++ tcode ++ ", utf8)"
      else tcode
    pure $ "(fun " ++
      showSep "; " (constAlts ++ genCaseDef defc) ++
      " end(" ++ matchOnValue ++ "))"
  genExp i vs (CPrimVal fc c) =
    pure $ genConstant c
  genExp i vs (CErased fc) =
    pure mkErased
  genExp i vs (CCrash fc msg) =
    pure $ "throw(\"" ++ msg ++ "\")"

  -- Evaluate the outer `ErlList` to figure out the arity of the function call
  readArgs : Int -> SVars vars -> CExp vars -> Core (List String)
  readArgs i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "Nil")) _ []) = pure []
  readArgs i vs (CCon fc (NS ["ProperLists", "Erlang"] (UN "::")) _ [_, _, x, xs]) = pure $ !(genExp i vs x) :: !(readArgs i vs xs)
  readArgs i vs tm = throw (InternalError ("Unknown argument to foreign call: " ++ show tm))

  -- External primitives which are common to the scheme codegens (they can be
  -- overridden)
  export
  genExtPrim : Int -> SVars vars -> ExtPrim -> List (CExp vars) -> Core String
  genExtPrim i vs CCall [ret, fn, args, world] =
    throw (InternalError ("Can't compile C FFI calls to Erlang yet"))
  genExtPrim i vs SchemeCall [ret, fn, args, world] =
    throw (InternalError ("Can't compile Scheme FFI calls to Erlang yet"))
  genExtPrim i vs PutStr [arg, world] =
    pure $ "(fun() -> idris_rts_io_unicode_put_str(" ++ !(genExp i vs arg) ++ "), " ++ mkWorld mkUnit ++ " end())"
  genExtPrim i vs GetStr [world] =
    pure $ mkWorld "idris_rts_io_unicode_get_str(\"\")"
  genExtPrim i vs FileOpen [file, mode, bin, world] =
    pure $ mkWorld $ "idris_rts_file_open(" ++ !(genExp i vs file) ++ ", " ++ !(genExp i vs mode) ++ ", " ++ !(genExp i vs bin) ++ ")"
  genExtPrim i vs FileClose [file, world] =
    pure $ "(fun() -> idris_rts_file_close(" ++ !(genExp i vs file) ++ "), " ++ mkWorld mkUnit ++ " end())"
  genExtPrim i vs FileReadLine [file, world] =
    pure $ mkWorld $ "idris_rts_file_read_line(" ++ !(genExp i vs file) ++ ")"
  genExtPrim i vs FileWriteLine [file, str, world] =
    pure $ mkWorld $ "idris_rts_file_write_line(" ++ !(genExp i vs file) ++ ", " ++ !(genExp i vs str) ++ ")"
  genExtPrim i vs FileEOF [file, world] =
    pure $ mkWorld $ "idris_rts_file_eof(" ++ !(genExp i vs file) ++ ")"
  -- TODO: Implement IORef
  --genExtPrim i vs NewIORef [_, val, world] =
  --  pure $ mkWorld $ "(box " ++ !(genExp i vs val) ++ ")"
  --genExtPrim i vs ReadIORef [_, ref, world] =
  --  pure $ mkWorld $ "(unbox " ++ !(genExp i vs ref) ++ ")"
  --genExtPrim i vs WriteIORef [_, ref, val, world] =
  --  pure $ mkWorld $ "(set-box! " ++ !(genExp i vs ref) ++ " " ++ !(genExp i vs val) ++ ")"
  genExtPrim i vs Stdin [] =
    pure "standard_io"
  genExtPrim i vs Stdout [] =
    pure "standard_io"
  genExtPrim i vs Stderr [] =
    pure "standard_error"
  genExtPrim i vs VoidElim [_, _] =
    pure "throw(\"Error: Executed 'void'\")"
  genExtPrim i vs (Unknown n) args =
    throw (InternalError ("Can't compile unknown external primitive " ++ show n))
  genExtPrim i vs ErlUnsafeCall [_, ret, CPrimVal fc (Str fn), args, world] = do
    parameterList <- readArgs i vs args
    pure $ mkWorld $ "(" ++ fn ++ "(" ++ showSep ", " parameterList ++ "))"
  genExtPrim i vs ErlUnsafeCall [_, ret, fn, args, world] =
    pure $ mkWorld "false" -- TODO: Implement?
  genExtPrim i vs ErlCall [_, modName, fnName, args@(CCon _ _ _ _), world] = do
    parameterList <- readArgs i vs args
    pure $ mkWorld $ mkTryCatch $ "(" ++ mkStringToAtom !(genExp i vs modName) ++ ":" ++ mkStringToAtom !(genExp i vs fnName) ++ "(" ++ showSep ", " parameterList ++ "))"
  genExtPrim i vs ErlCall [_, modName, fnName, args, world] =
    pure $ mkWorld "false" -- TODO: Implement?
  genExtPrim i vs ErlCase [_, def, matchers@(CCon _ _ _ _), term] = do
    clauses <- readMatchers i 0 vs matchers
    genErlCase i vs def clauses term
  genExtPrim i vs ErlCase [_, def, matchers, tm] =
    pure $ mkWorld "false" -- TODO: Do I need to implement this to make `erlCase` work with variables?
  genExtPrim i vs ErlReceive [_, timeout, def, matchers@(CCon _ _ _ _), world] = do
    clauses <- readMatchers i 0 vs matchers
    genErlReceive i vs timeout def clauses
  genExtPrim i vs ErlReceive [_, timeout, def, matchers, world] =
    pure $ mkWorld "false" -- TODO: Do I need to implement this to make `erlReceive` work with variables?
  genExtPrim i vs InternalTryCatch [expr] =
    pure $ mkTryCatch !(genExp i vs expr)
  genExtPrim i vs prim args =
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

  readMatchers : Int -> (global : Int) -> SVars vars -> CExp vars -> Core (List (ErlClause vars))
  readMatchers i global vs (CCon fc (NS ["Prelude"] (UN "Nil")) _ _) = pure []
  readMatchers i global vs (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = do
    first <- readClause i 0 global vs x
    rest <- readMatchers i (nextGlobal global [first]) vs xs
    pure (first :: rest)
  readMatchers i global vs args =
    throw (InternalError ("Expected a list of matchers " ++ show args))

  readListLength : Int -> SVars vars -> CExp vars -> Core Nat
  readListLength i vs (CCon fc (NS ["Prelude"] (UN "Nil")) _ _) = pure 0
  readListLength i vs (CCon fc (NS ["Prelude"] (UN "::")) _ [_, x, xs]) = do
    tailLength <- readListLength i vs xs
    pure (1 + tailLength)
  readListLength i vs args =
    throw (InternalError ("Expected a list of types " ++ show args))

  createGuardClause : Int -> (local : Int) -> (global : Int) -> SVars vars -> (createGuard : CExp vars -> ErlGuard vars) -> Core (ErlClause vars)
  createGuardClause i local global vs createGuard = do
    let ref = CRef EmptyFC (MN "C" local)
    pure $ MkErlClause (local + 1) [] !(genExp i vs ref) (createGuard ref) ref

  readClause : Int -> (local : Int) -> (global : Int) -> SVars vars -> CExp vars -> Core (ErlClause vars)
  -- MExact
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MExact")) _ [_, _, matchValue]) = do
    let localRef = CRef EmptyFC (MN "C" global)
    let globalRef = CRef EmptyFC (MN "G" global)
    pure $ MkErlClause (local + 1) [matchValue] !(genExp i vs localRef) (IsBinOp EQ localRef globalRef) unitCExp
  -- MAny
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAny")) _ []) = do
    let ref = CRef EmptyFC (MN "C" local)
    pure $ MkErlClause (local + 1) [] !(genExp i vs ref) IsAny ref
  -- Simple guards
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MCodepoint")) _ []) = createGuardClause i local global vs
    (\val => AndAlso (IsInteger val) (AndAlso (IsBinOp GTE val (CPrimVal EmptyFC (BI 0))) (IsBinOp LTE val (CPrimVal EmptyFC (BI 0x10FFFF)))))
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MInteger")) _ []) = createGuardClause i local global vs IsInteger
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MDouble")) _ []) = createGuardClause i local global vs IsDouble
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAtom")) _ []) = createGuardClause i local global vs IsAtom
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MBinary")) _ []) = createGuardClause i local global vs IsBinary
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMap")) _ []) = createGuardClause i local global vs IsMap
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MPid")) _ []) = createGuardClause i local global vs IsPid
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MRef")) _ []) = createGuardClause i local global vs IsRef
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MPort")) _ []) = createGuardClause i local global vs IsPort
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MAnyList")) _ []) = createGuardClause i local global vs IsList
  -- MNil
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MNil")) _ []) =
    pure $ MkErlClause local [] "[]" IsAny unitCExp
  -- MCons
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MCons")) _ [_, _, _, headMatcher, tailMatcher, mapper]) = do
    headClause <- readClause i local global vs headMatcher
    tailClause <- readClause i (nextLocal headClause) (nextGlobal global [headClause]) vs tailMatcher
    pure $ MkErlClause (nextLocal tailClause) (concatGlobals [headClause, tailClause])
      ("[" ++ pattern headClause ++ " | " ++ pattern tailClause ++ "]")
      (concatGuards [headClause, tailClause])
      (CApp EmptyFC (CApp EmptyFC mapper [body headClause]) [body tailClause])
  -- MList
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MList")) _ [_, _, xs, mapper]) = do
    clauses <- readClauseErlMatchers i local global vs xs mapper
    let nextLoc = maybe local nextLocal (last' clauses)
    pure $ MkErlClause nextLoc (concatGlobals clauses)
      ("[" ++ showSep ", " (map pattern clauses) ++ "]")
      (concatGuards clauses)
      (applyToArgs mapper (map body clauses))
  -- MTuple
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MTuple")) _ [_, _, xs, mapper]) = do
    clauses <- readClauseErlMatchers i local global vs xs mapper
    let nextLoc = maybe local nextLocal (last' clauses)
    pure $ MkErlClause nextLoc (concatGlobals clauses)
      ("{" ++ showSep ", " (map pattern clauses) ++ "}")
      (concatGuards clauses)
      (applyToArgs mapper (map body clauses))
  -- MMapSubset
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMapSubset")) _ [_, _, xs, mapper]) = do
    clauses <- readClauseErlMatchers i local global vs xs mapper
    let nextLoc = maybe local nextLocal (last' clauses)
    pure $ MkErlClause nextLoc (concatGlobals clauses)
      ("#{" ++ showSep ", " (map pattern clauses) ++ "}")
      (concatGuards clauses)
      (applyToArgs mapper (map body clauses))
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MkErlMapEntry")) _ [_, _, _, key, valueMatcher]) = do
    let globalRef = CRef EmptyFC (MN "G" global)
    clause <- readClause i local (global + 1) vs valueMatcher
    pure $ MkErlClause (nextLocal clause) (key :: globals clause) (!(genExp i vs globalRef) ++ " := " ++ (pattern clause)) (guard clause) (body clause)
  -- MIO
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MIO")) _ [types]) = do
    let ref = CRef EmptyFC (MN "C" local)
    arity <- readListLength i vs types
    let tempVars = take arity $ zipWith (\name, idx => MN name idx) (repeat "M") [0..]
    pure $ MkErlClause local [] !(genExp i vs ref) (IsFun arity ref) (curryCExp tempVars (ioPureCExp . tryCatchCExp) ref)
  -- MError
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MError")) _ [_, matcher]) = do
    clause <- readClause i local global vs matcher
    pure $ MkErlClause (nextLocal clause) (globals clause) ("{" ++ mkIdrisRtsExceptionAtom ++ ", " ++ pattern clause ++ "}") (guard clause) (body clause)
  -- MMapper
  readClause i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "MMapper")) _ [_, _, matcher, mapper]) = do
    clause <- readClause i local global vs matcher
    pure $ MkErlClause (nextLocal clause) (globals clause) (pattern clause) (guard clause) (CApp EmptyFC mapper [body clause])
  -- Other
  readClause i local global vs matcher =
    throw (InternalError ("Badly formed clause " ++ show matcher))

  readClauseErlMatchers : Int -> (local : Int) -> (global : Int) -> SVars vars -> CExp vars -> (mapper : CExp vars) -> Core (List (ErlClause vars))
  readClauseErlMatchers i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "Nil")) _ _) mapper = pure []
  readClauseErlMatchers i local global vs (CCon fc (NS ["CaseExpr", "Erlang"] (UN "::")) _ [_, _, _, x, xs]) mapper = do
    first <- readClause i local global vs x
    rest <- readClauseErlMatchers i (nextLocal first) (nextGlobal global [first]) vs xs mapper
    pure (first :: rest)
  readClauseErlMatchers i local global vs args mapper =
    throw (InternalError ("Badly formed ErlMatchers " ++ show args))

  genGuard : Int -> SVars vars -> ErlGuard vars -> Core String
  genGuard i vs IsAny = pure "true"
  genGuard i vs (IsInteger ref) = pure $ "is_integer(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsDouble ref) = pure $ "is_float(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsBinary ref) = pure $ "is_binary(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsList ref) = pure $ "is_list(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsAtom ref) = pure $ "is_atom(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsMap ref) = pure $ "is_map(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsPid ref) = pure $ "is_pid(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsRef ref) = pure $ "is_reference(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsPort ref) = pure $ "is_port(" ++ !(genExp i vs ref) ++ ")"
  genGuard i vs (IsFun arity ref) = pure $ "is_function(" ++ !(genExp i vs ref) ++ ", " ++ show arity ++ ")"
  genGuard i vs (IsBinOp LTE ref1 ref2) = pure $ !(genExp i vs ref1) ++ " =< " ++ !(genExp i vs ref2)
  genGuard i vs (IsBinOp LT ref1 ref2) = pure $ !(genExp i vs ref1) ++ " < " ++ !(genExp i vs ref2)
  genGuard i vs (IsBinOp EQ ref1 ref2) = pure $ !(genExp i vs ref1) ++ " =:= " ++ !(genExp i vs ref2)
  genGuard i vs (IsBinOp GT ref1 ref2) = pure $ !(genExp i vs ref1) ++ " > " ++ !(genExp i vs ref2)
  genGuard i vs (IsBinOp GTE ref1 ref2) = pure $ !(genExp i vs ref1) ++ " >= " ++ !(genExp i vs ref2)
  genGuard i vs (AndAlso g1 g2) = pure $ "(" ++ !(genGuard i vs g1) ++ " andalso " ++ !(genGuard i vs g2) ++ ")"
  genGuard i vs (OrElse g1 g2) = pure $ "(" ++ !(genGuard i vs g1) ++ " orelse " ++ !(genGuard i vs g2) ++ ")"

  genClause : Int -> SVars vars -> ErlClause vars -> Core String
  genClause i vs (MkErlClause _ _ pattern guard body) =
    pure $ "(" ++ pattern ++ ") when " ++ !(genGuard i vs guard) ++ " -> " ++ !(genExp i vs body)

  genErlCase : Int -> SVars vars -> (def : CExp vars) -> List (ErlClause vars) -> (term : CExp vars) -> Core String
  genErlCase i vs def clauses term = do
    globalValues <- traverse (genExp i vs) (concatGlobals clauses)
    let globalVars = take (length globalValues) $ (zipWith (\name, idx => name ++ show idx) (repeat "G_") [0..])
    clausesStr <- traverse (genClause i vs) clauses
    defStr <- pure $ "(_) -> " ++ !(genExp i vs def)
    pure $ "(fun(" ++ showSep ", " globalVars ++") -> " ++
      "(fun " ++
      showSep "; " (clausesStr ++ [defStr]) ++
      " end(" ++ !(genExp i vs term) ++ "))" ++
      " end(" ++ showSep ", " globalValues ++ "))"

  genErlReceive : Int -> SVars vars -> (timeout : CExp vars) -> (def : CExp vars) -> List (ErlClause vars) -> Core String
  genErlReceive i vs timeout def clauses = do
    globalValues <- traverse (genExp i vs) (concatGlobals clauses)
    let globalVars = take (length globalValues) $ (zipWith (\name, idx => name ++ show idx) (repeat "G_") [0..])
    clausesStr <- traverse (genClause i vs) clauses
    pure $ mkWorld $ "(fun(" ++ showSep ", " globalVars ++") -> " ++
      "(receive " ++
      showSep "; " clausesStr ++
      " after " ++ !(genExp i vs timeout) ++ " -> " ++ !(genExp i vs def) ++ " end)" ++
      " end(" ++ showSep ", " globalValues ++ "))"

genArglist : SVars ns -> String
genArglist [] = ""
genArglist [x] = x
genArglist (x :: xs) = x ++ ", " ++ genArglist xs

genDef : {auto c : Ref Ctxt Defs} -> Name -> CDef -> Core String
genDef name (MkFun args exp) = do
  let vs = initSVars args
  pure $ genFunctionDefName !(getFullName name) ++ "(" ++ genArglist vs ++ ") -> " ++ !(genExp 0 vs exp) ++ ".\n"
genDef name (MkError exp) =
  pure $ genFunctionDefName !(getFullName name) ++ "() -> " ++ !(genExp 0 [] exp) ++ ".\n"
genDef name (MkForeign _ _ _) =
  pure "" -- compiled by specific back end
genDef name (MkCon t a) =
  pure "" -- Nothing to compile here

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

genExports : Int -> SVars vars -> CExp vars -> Core (List (String, Nat, String))
genExports i vs (CCon fc (NS ["IO", "Erlang"] (UN "Fun")) _ [_, exprTy, name, expr]) = do
  let intArity = internalArity exprTy
  let extArity = externalArity intArity
  let funcName = stripErlangString !(genExp i vs name)
  let vars = take extArity $ zipWith (\name, idx => name ++ show idx) (repeat "E_") [0..]
  let invocation =
    case intArity of
      Value => ""
      Arity => "(" ++ showSep ", " vars ++ ")"
  let funcDecl = funcName ++ "(" ++ showSep ", " vars ++ ") -> " ++ !(genExp i vs expr) ++ invocation ++ "."
  pure $ [(funcName, extArity, funcDecl)]
genExports i vs (CCon fc (NS ["IO", "Erlang"] (UN "Combine")) _ [exports1, exports2]) =
  pure $ !(genExports i vs exports1) ++ !(genExports i vs exports2)
genExports i vs tm = throw (InternalError ("Invalid export: " ++ show tm))

getCompileExpr : Defs -> Name -> Core CDef
getCompileExpr defs name = do
  Just globalDef <- lookupCtxtExact name (gamma defs)
    | throw (InternalError ("Compiling undefined name " ++ show name))
  let Just expr = compexpr globalDef
    | throw (InternalError ("No compiled definition for " ++ show name))
  pure expr

-- Convert the name to Erlang code
-- (There may be no code generated, for example if it's a constructor)
export
genErlang : {auto c : Ref Ctxt Defs} -> Defs -> Name -> Core String
genErlang defs name = do
  expr <- getCompileExpr defs name
  genDef name expr

export
genErlangExports : Defs -> Name -> Core (String, String)
genErlangExports defs name = do
  MkFun args expr <- getCompileExpr defs name
    | throw (InternalError ("Expected function definition for " ++ show name)) 
  let vs = initSVars args
  exports <- genExports 0 vs expr
  let exportDirectives = "-export([" ++ showSep ", " (map (\(name, arity, _) => name ++ "/" ++ show arity) exports) ++ "]).\n"
  let exportFuncs = showSep "\n" (map (\(_, _, funcDef) => funcDef) exports)
  pure (exportDirectives, exportFuncs)
