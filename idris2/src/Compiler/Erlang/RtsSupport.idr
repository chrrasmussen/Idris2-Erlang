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

export
genRef : NamespaceInfo -> Line -> Name -> ErlExpr vars
genRef namespaceInfo l name =
  let currentNS = getNamespace name
      (modName, fnName) = moduleNameFunctionName (prefix namespaceInfo) name
  in if Just currentNS == inNS namespaceInfo
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
genTryCatch : NamespaceInfo -> Line -> ErlExpr vars -> ErlExpr vars
genTryCatch namespaceInfo l body =
  let okExpr = ECon l (constructorName namespaceInfo (NS ["Prelude"] (UN "Right"))) [genErased l, genErased l, ELocal l First]
      errorExpr = ECon l (constructorName namespaceInfo (NS ["Prelude"] (UN "Left"))) [genErased l, genErased l, ELocal l First]
  in ETryCatch l body (MN "" 0) okExpr (MN "" 0) errorExpr

export
genMkUnit : Line -> ErlExpr vars
genMkUnit l =
  ETuple l []

-- PrimIO.MkIORes : {0 a : Type} -> (result : a) -> (1 x : %World) -> IORes a
export
genMkIORes : NamespaceInfo -> Line -> ErlExpr vars -> ErlExpr vars
genMkIORes namespaceInfo l expr =
  ECon l (constructorName namespaceInfo (NS ["PrimIO"] (UN "MkIORes"))) [genErased l, expr, EIdrisConstant l IWorldVal]

-- PrimIO.MkIO : {0 a : Type} -> (1 fn : (1 x : %World) -> IORes a) -> IO a
export
genMkIO : NamespaceInfo -> Line -> ErlExpr vars -> ErlExpr vars
genMkIO namespaceInfo l expr =
  let worldVar = MN "" 0
      fn = ELam l [worldVar] (genMkIORes namespaceInfo l (weaken expr))
  in ECon l (constructorName namespaceInfo (NS ["PrimIO"] (UN "MkIO"))) [genErased l, fn]

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

export
genBoolToInt : Line -> ErlExpr vars -> ErlExpr vars
genBoolToInt l expr =
  EMatcherCase l
    expr
    [ MTransform (MExact (EAtom l "false")) (MN "" 0) (EInteger l 0)
    ]
    (EInteger l 1)
