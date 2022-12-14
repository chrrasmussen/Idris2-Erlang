module Compiler.Erlang.Codegen.NamedCExpToErlExpr.RtsSupport

import Data.List
import Libraries.Data.NameMap
import Data.Stream
import Data.Vect
import Core.Context
import Core.TT
import Compiler.Erlang.Name
import Compiler.Erlang.IR.ErlExpr


%default total


-- Tag errors originating from Idris
runTimeErrorTag : String
runTimeErrorTag = "$idris_error"


-- LOCAL VARIABLES

export
data LV : Type where

export
newLocalVar : {auto lv : Ref LV LocalVars} -> Core LocalVar
newLocalVar = do
  MkLocalVars varPrefix nextIndex <- get LV
  put LV $ MkLocalVars varPrefix (nextIndex + 1)
  pure $ MkLocalVar varPrefix nextIndex

export
newLocalVars : {auto lv : Ref LV LocalVars} -> (count : Nat) -> Core (List LocalVar)
newLocalVars Z = pure []
newLocalVars (S k) = do
  newVar <- newLocalVar
  vars <- newLocalVars k
  pure (newVar :: vars)

export
addLocalVar : {auto lv : Ref LV LocalVars} -> (varName : Name) -> NameMap LocalVar -> Core (NameMap LocalVar, LocalVar)
addLocalVar varName vs = do
  newVar <- newLocalVar
  pure (insert varName newVar vs, newVar)

export
addLocalVars : {auto lv : Ref LV LocalVars} -> (args : List Name) -> NameMap LocalVar -> Core (NameMap LocalVar, List LocalVar)
addLocalVars [] vs = pure (vs, [])
addLocalVars (n :: ns) vs = do
  (vs', newVar) <- addLocalVar n vs
  (vs'', vars) <- addLocalVars ns vs'
  pure (vs'', newVar :: vars)


-- MISC

export
genFC : FC -> Line
genFC (MkFC fileName (startLine, startCol) (endLine, endCol)) = startLine
genFC (MkVirtualFC fileName (startLine, startCol) (endLine, endCol)) = startLine
genFC EmptyFC = 1 -- TODO: What value should I put here?


-- DATA CONSTRUCTORS

export
genMkUnit : Line -> ErlExpr
genMkUnit l =
  ECon l (constructorName (NS builtinNS (UN (Basic "MkUnit")))) []

export
genJust : Line -> ErlExpr -> ErlExpr
genJust l expr =
  ECon l (constructorName (NS typesNS (UN (Basic "Just")))) [expr]

export
genNothing : Line -> ErlExpr
genNothing l =
  ECon l (constructorName (NS typesNS (UN (Basic "Nothing")))) []

export
genRight : Line -> ErlExpr -> ErlExpr
genRight l expr =
  ECon l (constructorName (NS typesNS (UN (Basic "Right")))) [expr]

export
genLeft : Line -> ErlExpr -> ErlExpr
genLeft l expr =
  ECon l (constructorName (NS typesNS (UN (Basic "Left")))) [expr]

-- PrimIO.MkIORes : {0 a : Type} -> (result : a) -> (1 x : %World) -> IORes a
export
genMkIORes : Line -> ErlExpr -> ErlExpr
genMkIORes l expr =
  -- Newtype optimization removes the data constructor:
  -- ECon l (constructorName (NS ["PrimIO"] (UN (Basic "MkIORes")))) [expr, EIdrisConstant l IWorldVal]
  expr

-- PrimIO.MkIO : {0 a : Type} -> (1 fn : (1 x : %World) -> IORes a) -> IO a
export
genMkIO : Line -> (worldVar : LocalVar) -> ErlExpr -> ErlExpr
genMkIO l worldVar expr =
  let fn = ELam l [worldVar] (genMkIORes l expr)
  in -- Newtype optimization removes the data constructor (See commit: 8fccd5f)
     -- ECon l (constructorName (NS ["PrimIO"] (UN (Basic "MkIO")))) [fn]
     fn


-- HELPER FUNCTIONS

export
genRef : NamespaceInfo -> Line -> Name -> ErlExpr
genRef namespaceInfo l name =
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  in if isNameInCurrentModule namespaceInfo name
    then EAtom l fnName
    else ERef l (EAtom l modName) (EAtom l fnName)

export
genUnsafePerformIO : NamespaceInfo -> Line -> ErlExpr -> ErlExpr
genUnsafePerformIO namespaceInfo l action =
  -- Erased arguments are now removed (See commit: 73d374e)
  EApp l (genRef namespaceInfo l (NS primIONS (UN (Basic "unsafePerformIO")))) [action]

export
genFunCall : Line -> String -> String -> List ErlExpr -> ErlExpr
genFunCall l modName fnName args =
  EApp l (ERef l (EAtom l modName) (EAtom l fnName)) args

export
genList : Line -> List ErlExpr -> ErlExpr
genList l xs = foldr (\x, acc => ECons l x acc) (ENil l) xs

export
genThrowBinary : Line -> ErlExpr -> ErlExpr
genThrowBinary l msg =
  genFunCall l "erlang" "throw" [ETuple l [EAtom l runTimeErrorTag, msg]]

export
genThrowMsg : Line -> String -> ErlExpr
genThrowMsg l msg =
  genThrowBinary l (EBinary l msg)

export
genUnsafeStringToAtom : Line -> ErlExpr -> ErlExpr
genUnsafeStringToAtom l (EIdrisConstant _ (IString x)) = EAtom l x
genUnsafeStringToAtom l binary =
  genFunCall l "erlang" "binary_to_atom" [binary, EAtom l "utf8"]

export
genAtomToString : Line -> ErlExpr -> ErlExpr
genAtomToString l expr =
  genFunCall l "erlang" "atom_to_binary" [expr, EAtom l "utf8"]

export
genArgsToLocals : Line -> (args : List LocalVar) -> List ErlExpr
genArgsToLocals l xs = map (ELocal l) xs

export
genAppCurriedFun : Line -> (curriedFun : ErlExpr) -> List ErlExpr -> ErlExpr
genAppCurriedFun l body [] = body
genAppCurriedFun l body (x :: xs) = genAppCurriedFun l (EApp l body [x]) xs

-- Create a curried function from an uncurried function of a given arity.
-- The transform function is applied to the inner result.
--
-- In Erlang it is similar to:
-- ```
-- fun(V0) -> fun(V1) -> Transform(UncurriedFun(V0, V1)) end end
-- ```
export
genCurry : {auto lv : Ref LV LocalVars} -> Line -> (arity : Nat) -> (transform : ErlExpr -> ErlExpr) -> (uncurriedFun : ErlExpr) -> Core ErlExpr
genCurry l arity transform uncurriedFun = curry l arity transform uncurriedFun []
  where
    curry : Line -> (arity : Nat) -> (transform : ErlExpr -> ErlExpr) -> ErlExpr -> List ErlExpr -> Core ErlExpr
    curry l Z transform body args = pure $ transform (EApp l body (reverse args))
    curry l (S k) transform body args = do
      newVar <- newLocalVar
      pure $ ELam l [newVar] !(curry l k transform body (ELocal l newVar :: args))

-- Create an uncurried function from a curried function of a given arity.
-- The transform function is applied to the inner result.
--
-- In Erlang it is similar to:
-- ```
-- fun(V0, V1) -> Transform((CurriedFun(V0))(V1)) end
-- ```
export
genUncurry : {auto lv : Ref LV LocalVars} -> Line -> (arity : Nat) -> (transform : ErlExpr -> ErlExpr) -> (curriedFun : ErlExpr) -> Core ErlExpr
genUncurry l arity transform curriedFun = do
  vars <- newLocalVars arity
  pure $ ELam l vars (transform (genAppCurriedFun l curriedFun (genArgsToLocals l vars)))


-- OS

export
genOsType : {auto lv : Ref LV LocalVars} -> Line -> Core ErlExpr
genOsType l = do
  unixOsFamilyVar <- newLocalVar
  unixOsNameVar <- newLocalVar
  winOsFamilyVar <- newLocalVar
  winOsNameVar <- newLocalVar
  let osTypeCall = genFunCall l "os" "type" []
  let unixOsName = EMatcherCase l
        (ELocal l unixOsNameVar)
        (singleton $ MConst (MExact (EAtom l "darwin")) (EBinary l "darwin"))
        (Just $ EBinary l "unix")
  pure $ EMatcherCase l
    osTypeCall
    ( MTuple [(unixOsFamilyVar, MExact (EAtom l "unix")), (unixOsNameVar, MAny)] unixOsName :::
      [ MTuple [(winOsFamilyVar, MExact (EAtom l "win32")), (winOsNameVar, MAny)] (EBinary l "windows")
      ]
    )
    (Just $ EBinary l "unknown")


-- BOOLEANS

export
genBoolToInt : Line -> ErlExpr -> ErlExpr
genBoolToInt l expr =
  EMatcherCase l
    expr
    (singleton $ MConst (MExact (EAtom l "false")) (EInteger l 0))
    (Just $ EInteger l 1)


-- ARITHMETIC

integerPower : Integer -> Nat -> Integer
integerPower base exp = product (Prelude.take exp (repeat base))

-- Implementation ported from: https://github.com/elixir-lang/elixir/blob/v1.12.3/lib/elixir/lib/integer.ex#L135-L143
export
genMod : {auto lv : Ref LV LocalVars} -> Line -> ErlExpr -> ErlExpr -> Core ErlExpr
genMod l dividendExpr divisorExpr = do
  let rem = EOp l "rem"
  let mult = EOp l "*"
  let lt = EOp l "<"
  let plus = EOp l "+"
  dividendVar <- newLocalVar
  divisorVar <- newLocalVar
  remainderVar <- newLocalVar
  pure $ ELet l dividendVar dividendExpr $
    ELet l divisorVar divisorExpr $
      ELet l remainderVar ((ELocal l dividendVar) `rem` (ELocal l divisorVar)) $
        EMatcherCase l
          (((ELocal l remainderVar) `mult` (ELocal l divisorVar)) `lt` EInteger l 0)
          (singleton $ MConst (MExact (EAtom l "true")) ((ELocal l remainderVar) `plus` (ELocal l divisorVar)))
          (Just $ ELocal l remainderVar)

export
genToBoundedUnsignedInt : {auto lv : Ref LV LocalVars} -> Line -> (bits : Nat) -> ErlExpr -> Core ErlExpr
genToBoundedUnsignedInt l bits x =
  genMod l x (EInteger l (integerPower 2 bits))

export
genToBoundedSignedInt : {auto lv : Ref LV LocalVars} -> Line -> (bits : Nat) -> ErlExpr -> Core ErlExpr
genToBoundedSignedInt l bits intExpr = do
  let isNotEq = EOp l "=/="
  let band = EOp l "band"
  let bor = EOp l "bor"
  let bitsValue = integerPower 2 (bits `minus` 1)
  intVar <- newLocalVar
  let isMostSignificantBitSet = ((ELocal l intVar) `band` (EInteger l bitsValue)) `isNotEq` EInteger l 0
  pure $ ELet l intVar intExpr $
    EMatcherCase l
      isMostSignificantBitSet
      (singleton $ MConst (MExact (EAtom l "true")) ((ELocal l intVar) `bor` EInteger l (-bitsValue)))
      (Just $ (ELocal l intVar) `band` (EInteger l (bitsValue - 1)))


-- STRINGS

genUnicodeStringOp : (op : String) -> Line -> ErlExpr -> ErlExpr -> ErlExpr
genUnicodeStringOp op l x y =
  genBoolToInt l (EOp l op x y)

export
genUnicodeStringLT : Line -> ErlExpr -> ErlExpr -> ErlExpr
genUnicodeStringLT = genUnicodeStringOp "<"

export
genUnicodeStringLTE : Line -> ErlExpr -> ErlExpr -> ErlExpr
genUnicodeStringLTE = genUnicodeStringOp "=<"

export
genUnicodeStringEQ : Line -> ErlExpr -> ErlExpr -> ErlExpr
genUnicodeStringEQ = genUnicodeStringOp "=:="

export
genUnicodeStringGTE : Line -> ErlExpr -> ErlExpr -> ErlExpr
genUnicodeStringGTE = genUnicodeStringOp ">="

export
genUnicodeStringGT : Line -> ErlExpr -> ErlExpr -> ErlExpr
genUnicodeStringGT = genUnicodeStringOp ">"


-- NOTE: Must be total
export
genUnicodeStringLength : Line -> (str : ErlExpr) -> ErlExpr
genUnicodeStringLength l str =
  genFunCall l "string" "length" [str]

-- NOTE: Is allowed to be partial
export
genUnicodeStringHead : Line -> (str : ErlExpr) -> ErlExpr
genUnicodeStringHead l str =
  let nextGraphemeCall = genFunCall l "string" "next_grapheme" [str]
  in genFunCall l "erlang" "hd" [nextGraphemeCall]

-- NOTE: Is allowed to be partial
--
-- Erlang docs for `string_grapheme/1`:
-- (https://erlang.org/doc/man/string.html#next_grapheme-1)
--
-- Returns the first codepoint in String and the rest of String in the tail.
-- Returns an empty list if String is empty or an {error, String} tuple if
-- the next byte is invalid.
export
genUnicodeStringTail : {auto lv : Ref LV LocalVars} -> Line -> (str : ErlExpr) -> Core ErlExpr
genUnicodeStringTail l str = do
  headVar <- newLocalVar
  tailVar <- newLocalVar
  let nextGraphemeCall = genFunCall l "string" "next_grapheme" [str]
  pure $ EMatcherCase l
      nextGraphemeCall
      (singleton $ MCons MAny MBinary headVar tailVar (ELocal l tailVar))
      (Just $ EBinary l "")

-- NOTE: Is allowed to be partial
export
genUnicodeStringIndex : Line -> (str : ErlExpr) -> (index : ErlExpr) -> ErlExpr
genUnicodeStringIndex l str index =
  let charStringCall = genFunCall l "string" "slice" [str, index, EInteger l 1]
      nextGraphemeCall = genFunCall l "string" "next_grapheme" [charStringCall]
  in genFunCall l "erlang" "hd" [nextGraphemeCall]

-- NOTE: Must be total
export
genUnicodeStringCons : Line -> (char : ErlExpr) -> (str : ErlExpr) -> ErlExpr
genUnicodeStringCons l char str =
  let charBinary = genFunCall l "unicode" "characters_to_binary" [genList l [char]]
  in EBinaryConcat l charBinary str

-- NOTE: Must be total
export
genUnicodeStringAppend : Line -> (str1 : ErlExpr) -> (str2 : ErlExpr) -> ErlExpr
genUnicodeStringAppend l str1 str2 =
  EBinaryConcat l str1 str2

-- NOTE: Must be total
export
genUnicodeStringReverse : Line -> (str : ErlExpr) -> ErlExpr
genUnicodeStringReverse l str =
  let reversedString = genFunCall l "string" "reverse" [str]
  in genFunCall l "unicode" "characters_to_binary" [reversedString]

-- NOTE: Must be total
export
genUnicodeStringSubstr : Line -> (start : ErlExpr) -> (len : ErlExpr) -> (str : ErlExpr) -> ErlExpr
genUnicodeStringSubstr l start len str =
  genFunCall l "string" "slice" [str, start, len]


-- CHARACTERS

-- A codepoint is represented by an integer between 0x0 and 0x10FFFF.
-- Return "replacement character" (0xFFFD) if character is not recognized.
-- https://en.wikipedia.org/wiki/Specials_(Unicode_block)
genValidChar : Line -> ErlExpr -> ErlExpr
genValidChar l x =
  EMatcherCase l x (singleton MCodepoint) (Just $ EInteger l 65533)


-- CAST: Int -> *

-- Char is an integer
export
genIntToChar : Line -> ErlExpr -> ErlExpr
genIntToChar l int =
  genValidChar l int


-- CAST: Double -> *

export
genDoubleToString : Line -> ErlExpr -> ErlExpr
genDoubleToString l double =
  let opts = genList l [ETuple l [EAtom l "decimals", EInteger l 10], EAtom l "compact"]
  in genFunCall l "erlang" "float_to_binary" [double, opts]


-- CAST: Char -> *

export
genCharToInt : Line -> ErlExpr -> ErlExpr
genCharToInt l char =
  genValidChar l char

export
genCharToString : Line -> ErlExpr -> ErlExpr
genCharToString l char =
  genFunCall l "unicode" "characters_to_binary" [genList l [char]]


-- CAST: String -> *

export
genStringToInteger : {auto lv : Ref LV LocalVars} -> Line -> ErlExpr -> Core ErlExpr
genStringToInteger l str = do
  integerVar <- newLocalVar
  restVar <- newLocalVar
  let toIntegerCall = genFunCall l "string" "to_integer" [str]
  pure $ EMatcherCase l
      toIntegerCall
      (singleton $ MTuple [(integerVar, MInteger), (restVar, MAny)]
          (EMatcherCase l
            (genFunCall l "string" "is_empty" [ELocal l restVar])
            (singleton $ MConst (MExact (EAtom l "true")) (ELocal l integerVar))
            (Just $ EInteger l 0))
      )
      (Just $ EInteger l 0)

-- Try to convert String to Double
-- If it fails; try to convert String to Integer to Double
export
genStringToDouble : {auto lv : Ref LV LocalVars} -> Line -> ErlExpr -> Core ErlExpr
genStringToDouble l str = do
  errorAtomVar <- newLocalVar
  noFloatAtomVar <- newLocalVar
  floatVar <- newLocalVar
  restVar <- newLocalVar
  let toFloatCall = genFunCall l "string" "to_float" [str]
  pure $ EMatcherCase l
      toFloatCall
      ( MTuple [(errorAtomVar, MExact (EAtom l "error")), (noFloatAtomVar, MExact (EAtom l "no_float"))]
          (genFunCall l "erlang" "float" [!(genStringToInteger l str)]) :::
        [ MTuple [(floatVar, MFloat), (restVar, MAny)]
            (EMatcherCase l
              (genFunCall l "string" "is_empty" [ELocal l restVar])
              (singleton $ MConst (MExact (EAtom l "true")) (ELocal l floatVar))
              (Just $ EFloat l 0))
        ]
      )
      (Just $ EFloat l 0)


-- IO

export
genUnicodePutStr : Line -> ErlExpr -> ErlExpr
genUnicodePutStr l str =
  genFunCall l "io" "format" [ECharlist l "~ts", genList l [str]]

export
genUnicodeGetStr : Line -> ErlExpr -> ErlExpr
genUnicodeGetStr l prompt =
  let getLineCall = genFunCall l "io" "get_line" [prompt]
      trimmedLine = genFunCall l "string" "chomp" [getLineCall]
  in genFunCall l "unicode" "characters_to_binary" [trimmedLine]


-- IORef
-- Implementation based on process dictionary => Leaks memory

export
genProcessDictNewIORef : Line -> (refVar : LocalVar) -> (val : ErlExpr) -> ErlExpr
genProcessDictNewIORef l refVar val =
  let makeRefCall = genFunCall l "erlang" "make_ref" []
      putCall = genFunCall l "erlang" "put" [ELocal l refVar, val]
  in ELet l refVar makeRefCall (ESequence l (putCall ::: [ELocal l refVar]))

export
genProcessDictReadIORef : Line -> (mutableRef : ErlExpr) -> ErlExpr
genProcessDictReadIORef l mutableRef =
  genFunCall l "erlang" "get" [mutableRef]

export
genProcessDictWriteIORef : Line -> (mutableRef : ErlExpr) -> (newVal : ErlExpr) -> ErlExpr
genProcessDictWriteIORef l mutableRef newVal =
  genFunCall l "erlang" "put" [mutableRef, newVal]

export
genProcessDictFreeIORef : Line -> (mutableRef : ErlExpr) -> ErlExpr
genProcessDictFreeIORef l mutableRef =
  genFunCall l "erlang" "erase" [mutableRef]


-- MAIN PROGRAMS

genDisplay : Line -> ErlExpr -> ErlExpr
genDisplay l expr =
  genFunCall l "erlang" "display" [expr]

genHalt : Line -> (errorCode : Integer) -> ErlExpr
genHalt l errorCode =
  genFunCall l "erlang" "halt" [EInteger l errorCode]

genAppendNewline : Line -> ErlExpr -> ErlExpr
genAppendNewline l str =
  EBinaryConcat l str (EBinary l "\n")

export
genEscriptMain : {auto lv : Ref LV LocalVars} -> Line -> (body : ErlExpr) -> Core ErlExpr
genEscriptMain l body = do
  let setOptsCall = genFunCall l "io" "setopts" [genList l [ETuple l [EAtom l "encoding", EAtom l "unicode"]]]
  let mainProgram = ESequence l (setOptsCall ::: [body])
  okVar <- newLocalVar
  errorVar <- newLocalVar
  errorProgram <- genErrorProgram errorVar
  pure $ ETryCatch l mainProgram
    okVar (ELocal l okVar)
    errorVar errorProgram
  where
    genErrorProgram : LocalVar -> Core ErlExpr
    genErrorProgram errorVar = do
      classVar <- newLocalVar
      reasonVar <- newLocalVar
      stacktraceVar <- newLocalVar
      tagVar <- newLocalVar
      msgVar <- newLocalVar
      pure $ ESequence l
        ( EMatcherCase l (ELocal l errorVar)
            (singleton $ MTuple
                [ (classVar, MExact (EAtom l "throw")),
                  (reasonVar, MTuple
                    [ (tagVar, MExact (EAtom l runTimeErrorTag))
                    , (msgVar, MBinary)
                    ]
                    (ELocal l msgVar)
                  ),
                  (stacktraceVar, MAny)
                ]
                (genUnicodePutStr l (genAppendNewline l (ELocal l reasonVar)))
            )
            (Just $ genDisplay l (ELocal l errorVar)) :::
          [ genHalt l 127
          ]
        )

export
genErlMain : {auto lv : Ref LV LocalVars} -> Line -> (body : ErlExpr) -> Core ErlExpr
genErlMain l body = do
  let processFlagCall = genFunCall l "erlang" "process_flag" [EAtom l "trap_exit", EAtom l "false"]
  pure $ ESequence l
    ( processFlagCall :::
      [ !(genEscriptMain l body)
      , genHalt l 0
      ]
    )
