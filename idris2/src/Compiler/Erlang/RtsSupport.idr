module Compiler.Erlang.RtsSupport

import Core.Name
import Core.TT
import Compiler.Erlang.Name
import Compiler.Erlang.ErlExpr


%default total

export
genFC : FC -> Line
genFC (MkFC fileName (startLine, startCol) (endLine, endCol)) = startLine
genFC EmptyFC = 1 -- TODO: What value should I put here?

export
genErased : Line -> ErlExpr vars
genErased l =
  EAtom l "erased"


-- DATA CONSTRUCTORS

export
genMkUnit : Line -> ErlExpr vars
genMkUnit l =
  ETuple l []

genRight : Line -> ErlExpr vars -> ErlExpr vars
genRight l expr =
  ECon l (constructorName (NS ["Prelude"] (UN "Right"))) [expr]

genLeft : Line -> ErlExpr vars -> ErlExpr vars
genLeft l expr =
  ECon l (constructorName (NS ["Prelude"] (UN "Left"))) [expr]

-- PrimIO.MkIORes : {0 a : Type} -> (result : a) -> (1 x : %World) -> IORes a
export
genMkIORes : Line -> ErlExpr vars -> ErlExpr vars
genMkIORes l expr =
  -- Newtype optimization removes the data constructor:
  -- ECon l (constructorName (NS ["PrimIO"] (UN "MkIORes"))) [expr, EIdrisConstant l IWorldVal]
  expr

-- PrimIO.MkIO : {0 a : Type} -> (1 fn : (1 x : %World) -> IORes a) -> IO a
export
genMkIO : Line -> ErlExpr vars -> ErlExpr vars
genMkIO l expr =
  let worldVar = MN "" 0
      fn = ELam l [worldVar] (genMkIORes l (weaken expr))
  in
    -- Newtype optimization removes the data constructor:
    -- ECon l (constructorName (NS ["PrimIO"] (UN "MkIO"))) [fn]
    fn


-- HELPER FUNCTIONS

export
genRef : NamespaceInfo -> Line -> Name -> ErlExpr vars
genRef namespaceInfo l name =
  let (modName, fnName) = moduleNameFunctionName namespaceInfo name
  in if isNameInCurrentModule namespaceInfo name
    then EAtom l fnName
    else ERef l (EAtom l modName) (EAtom l fnName)

export
genUnsafePerformIO : NamespaceInfo -> Line -> ErlExpr vars -> ErlExpr vars
genUnsafePerformIO namespaceInfo l action =
  EApp l (genRef namespaceInfo l (NS ["PrimIO"] (UN "unsafePerformIO"))) [genErased l, action]

export
genFunCall : Line -> String -> String -> List (ErlExpr vars) -> ErlExpr vars
genFunCall l modName fnName args =
  EApp l (ERef l (EAtom l modName) (EAtom l fnName)) args

export
genLet : Line -> (newVar : Name) -> ErlExpr vars -> ErlExpr (newVar :: vars) -> ErlExpr vars
genLet l newVar varValue body = EApp l (ELam l [newVar] body) [varValue]

export
genSequence : Line -> (exprs : List (ErlExpr vars)) -> {auto prf : NonEmpty exprs} -> ErlExpr vars
genSequence l [lastExpr] = lastExpr
genSequence l (expr1 :: expr2 :: restExpr) =
  let unusedVar = MN "" 0
  in genLet l unusedVar expr1 (weaken (genSequence l (expr2 :: restExpr)))

export
genList : Line -> List (ErlExpr vars) -> ErlExpr vars
genList l xs = foldr (\x, acc => ECons l x acc) (ENil l) xs

export
genThrow : Line -> String -> ErlExpr vars
genThrow l msg =
  genFunCall l "erlang" "throw" [ECharlist l msg]

export
genTryCatch : Line -> ErlExpr vars -> ErlExpr vars
genTryCatch l body =
  let okExpr = genRight l (ELocal l First)
      errorExpr = genLeft l (ELocal l First)
  in ETryCatch l body (MN "" 0) okExpr (MN "" 0) errorExpr

export
genUnsafeStringToAtom : Line -> ErlExpr vars -> ErlExpr vars
genUnsafeStringToAtom l expr =
  let binary = genFunCall l "unicode" "characters_to_binary" [expr]
  in genFunCall l "erlang" "binary_to_atom" [binary, EAtom l "utf8"]

export
genAtomToString : Line -> ErlExpr vars -> ErlExpr vars
genAtomToString l expr =
  genFunCall l "erlang" "atom_to_binary" [expr, EAtom l "utf8"]

export
genArgsToLocals : {vars : _} -> Line -> (args : List Name) -> List (ErlExpr (args ++ vars))
genArgsToLocals l [] = []
genArgsToLocals l (n :: ns) = ELocal l First :: map weaken (genArgsToLocals l ns)

export
genAppCurriedFun : Line -> (curriedFun : ErlExpr vars) -> List (ErlExpr vars) -> ErlExpr vars
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
genCurry : {vars : _} -> Line -> (arity : Nat) -> (transform : {vars : _} -> ErlExpr vars -> ErlExpr vars) -> (uncurriedFun : ErlExpr vars) -> ErlExpr vars
genCurry l arity transform uncurriedFun = curry l arity transform uncurriedFun []
  where
    curry : {vars : _} -> Line -> (arity : Nat) -> (transform : {vars : _} -> ErlExpr vars -> ErlExpr vars) -> ErlExpr vars -> List (ErlExpr vars) -> ErlExpr vars
    curry l Z transform body args = transform (EApp l body (reverse args))
    curry l (S k) transform body args =
      let newVar = MN "" 0
      in ELam l [newVar] (curry l k transform (weaken body) (ELocal l First :: map weaken args))

-- Create an uncurried function from a curried function of a given arity.
-- The transform function is applied to the inner result.
--
-- In Erlang it is similar to:
-- ```
-- fun(V0, V1) -> Transform((CurriedFun(V0))(V1)) end
-- ```
export
genUncurry : {vars : _} -> Line -> (arity : Nat) -> (transform : {vars : _} -> ErlExpr vars -> ErlExpr vars) -> (curriedFun : ErlExpr vars) -> ErlExpr vars
genUncurry l arity transform curriedFun =
  let args = take arity (repeat (MN "" 0))
  in ELam l args (transform (genAppCurriedFun l (weakenNs args curriedFun) (genArgsToLocals l args)))

export
genMainInit : Line -> ErlExpr (argsVar :: vars) -> ErlExpr (argsVar :: vars)
genMainInit l expr =
  let saveArgsCall = genFunCall l "persistent_term" "put" [EAtom l "$idris_rts_args", ELocal l First]
      createEtsCall = genFunCall l "ets" "new" [EAtom l "$idris_rts_ets", genList l [EAtom l "public", EAtom l "named_table"]]
      setEncodingCall = genFunCall l "io" "setopts" [genList l [ETuple l [EAtom l "encoding", EAtom l "unicode"]]]
  in genSequence l
      [ saveArgsCall
      , createEtsCall
      , setEncodingCall
      , expr
      ]


-- BOOLEANS

export
genBoolToInt : Line -> ErlExpr vars -> ErlExpr vars
genBoolToInt l expr =
  EMatcherCase l
    expr
    [ MTransform (MExact (EAtom l "false")) (MN "" 0) (EInteger l 0)
    ]
    (EInteger l 1)


-- ARITHMETIC

integerPower : Integer -> Nat -> Integer
integerPower base exp = product (take exp (repeat base))

genIntOp : (op : String) -> Line -> (bits : Nat) -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genIntOp op l bits x y = EOp l "rem" (EOp l op x y) (EInteger l (integerPower 2 bits))

export
genIntAdd : Line -> (bits : Nat) -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genIntAdd = genIntOp "+"

export
genIntSub : Line -> (bits : Nat) -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genIntSub = genIntOp "-"

export
genIntMult : Line -> (bits : Nat) -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genIntMult = genIntOp "*"

export
genIntDiv : Line -> (bits : Nat) -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genIntDiv = genIntOp "div"


-- STRINGS

genUnicodeStringOp : (op : String) -> Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genUnicodeStringOp op l x y =
  let xBinary = genFunCall l "unicode" "characters_to_binary" [x]
      yBinary = genFunCall l "unicode" "characters_to_binary" [y]
  in genBoolToInt l (EOp l op xBinary yBinary)

export
genUnicodeStringLT : Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genUnicodeStringLT = genUnicodeStringOp "<"

export
genUnicodeStringLTE : Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genUnicodeStringLTE = genUnicodeStringOp "=<"

export
genUnicodeStringEQ : Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genUnicodeStringEQ = genUnicodeStringOp "=:="

export
genUnicodeStringGTE : Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genUnicodeStringGTE = genUnicodeStringOp ">="

export
genUnicodeStringGT : Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
genUnicodeStringGT = genUnicodeStringOp ">"


-- NOTE: Must be total
export
genUnicodeStringLength : Line -> (str : ErlExpr vars) -> ErlExpr vars
genUnicodeStringLength l str =
  genFunCall l "string" "length" [str]

-- NOTE: Is allowed to be partial
export
genUnicodeStringHead : Line -> (str : ErlExpr vars) -> ErlExpr vars
genUnicodeStringHead l str =
  let nextGraphemeCall = genFunCall l "string" "next_grapheme" [str]
  in genFunCall l "erlang" "hd" [nextGraphemeCall]

-- NOTE: Is allowed to be partial
export
genUnicodeStringTail : Line -> (str : ErlExpr vars) -> ErlExpr vars
genUnicodeStringTail l str =
  let nextGraphemeCall = genFunCall l "string" "next_grapheme" [str]
  in genFunCall l "erlang" "tl" [nextGraphemeCall]

-- NOTE: Is allowed to be partial
export
genUnicodeStringIndex : Line -> (str : ErlExpr vars) -> (index : ErlExpr vars) -> ErlExpr vars
genUnicodeStringIndex l str index =
  let charStringCall = genFunCall l "string" "slice" [str, index, EInteger l 1]
      nextGraphemeCall = genFunCall l "string" "next_grapheme" [charStringCall]
  in genFunCall l "erlang" "hd" [nextGraphemeCall]

-- NOTE: Must be total
export
genUnicodeStringCons : Line -> (char : ErlExpr vars) -> (str : ErlExpr vars) -> ErlExpr vars
genUnicodeStringCons l char str =
  ECons l char str

-- NOTE: Must be total
export
genUnicodeStringAppend : Line -> (str1 : ErlExpr vars) -> (str2 : ErlExpr vars) -> ErlExpr vars
genUnicodeStringAppend l str1 str2 =
  ECons l str1 str2

-- NOTE: Must be total
export
genUnicodeStringReverse : Line -> (str : ErlExpr vars) -> ErlExpr vars
genUnicodeStringReverse l str =
  genFunCall l "string" "reverse" [str]

-- NOTE: Must be total
export
genUnicodeStringSubstr : Line -> (start : ErlExpr vars) -> (len : ErlExpr vars) -> (str : ErlExpr vars) -> ErlExpr vars
genUnicodeStringSubstr l start len str =
  genFunCall l "string" "substr" [str, start, len]


-- CAST: Integer -> *

export
genIntegerToInt : Line -> ErlExpr vars -> ErlExpr vars
genIntegerToInt l integer =
  integer

export
genIntegerToDouble : Line -> ErlExpr vars -> ErlExpr vars
genIntegerToDouble l integer =
  genFunCall l "erlang" "float" [integer]

export
genIntegerToString : Line -> ErlExpr vars -> ErlExpr vars
genIntegerToString l integer =
  genFunCall l "erlang" "integer_to_binary" [integer]


-- CAST: Int -> *

export
genIntToInteger : Line -> ErlExpr vars -> ErlExpr vars
genIntToInteger l int =
  int

export
genIntToDouble : Line -> ErlExpr vars -> ErlExpr vars
genIntToDouble l int =
  genFunCall l "erlang" "float" [int]

-- Char is an integer
export
genIntToChar : Line -> ErlExpr vars -> ErlExpr vars
genIntToChar l int =
  int

export
genIntToString : Line -> ErlExpr vars -> ErlExpr vars
genIntToString l int =
  genFunCall l "erlang" "integer_to_binary" [int]


-- CAST: Double -> *

export
genDoubleToInteger : Line -> ErlExpr vars -> ErlExpr vars
genDoubleToInteger l double =
  genFunCall l "erlang" "trunc" [double]

export
genDoubleToInt : Line -> ErlExpr vars -> ErlExpr vars
genDoubleToInt l double =
  genFunCall l "erlang" "trunc" [double]

export
genDoubleToString : Line -> ErlExpr vars -> ErlExpr vars
genDoubleToString l double =
  let opts = genList l [ETuple l [EAtom l "decimals", EInteger l 10], EAtom l "compact"]
  in genFunCall l "erlang" "float_to_binary" [double, opts]


-- CAST: Char -> *


-- A codepoint is represented by an integer between 0x0 and 0x10FFFF.
-- Return "replacement character" (0xFFFD) if character is not recognized.
-- https://en.wikipedia.org/wiki/Specials_(Unicode_block)
export
genCharToInteger : Line -> ErlExpr vars -> ErlExpr vars
genCharToInteger l char =
  EMatcherCase l char [MCodepoint] (EInteger l 65533)

export
genCharToInt : Line -> ErlExpr vars -> ErlExpr vars
genCharToInt l char =
  genCharToInteger l char

export
genCharToString : Line -> ErlExpr vars -> ErlExpr vars
genCharToString l char =
  genList l [char]


-- CAST: String -> *

export
genStringToInteger : Line -> ErlExpr vars -> ErlExpr vars
genStringToInteger l str =
  let toIntegerCall = genFunCall l "string" "to_integer" [str] 
  in EMatcherCase l toIntegerCall
      [ MTuple [MExact (EAtom l "error"), MExact (EAtom l "no_integer")] (EInteger l 0)
      , MTuple [MInteger, MNil] (ELocal l First)
      ]
      (EInteger l 0)

export
genStringToInt : Line -> ErlExpr vars -> ErlExpr vars
genStringToInt l str =
  genStringToInteger l str

-- Try to convert String to Double
-- If it fails; try to convert String to Integer to Double
export
genStringToDouble : Line -> ErlExpr vars -> ErlExpr vars
genStringToDouble l str =
  let toFloatCall = genFunCall l "string" "to_float" [str] 
  in EMatcherCase l toFloatCall
      [ MTuple [MExact (EAtom l "error"), MExact (EAtom l "no_float")]
          (weaken (weaken (genFunCall l "erlang" "float" [genStringToInteger l str])))
      , MTuple [MFloat, MNil] (ELocal l First)
      ]
      (EFloat l 0)


-- IO

export
genUnicodePutStr : Line -> ErlExpr vars -> ErlExpr vars
genUnicodePutStr l str =
  genFunCall l "io" "format" [ECharlist l "~ts", genList l [str]]

export
genUnicodeGetStr : Line -> ErlExpr vars -> ErlExpr vars
genUnicodeGetStr l prompt =
  let getLineCall = genFunCall l "io" "get_line" [prompt]
  in genFunCall l "string" "trim" [getLineCall, EAtom l "trailing", ECharlist l "\n"]
