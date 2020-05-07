module Erlang.Data


%default total


-- `Raw a` is compiled to `a`
public export
data Raw a = MkRaw a

public export
data ErlAtom : Type where
  [noNewtype]
  MkErlAtom : String -> ErlAtom

public export
data ErlBinary : Type where
  [noNewtype]
  MkErlBinary : String -> ErlBinary

public export
data ErlCharlist : Type where
  [noNewtype]
  MkErlCharlist : String -> ErlCharlist

namespace MaybeImproperList
  public export
  data ErlNil = Nil

  public export
  data ErlCons a b = (::) a b

namespace ProperList
  public export
  data ErlList : List Type -> Type where
    Nil : ErlList []
    (::) : x -> ErlList xs -> ErlList (x :: xs)

export
data ErlTerm : Type where [external]

export
data ErlMap : Type where [external]

export
data ErlPid : Type where [external]

export
data ErlRef : Type where [external]

export
data ErlPort : Type where [external]


-- TUPLES

public export
data ErlTuple0 : Type where
  MkErlTuple0 : ErlTuple0

public export
data ErlTuple1 : Type -> Type where
  [noNewtype]
  MkErlTuple1 : a -> ErlTuple1 a

public export
data ErlTuple2 : Type -> Type -> Type where
  MkErlTuple2 : a -> b -> ErlTuple2 a b

public export
data ErlTuple3 : Type -> Type -> Type -> Type where
  MkErlTuple3 : a -> b -> c -> ErlTuple3 a b c

public export
data ErlTuple4 : Type -> Type -> Type -> Type -> Type where
  MkErlTuple4 : a -> b -> c -> d -> ErlTuple4 a b c d

public export
data ErlTuple5 : Type -> Type -> Type -> Type -> Type -> Type where
  MkErlTuple5 : a -> b -> c -> d -> e -> ErlTuple5 a b c d e


-- FUNCTIONS

public export
data ErlFun0 : Type -> Type where
  [noNewtype]
  MkErlFun0 : ret -> ErlFun0 ret

public export
data ErlFun1 : Type -> Type -> Type where
  [noNewtype]
  MkErlFun1 : (a -> ret) -> ErlFun1 a ret

public export
data ErlFun2 : Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlFun2 : (a -> b -> ret) -> ErlFun2 a b ret

public export
data ErlFun3 : Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlFun3 : (a -> b -> c -> ret) -> ErlFun3 a b c ret

public export
data ErlFun4 : Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlFun4 : (a -> b -> c -> d -> ret) -> ErlFun4 a b c d ret

public export
data ErlFun5 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlFun5 : (a -> b -> c -> d -> e -> ret) -> ErlFun5 a b c d e ret

public export
data ErlIOFun0 : Type -> Type where
  [noNewtype]
  MkErlIOFun0  : IO ret -> ErlIOFun0 ret

public export
data ErlIOFun1 : Type -> Type -> Type where
  [noNewtype]
  MkErlIOFun1  : (a -> IO ret) -> ErlIOFun1 a ret

public export
data ErlIOFun2 : Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlIOFun2  : (a -> b -> IO ret) -> ErlIOFun2 a b ret

public export
data ErlIOFun3 : Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlIOFun3  : (a -> b -> c -> IO ret) -> ErlIOFun3 a b c ret

public export
data ErlIOFun4 : Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlIOFun4  : (a -> b -> c -> d -> IO ret) -> ErlIOFun4 a b c d ret

public export
data ErlIOFun5 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
  [noNewtype]
  MkErlIOFun5  : (a -> b -> c -> d -> e -> IO ret) -> ErlIOFun5 a b c d e ret


-- ERLANG TYPE PREDICATE

mutual
  public export
  data ErlType : Type -> Type where
    ETInt           : ErlType Int
    ETInteger       : ErlType Integer
    ETDouble        : ErlType Double
    ETString        : ErlType String
    ETChar          : ErlType Char

    ETUnit          : ErlType ()
    ETBool          : ErlType Bool
    ETList          : ErlType a => ErlType (List a)
    ETFun           : (ErlType a, ErlType b) => ErlType (a -> b) -- NOTE: These functions are curried in Erlang as well

    ETRaw           : ErlType (Raw a)     -- Can contain any Idris value
    ETErlTerm       : ErlType ErlTerm     -- Can contain any Erlang term

    -- Data types that bridge to native Erlang data types
    ETErlAtom       : ErlType ErlAtom
    ETErlBinary     : ErlType ErlBinary
    ETErlCharlist   : ErlType ErlCharlist
    ETErlNil        : ErlType ErlNil
    ETErlCons       : (ErlType a, ErlType b) => ErlType (ErlCons a b)
    ETErlList       : ErlTypes xs => ErlType (ErlList xs)
    ETErlMap        : ErlType ErlMap
    ETErlPid        : ErlType ErlPid
    ETErlRef        : ErlType ErlRef
    ETErlPort       : ErlType ErlPort
    ETErlTuple0     : ErlType ErlTuple0
    ETErlTuple1     : ErlTypes [a]                  => ErlType (ErlTuple1 a)
    ETErlTuple2     : ErlTypes [a, b]               => ErlType (ErlTuple2 a b)
    ETErlTuple3     : ErlTypes [a, b, c]            => ErlType (ErlTuple3 a b c)
    ETErlTuple4     : ErlTypes [a, b, c, d]         => ErlType (ErlTuple4 a b c d)
    ETErlTuple5     : ErlTypes [a, b, c, d, e]      => ErlType (ErlTuple5 a b c d e)
    ETErlFun0       : ErlTypes [ret]                => ErlType (ErlFun0 ret)
    ETErlFun1       : ErlTypes [a, ret]             => ErlType (ErlFun1 a ret)
    ETErlFun2       : ErlTypes [a, b, ret]          => ErlType (ErlFun2 a b ret)
    ETErlFun3       : ErlTypes [a, b, c, ret]       => ErlType (ErlFun3 a b c ret)
    ETErlFun4       : ErlTypes [a, b, c, d, ret]    => ErlType (ErlFun4 a b c d ret)
    ETErlFun5       : ErlTypes [a, b, c, d, e, ret] => ErlType (ErlFun5 a b c d e ret)
    ETErlIOFun0     : ErlTypes [ret]                => ErlType (ErlIOFun0 ret)
    ETErlIOFun1     : ErlTypes [a, ret]             => ErlType (ErlIOFun1 a ret)
    ETErlIOFun2     : ErlTypes [a, b, ret]          => ErlType (ErlIOFun2 a b ret)
    ETErlIOFun3     : ErlTypes [a, b, c, ret]       => ErlType (ErlIOFun3 a b c ret)
    ETErlIOFun4     : ErlTypes [a, b, c, d, ret]    => ErlType (ErlIOFun4 a b c d ret)
    ETErlIOFun5     : ErlTypes [a, b, c, d, e, ret] => ErlType (ErlIOFun5 a b c d e ret)

  public export
  data ErlTypes : List Type -> Type where
    ETErlTypesNil   : ErlTypes []
    ETErlTypesCons  : (ErlType x, ErlTypes xs) => ErlTypes (x :: xs)