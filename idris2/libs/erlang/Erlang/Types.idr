module Erlang.Types


%default total

-- This module contains data types that have special handling in the Erlang
-- code generator. Even if these data types have special handling, you can
-- use them like any other Idris data types. For example: You can use pattern
-- matching to obtain the contained values.
--
-- When calling an Erlang function you can pass these data types and assume
-- that they have the expected representation in Erlang. Similarly, when
-- retrieving values from Erlang (in the case of `erlUnsafeCall`), you should
-- be careful to choose the correct type. If you are unsure or if the returned
-- value can have one of many possible types, then you should specify `ErlTerm`.


||| Represents any Erlang term.
|||
||| An `ErlTerm` can be converted to a typed value using
||| `Erlang.Decode.erlDecode` and friends.
export
data ErlTerm : Type where [external]

||| Represents a value that have no meaning to Erlang.
|||
||| Some of the Erlang interop functions require that the value is a member of
||| `IsErlType`. If you still want to pass the Idris value to Erlang, you can
||| wrap it in the `Raw` type.
|||
||| `Raw a` is compiled to `a`.
public export
data Raw a = MkRaw a


-- ATOMS

||| Represents an Erlang atom.
|||
||| | Idris                    | Erlang            |
||| | ------------------------ | ----------------- |
||| | `MkAtom "ok"`            | `ok`              |
||| | `MkAtom "Elixir.String"` | `'Elixir.String'` |
public export
data ErlAtom : Type where
  [noNewtype]
  MkAtom : String -> ErlAtom


-- CHARLISTS

||| Represents an Erlang charlist.
|||
||| | Idris                 | Erlang                  |
||| | --------------------- | ----------------------- |
||| | `MkCharlist "abc"`    | `"abc"`, `[97, 98, 99]` |
||| | `MkCharlist ""`       | `""`, `[]`              |
public export
data ErlCharlist : Type where
  [noNewtype]
  MkCharlist : String -> ErlCharlist


-- LISTS


namespace MaybeImproperList
  ||| Represents the Erlang empty list.
  |||
  ||| | Idris            | Erlang |
  ||| | ---------------- | ------ |
  ||| | `the ErlNil Nil` | `[]`   |
  public export
  data ErlNil : Type where
    [noEnum]
    Nil : ErlNil

  ||| Represents the head and tail of an Erlang list.
  |||
  ||| `ErlCons` can be used to create improper lists. Combine with `ErlNil`
  ||| to create a proper list.
  |||
  ||| | Idris                                  | Erlang              |
  ||| | -------------------------------------- | ------------------- |
  ||| | `the (ErlCons Int Double) (3 :: 7.5)`  | `[3 | 7.5]`         |
  ||| | `the (ErlCons Int ErlNil) (42 :: Nil)` | `[42 | []]`, `[42]` |
  public export
  data ErlCons : Type -> Type -> Type where
    (::) : a -> b -> ErlCons a b

namespace ProperList
  ||| Represents an Erlang list where each element has a separate type.
  |||
  ||| `ErlList` can only represent proper lists.
  |||
  ||| Note that `Prelude.List` is also converted to an Erlang list. The
  ||| difference between `ErlList` and `List` is that `List` require that
  ||| all elements have the same type.
  |||
  ||| | Idris                                  | Erlang              |
  ||| | -------------------------------------- | ------------------- |
  ||| | `the (ErlList [Int, Double]) [3, 7.5]` | `[3, 7.5]`          |
  ||| | `the (ErlList [Int]) [42]`             | `[42]`              |
  public export
  data ErlList : List Type -> Type where
    Nil : ErlList []
    (::) : x -> ErlList xs -> ErlList (x :: xs)


-- MAPS

||| A data type to describe an entry in an Erlang map.
|||
||| This data type is a helper type for `ErlMapSubset` and does not
||| represent anything specific in Erlang.
public export
data ErlMapEntry : Type where
  MkMapEntry : key -> (valueTy : Type) -> ErlMapEntry

infix 0 .=

||| A convenience operator to describe an entry in an Erlang map.
|||
||| `"name" .= String` is equivalent to `MkMapEntry "name" String`.
public export
(.=) : key -> (valueTy : Type) -> ErlMapEntry
(.=) = MkMapEntry


||| Represents an Erlang map containing at least the entries specified in
||| its type. The Erlang map may still contain other entries.
|||
||| As an example: `ErlMapSubset [MkAtom "name" .= String, MkAtom "age" .= Int]`
||| represents any Erlang map that contains both of these entries (and possibly
||| more entries). Thus, the following Erlang values matches this specification:
||| - `#{name => <<"Christian">>, age => 33}`
||| - `#{name => <<"Christian">>, age => 33, other_field => true}`
|||
||| See module `Erlang.Types.Map` for Map-related functions.
export
data ErlMapSubset : List ErlMapEntry -> Type where [external]

||| Represents any Erlang maps.
|||
||| At compile-time one does not know which keys are available
||| in the map.
|||
||| See module `Erlang.Types.Map` for Map-related functions.
public export
ErlAnyMap : Type
ErlAnyMap = ErlMapSubset []


-- REFERENCE TYPES

||| Represents an Erlang process ID.
export
data ErlPid : Type where [external]

||| Represents an Erlang reference.
export
data ErlReference : Type where [external]

||| Represents an Erlang port.
export
data ErlPort : Type where [external]


-- TUPLES

||| Represents an Erlang tuple of size 0.
|||
||| | Idris      | Erlang |
||| | ---------- | ------ |
||| | `MkTuple0` | `{}`   |
public export
data ErlTuple0 : Type where
  [noEnum]
  MkTuple0 : ErlTuple0

||| Represents an Erlang tuple of size 1.
|||
||| | Idris         | Erlang |
||| | ------------- | ------ |
||| | `MkTuple1 42` | `{42}` |
public export
data ErlTuple1 : Type -> Type where
  [noNewtype]
  MkTuple1 : a -> ErlTuple1 a

||| Represents an Erlang tuple of size 2.
|||
||| | Idris             | Erlang      |
||| | ----------------- | ----------- |
||| | `MkTuple2 42 7.5` | `{42, 7.5}` |
public export
data ErlTuple2 : Type -> Type -> Type where
  MkTuple2 : a -> b -> ErlTuple2 a b

||| Represents an Erlang tuple of size 3.
public export
data ErlTuple3 : Type -> Type -> Type -> Type where
  MkTuple3 : a -> b -> c -> ErlTuple3 a b c

||| Represents an Erlang tuple of size 4.
public export
data ErlTuple4 : Type -> Type -> Type -> Type -> Type where
  MkTuple4 : a -> b -> c -> d -> ErlTuple4 a b c d

||| Represents an Erlang tuple of size 5.
public export
data ErlTuple5 : Type -> Type -> Type -> Type -> Type -> Type where
  MkTuple5 : a -> b -> c -> d -> e -> ErlTuple5 a b c d e

||| Represents an Erlang tuple of size 6.
public export
data ErlTuple6 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
  MkTuple6 : a -> b -> c -> d -> e -> f -> ErlTuple6 a b c d e f

||| Represents an Erlang tuple of size 7.
public export
data ErlTuple7 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  MkTuple7 : a -> b -> c -> d -> e -> f -> g -> ErlTuple7 a b c d e f g

||| Represents an Erlang tuple of size 8.
public export
data ErlTuple8 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  MkTuple8 : a -> b -> c -> d -> e -> f -> g -> h -> ErlTuple8 a b c d e f g h


-- FUNCTIONS

||| Represents an Erlang function of arity 0.
|||
||| `ErlFun/N` is a series of data types that can be used to convert a pure
||| Idris function to an Erlang function of a given arity, or to convert an
||| Erlang function to a pure Idris function.
|||
||| Note that `ErlFun/N` should only be used when the Erlang function does not
||| perform any side-effects. If the Erlang function performs any side-effects,
||| you should instead use one of the `ErlIOFun/N` data types.
public export
data ErlFun0 : Type -> Type where
  [noNewtype]
  MkFun0 : ret -> ErlFun0 ret

||| Represents an Erlang function of arity 1.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun1 : Type -> Type -> Type where
  [noNewtype]
  MkFun1 : (a -> ret) -> ErlFun1 a ret

||| Represents an Erlang function of arity 2.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun2 : Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun2 : (a -> b -> ret) -> ErlFun2 a b ret

||| Represents an Erlang function of arity 3.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun3 : Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun3 : (a -> b -> c -> ret) -> ErlFun3 a b c ret

||| Represents an Erlang function of arity 4.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun4 : Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun4 : (a -> b -> c -> d -> ret) -> ErlFun4 a b c d ret

||| Represents an Erlang function of arity 5.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun5 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun5 : (a -> b -> c -> d -> e -> ret) -> ErlFun5 a b c d e ret

||| Represents an Erlang function of arity 6.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun6 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun6 : (a -> b -> c -> d -> e -> f -> ret) -> ErlFun6 a b c d e f ret

||| Represents an Erlang function of arity 7.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun7 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun7 : (a -> b -> c -> d -> e -> f -> g -> ret) -> ErlFun7 a b c d e f g ret

||| Represents an Erlang function of arity 8.
|||
||| See the documentation of `ErlFun0` for more details.
public export
data ErlFun8 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkFun8 : (a -> b -> c -> d -> e -> f -> g -> h -> ret) -> ErlFun8 a b c d e f g h ret

||| Represents an Erlang function of arity 0.
|||
||| `ErlIOFun/N` is a series of data types that can be used to convert an Idris
||| function that performs side-effects to an Erlang function of a given arity,
||| or to convert an Erlang function to an Idris function that performs
||| side-effects.
|||
||| If you are certain that the Erlang function is pure, then you can consider
||| using one of the `ErlFun/N` data types.
public export
data ErlIOFun0 : Type -> Type where
  [noNewtype]
  MkIOFun0  : IO ret -> ErlIOFun0 ret

||| Represents an Erlang function of arity 1.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun1 : Type -> Type -> Type where
  [noNewtype]
  MkIOFun1  : (a -> IO ret) -> ErlIOFun1 a ret

||| Represents an Erlang function of arity 2.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun2 : Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun2  : (a -> b -> IO ret) -> ErlIOFun2 a b ret

||| Represents an Erlang function of arity 3.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun3 : Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun3  : (a -> b -> c -> IO ret) -> ErlIOFun3 a b c ret

||| Represents an Erlang function of arity 4.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun4 : Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun4  : (a -> b -> c -> d -> IO ret) -> ErlIOFun4 a b c d ret

||| Represents an Erlang function of arity 5.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun5 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun5  : (a -> b -> c -> d -> e -> IO ret) -> ErlIOFun5 a b c d e ret

||| Represents an Erlang function of arity 6.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun6 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun6  : (a -> b -> c -> d -> e -> f -> IO ret) -> ErlIOFun6 a b c d e f ret

||| Represents an Erlang function of arity 7.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun7 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun7  : (a -> b -> c -> d -> e -> f -> g -> IO ret) -> ErlIOFun7 a b c d e f g ret

||| Represents an Erlang function of arity 8.
|||
||| See the documentation of `ErlIOFun0` for more details.
public export
data ErlIOFun8 : Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkIOFun8  : (a -> b -> c -> d -> e -> f -> g -> h -> IO ret) -> ErlIOFun8 a b c d e f g h ret


-- ERLANG TYPE PREDICATE

mutual
  ||| `IsErlType` describes all data types that have a natural representation
  ||| in Erlang. `IsErlType` can help prevent mistakes such as trying to pass
  ||| invalid values to Erlang functions.
  |||
  ||| All Idris values must have a representation in Erlang, but it is not
  ||| always clear what that representation should be. For example: How
  ||| should the value `Just 42` be represented in Erlang? It could be `{ok, 42}`,
  ||| `{just, 42}` or something else.
  |||
  ||| If you need to pass an Idris value to Erlang that is not present in this
  ||| data type, you can always wrap the value in the `Raw` type.
  public export
  data IsErlType : Type -> Type where
    ETInt           : IsErlType Int
    ETInteger       : IsErlType Integer
    ETDouble        : IsErlType Double
    ETString        : IsErlType String
    ETChar          : IsErlType Char
    ETList          : IsErlType a => IsErlType (List a)

    ETRaw           : IsErlType (Raw a)     -- Can contain any Idris value
    ETErlTerm       : IsErlType ErlTerm     -- Can contain any Erlang term

    -- Data types that bridge to native Erlang data types
    ETErlAtom       : IsErlType ErlAtom
    ETErlCharlist   : IsErlType ErlCharlist
    ETErlNil        : IsErlType ErlNil
    ETErlCons       : (IsErlType a, IsErlType b) => IsErlType (ErlCons a b)
    ETErlList       : IsErlTypes xs => IsErlType (ErlList xs)
    ETErlMapSubset  : IsErlMapTypes xs => IsErlType (ErlMapSubset xs)
    ETErlPid        : IsErlType ErlPid
    ETErlReference  : IsErlType ErlReference
    ETErlPort       : IsErlType ErlPort
    ETErlTuple0     : IsErlType ErlTuple0
    ETErlTuple1     : IsErlTypes [a]                           => IsErlType (ErlTuple1 a)
    ETErlTuple2     : IsErlTypes [a, b]                        => IsErlType (ErlTuple2 a b)
    ETErlTuple3     : IsErlTypes [a, b, c]                     => IsErlType (ErlTuple3 a b c)
    ETErlTuple4     : IsErlTypes [a, b, c, d]                  => IsErlType (ErlTuple4 a b c d)
    ETErlTuple5     : IsErlTypes [a, b, c, d, e]               => IsErlType (ErlTuple5 a b c d e)
    ETErlTuple6     : IsErlTypes [a, b, c, d, e, f]            => IsErlType (ErlTuple6 a b c d e f)
    ETErlTuple7     : IsErlTypes [a, b, c, d, e, f, g]         => IsErlType (ErlTuple7 a b c d e f g)
    ETErlTuple8     : IsErlTypes [a, b, c, d, e, f, g, h]      => IsErlType (ErlTuple8 a b c d e f g h)
    ETErlFun0       : IsErlTypes [ret]                         => IsErlType (ErlFun0 ret)
    ETErlFun1       : IsErlTypes [a, ret]                      => IsErlType (ErlFun1 a ret)
    ETErlFun2       : IsErlTypes [a, b, ret]                   => IsErlType (ErlFun2 a b ret)
    ETErlFun3       : IsErlTypes [a, b, c, ret]                => IsErlType (ErlFun3 a b c ret)
    ETErlFun4       : IsErlTypes [a, b, c, d, ret]             => IsErlType (ErlFun4 a b c d ret)
    ETErlFun5       : IsErlTypes [a, b, c, d, e, ret]          => IsErlType (ErlFun5 a b c d e ret)
    ETErlFun6       : IsErlTypes [a, b, c, d, e, f, ret]       => IsErlType (ErlFun6 a b c d e f ret)
    ETErlFun7       : IsErlTypes [a, b, c, d, e, f, g, ret]    => IsErlType (ErlFun7 a b c d e f g ret)
    ETErlFun8       : IsErlTypes [a, b, c, d, e, f, g, h, ret] => IsErlType (ErlFun8 a b c d e f g h ret)
    ETErlIOFun0     : IsErlTypes [ret]                         => IsErlType (ErlIOFun0 ret)
    ETErlIOFun1     : IsErlTypes [a, ret]                      => IsErlType (ErlIOFun1 a ret)
    ETErlIOFun2     : IsErlTypes [a, b, ret]                   => IsErlType (ErlIOFun2 a b ret)
    ETErlIOFun3     : IsErlTypes [a, b, c, ret]                => IsErlType (ErlIOFun3 a b c ret)
    ETErlIOFun4     : IsErlTypes [a, b, c, d, ret]             => IsErlType (ErlIOFun4 a b c d ret)
    ETErlIOFun5     : IsErlTypes [a, b, c, d, e, ret]          => IsErlType (ErlIOFun5 a b c d e ret)
    ETErlIOFun6     : IsErlTypes [a, b, c, d, e, f, ret]       => IsErlType (ErlIOFun6 a b c d e f ret)
    ETErlIOFun7     : IsErlTypes [a, b, c, d, e, f, g, ret]    => IsErlType (ErlIOFun7 a b c d e f g ret)
    ETErlIOFun8     : IsErlTypes [a, b, c, d, e, f, g, h, ret] => IsErlType (ErlIOFun8 a b c d e f g h ret)

  ||| A variant of `IsErlType` that takes a list of types.
  public export
  data IsErlTypes : List Type -> Type where
    ETErlTypesNil   : IsErlTypes []
    ETErlTypesCons  : (IsErlType x, IsErlTypes xs) => IsErlTypes (x :: xs)

  ||| A variant of `IsErlType` that takes a list of map entries.
  public export
  data IsErlMapTypes : List ErlMapEntry -> Type where
    EMTNil : IsErlMapTypes []
    EMTCons : (IsErlType keyTy, IsErlType valueTy) => (key : keyTy) -> IsErlMapTypes xs -> IsErlMapTypes (MkMapEntry key valueTy :: xs)
