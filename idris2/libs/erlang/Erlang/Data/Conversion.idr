module Erlang.Data.Conversion

import Erlang.Data


%default total


-- UNSAFE CONVERSIONS

-- ErlType a -> ErlType b

export
erlUnsafeCast : ErlType from => (0 to : Type) -> ErlType to => from -> to
erlUnsafeCast to term = believe_me term


-- SAFE CONVERSIONS

-- ErlType a -> ErlTerm
-- (Allow all supported Erlang types to be type erased)

export
ErlType a => Cast a ErlTerm where
  cast x = believe_me x


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

export
0 ListToErlCons : List a -> Type
ListToErlCons [] = ErlNil
ListToErlCons (_ :: xs) = ErlCons a (ListToErlCons xs)

export
listToErlCons : (xs : List a) -> ListToErlCons xs
listToErlCons [] = []
listToErlCons (x :: xs) = x :: listToErlCons xs


-- List -> ErlList

export
0 ListToTypes : List a -> List Type
ListToTypes [] = []
ListToTypes (_ :: xs) = a :: ListToTypes xs

export
listToErlList : (xs : List a) -> ErlList (ListToTypes xs)
listToErlList [] = []
listToErlList (x :: xs) = x :: listToErlList xs
