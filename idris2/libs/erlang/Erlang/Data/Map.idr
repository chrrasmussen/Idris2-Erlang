module Erlang.Data.Map

import Erlang.Data
import Erlang.Data.Decode
import Erlang.IO


%default total


public export
data ErlMapElem : key -> Type -> List ErlMapEntry -> Type where
  [search key]
  Here : ErlMapElem key valueTy (MkMapEntry key valueTy :: _)
  There : ErlMapElem key valueTy xs -> ErlMapElem key valueTy (_ :: xs)

export %inline
toAnyMap : ErlMapSubset xs -> ErlAnyMap
toAnyMap = believe_me


-- MANIPULATE MAPS

export
empty : ErlAnyMap
empty = unsafePerformIO $ erlUnsafeCall ErlAnyMap "maps" "new" []

export
insert : (ErlType key, ErlType value) => key -> value -> ErlAnyMap -> ErlAnyMap
insert key value m = unsafePerformIO $ erlUnsafeCall ErlAnyMap "maps" "put" [key, value, m]

export
delete : ErlType key => key -> ErlAnyMap -> ErlAnyMap
delete key m = unsafePerformIO $ erlUnsafeCall ErlAnyMap "maps" "remove" [key, m]


-- QUERY MAPS

export
size : ErlMapSubset xs -> Nat
size m = unsafePerformIO $ do
  size <- erlUnsafeCall Integer "maps" "size" [toAnyMap m]
  pure (integerToNat size)

export
keys : ErlMapSubset xs -> List ErlTerm
keys m = unsafePerformIO $ erlUnsafeCall (List ErlTerm) "maps" "keys" [toAnyMap m]

export
values : ErlMapSubset xs -> List ErlTerm
values m = unsafePerformIO $ erlUnsafeCall (List ErlTerm) "maps" "values" [toAnyMap m]

export
entries : ErlMapSubset xs -> List (ErlTerm, ErlTerm)
entries m = unsafePerformIO $ do
  xs <- erlUnsafeCall (List (ErlTuple2 ErlTerm ErlTerm)) "maps" "to_list" [toAnyMap m]
  pure (map (\(MkTuple2 x1 x2) => (x1, x2)) xs)

export
lookup : ErlType key => key -> ErlDecoder a -> ErlMapSubset xs -> Maybe a
lookup key decoder m = erlDecodeMay (mapEntry key decoder) (toAnyMap m)

export
get : (key : a) -> ErlMapSubset xs -> ErlMapElem key b xs => b
get key m = unsafePerformIO $ do
  MkRaw res <- erlUnsafeCall (Raw b) "maps" "get" [MkRaw key, toAnyMap m]
  pure res
