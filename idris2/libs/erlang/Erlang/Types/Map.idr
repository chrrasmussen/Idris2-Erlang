module Erlang.Types.Map

import Erlang.Types
import Erlang.Decode
import Erlang.IO


%default total


-- This module contains functions to create Erlang maps and to get values from
-- Erlang maps. Erlang maps are allowed to store any Erlang value in its
-- keys and values.


||| A predicate that a certain key and type exists in a list of entries.
public export
data ErlMapElem : key -> Type -> List ErlMapEntry -> Type where
  [search key]
  Here : ErlMapElem key valueTy (MkMapEntry key valueTy :: _)
  There : ErlMapElem key valueTy xs -> ErlMapElem key valueTy (_ :: xs)

||| Convert an `ErlMapSubset` to `ErlAnyMap`.
|||
||| This conversion is always safe because `ErlAnyMap` represents any Erlang
||| maps, independent of which keys/values it contains.
export %inline
toAnyMap : ErlMapSubset xs -> ErlAnyMap
toAnyMap = believe_me


-- MANIPULATE MAPS

||| Create an empty Erlang map.
export
empty : ErlAnyMap
empty = erlUnsafeCall ErlAnyMap "maps" "new" []

||| Insert a key/value into an Erlang map.
export
insert : (IsErlType key, IsErlType value) => key -> value -> ErlAnyMap -> ErlAnyMap
insert key value m = erlUnsafeCall ErlAnyMap "maps" "put" [key, value, m]

||| Delete a key from an Erlang map.
export
delete : IsErlType key => key -> ErlAnyMap -> ErlAnyMap
delete key m = erlUnsafeCall ErlAnyMap "maps" "remove" [key, m]


-- QUERY MAPS

||| Get the number of keys in an Erlang map.
export
size : ErlMapSubset xs -> Nat
size m =
  let size = erlUnsafeCall Integer "maps" "size" [toAnyMap m]
  in integerToNat size

||| Get all keys in an Erlang map.
export
keys : ErlMapSubset xs -> List ErlTerm
keys m = erlUnsafeCall (List ErlTerm) "maps" "keys" [toAnyMap m]

||| Get all values in an Erlang map.
export
values : ErlMapSubset xs -> List ErlTerm
values m = erlUnsafeCall (List ErlTerm) "maps" "values" [toAnyMap m]

||| Get all entries in an Erlang map.
export
entries : ErlMapSubset xs -> List (ErlTerm, ErlTerm)
entries m =
  let xs = erlUnsafeCall (List (ErlTuple2 ErlTerm ErlTerm)) "maps" "to_list" [toAnyMap m]
  in map (\(MkTuple2 x1 x2) => (x1, x2)) xs

||| Look for a key in an Erlang map. The value for the key must match the
||| given decoder.
|||
||| Returns `Nothing` if no valid entry is found.
export
lookup : IsErlType key => key -> ErlDecoder a -> ErlMapSubset xs -> Maybe a
lookup key decoder m = erlDecodeMay (mapEntry key decoder) (toAnyMap m)

||| Get a specific key from an Erlang map.
|||
||| The key must be specified as an entry in the type of `ErlMapSubset`.
export
get : (key : a) -> ErlMapSubset xs -> ErlMapElem key b xs => b
get key m =
  let MkRaw res = erlUnsafeCall (Raw b) "maps" "get" [MkRaw key, toAnyMap m]
  in res
