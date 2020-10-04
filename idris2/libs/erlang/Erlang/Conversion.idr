module Erlang.Conversion

import Erlang.Types


%default total


-- UNSAFE CONVERSIONS

-- ErlType a -> ErlType b

||| Cast a value from one type to another. (Caution: Wrong usage of this
||| function may result in run-time errors.)
|||
||| Both the target type and the type of the given value must be a member of `ErlType`.
|||
||| `erlUnsafeCast` should only be used when you are sure the casting is safe.
||| In the common case, you should probably use the functions from `Erlang.Decode`.
export %inline
erlUnsafeCast : ErlType from => (0 to : Type) -> ErlType to => from -> to
erlUnsafeCast _ = prim__believe_me _ _


-- CONVERSION TO `ErlTerm`

||| Convert a value to an untyped Erlang value (`ErlTerm`).
public export
interface ToErlTerm a where
  toErlTerm : a -> ErlTerm


-- Values that conform to `ErlType` are already proper Erlang values.
export %inline
ErlType a => ToErlTerm a where
  toErlTerm = prim__believe_me _ _


-- CASTS

-- Unit <-> ErlTuple0

export
Cast () ErlTuple0 where
  cast MkUnit = MkTuple0

export
Cast ErlTuple0 () where
  cast MkTuple0 = MkUnit


-- Bool -> ErlAtom

export
Cast Bool ErlAtom where
  cast True = MkAtom "true"
  cast False = MkAtom "false"


-- ErlNil/ErlCons -> List

export
Cast ErlNil (List a) where
  cast [] = []

export
Cast b (List a) => Cast (ErlCons a b) (List a) where
  cast (x :: y) = x :: cast y


-- ErlNil/ErlCons -> ErlList

export
Cast ErlNil (ErlList []) where
  cast [] = []

export
Cast b (ErlList bs) => Cast (ErlCons a b) (ErlList (a :: bs)) where
  cast (x :: y) = x :: cast y


-- ErlList -> List

export
Cast (ErlList []) (List a) where
  cast [] = []

export
Cast (ErlList as) (List a) => Cast (ErlList (a :: as)) (List a) where
  cast (x :: xs) = x :: cast xs


-- ErlList -> ErlNil/ErlCons

export
Cast (ErlList []) ErlNil where
  cast [] = []

export
Cast (ErlList [a]) (ErlCons a ErlNil) where
  cast (x :: xs) = x :: cast xs

export
Cast (ErlList as) (ErlCons b c) => Cast (ErlList (a :: as)) (ErlCons a (ErlCons b c)) where
  cast (x :: xs) = x :: cast xs


-- List -> ErlNil/ErlCons

||| Helper functions for `listToErlCons`.
export
0 ListToErlCons : List a -> Type
ListToErlCons [] = ErlNil
ListToErlCons (_ :: xs) = ErlCons a (ListToErlCons xs)

||| Convert `List` to `ErlNil` and `ErlCons`.
export
listToErlCons : (xs : List a) -> ListToErlCons xs
listToErlCons [] = []
listToErlCons (x :: xs) = x :: listToErlCons xs


-- List -> ErlList

||| Helper function for `listToErlList`.
export
0 ListToTypes : List a -> List Type
ListToTypes [] = []
ListToTypes (_ :: xs) = a :: ListToTypes xs

||| Convert `List` to `ErlList`.
export
listToErlList : (xs : List a) -> ErlList (ListToTypes xs)
listToErlList [] = []
listToErlList (x :: xs) = x :: listToErlList xs
