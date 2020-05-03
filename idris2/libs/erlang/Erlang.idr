module Erlang


%default total


namespace Idris
  -- `Raw a` is compiled to `a`
  public export
  data Raw a = MkRaw a


namespace Atoms
  public export
  data ErlAtom : Type where
    [noNewtype]
    MkErlAtom : String -> ErlAtom


namespace Strings
  public export
  data ErlBinary : Type where
    [noNewtype]
    MkErlBinary : String -> ErlBinary

  public export
  data ErlCharlist : Type where
    [noNewtype]
    MkErlCharlist : String -> ErlCharlist


namespace MaybeImproperLists
  public export
  data ErlNil = Nil

  public export
  data ErlCons a b = (::) a b


namespace ProperLists
  public export
  data ErlList : List Type -> Type where
    Nil : ErlList []
    (::) : x -> ErlList xs -> ErlList (x :: xs)


namespace Opaque
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


namespace Tuples
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


namespace Functions
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


----------
-- CAST --
----------

-- ErlType a -> ErlTerm
-- (Allow all supported Erlang types to be type erased)

export
ErlType a => Cast a ErlTerm where
  cast x = believe_me x


-- Unit <-> ErlTuple0

export
Cast () ErlTuple0 where
  cast MkUnit = MkErlTuple0

export
Cast ErlTuple0 () where
  cast MkErlTuple0 = MkUnit


-- Bool -> ErlAtom

export
Cast Bool ErlAtom where
  cast True = MkErlAtom "true"
  cast False = MkErlAtom "false"


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


namespace IO
  %extern prim__erlUnsafeCall : (0 ret : Type) -> String -> String -> ErlList xs -> (1 x : %World) -> IORes ret

  export %inline
  erlUnsafeCall : (0 ret : Type) -> {auto ret_prf : ErlType ret} ->
                  String ->
                  String ->
                  ErlList xs -> {auto inp_prf : ErlTypes xs} ->
                  IO ret
  erlUnsafeCall ret modName fnName args = primIO (prim__erlUnsafeCall ret modName fnName args)

  public export
  ErlException : Type
  ErlException = ErlTuple3 ErlAtom ErlTerm ErlTerm

  %extern prim__erlTryCatch : IO a -> (1 x : %World) -> IORes (Either ErlException a)

  export
  erlTryCatch : IO a -> IO (Either ErlException a)
  erlTryCatch action = primIO (prim__erlTryCatch action)

  export partial %inline
  erlCall : String -> String -> ErlList xs -> {auto prf : ErlTypes xs} -> IO (Either ErlException ErlTerm)
  erlCall modName fnName args = erlTryCatch (erlUnsafeCall ErlTerm modName fnName args)

  export
  erlUnsafeCast : (0 to : Type) -> {auto prf : ErlType to} -> ErlTerm -> to
  erlUnsafeCast to term = believe_me term

  %extern prim__erlModule : ErlAtom

  export %inline
  erlModule : ErlAtom
  erlModule = prim__erlModule

  public export
  data ErlExport : Type where
    Fun : ErlType t => (name : String) -> (expr : t) -> ErlExport
    Combine : ErlExport -> ErlExport -> ErlExport

  public export %inline
  (<+>) : ErlExport -> ErlExport -> ErlExport
  (<+>) = Combine


namespace CaseExpr
  public export
  TypesToFunc : List Type -> Type -> Type
  TypesToFunc [] ret = ret
  TypesToFunc (x :: xs) ret = x -> TypesToFunc xs ret

  mutual
    public export
    data ErlMatcher : Type -> Type where
      MExact        : ErlType a => a -> ErlMatcher ()
      MAny          : ErlMatcher ErlTerm
      MCodepoint    : ErlMatcher Char
      MInteger      : ErlMatcher Integer
      MDouble       : ErlMatcher Double
      MAtom         : ErlMatcher ErlAtom
      MBinary       : ErlMatcher ErlBinary
      MMap          : ErlMatcher ErlMap
      MPid          : ErlMatcher ErlPid
      MRef          : ErlMatcher ErlRef
      MPort         : ErlMatcher ErlPort
      MAnyList      : ErlMatcher ErlTerm
      MNil          : ErlMatcher ()
      MCons         : ErlMatcher a -> ErlMatcher b -> (a -> b -> ret)  -> ErlMatcher ret
      MList         : ErlMatchers xs -> TypesToFunc xs ret -> ErlMatcher ret
      MTuple        : ErlMatchers xs -> TypesToFunc xs ret -> ErlMatcher ret
      MMapSubset    : ErlMapEntryMatchers xs -> TypesToFunc xs ret -> ErlMatcher ret
      MIO           : (xs : List Type) -> ErlMatcher (TypesToFunc xs (IO (Either ErlException ErlTerm)))
      MTransform    : ErlMatcher a -> (a -> b) -> ErlMatcher b

    namespace ErlMatchers
      public export
      data ErlMatchers : List Type -> Type where
        Nil : ErlMatchers []
        (::) : ErlMatcher x -> ErlMatchers xs -> ErlMatchers (x :: xs)

    namespace ErlMapEntryMatchers
      public export
      data ErlMapEntryMatchers : List Type -> Type where
        Nil : ErlMapEntryMatchers []
        (::) : ErlMapEntry x -> ErlMapEntryMatchers xs -> ErlMapEntryMatchers (x :: xs)

    export
    data ErlMapEntry : Type -> Type where
      MkErlMapEntry : ErlType key => key -> ErlMatcher value -> ErlMapEntry value

    -- TODO: Which priority?
    infix 3 :=

    export %inline
    (:=) : ErlType key => key -> ErlMatcher value -> ErlMapEntry value
    (:=) = MkErlMapEntry

  %extern prim__erlCase : a -> List (ErlMatcher a) -> ErlTerm -> a

  export %inline
  erlCase : a -> List (ErlMatcher a) -> ErlTerm -> a
  erlCase = prim__erlCase

  -- TODO: I would prefer to have Functor implementation for ErlMatcher instead, but at the moment this function needs to be inlined
  export %inline
  map : (a -> b) -> ErlMatcher a -> ErlMatcher b
  map func matcher = MTransform matcher func


namespace Concurrency
  export
  erlSelf : IO ErlPid
  erlSelf = erlUnsafeCall ErlPid "erlang" "self" []

  export
  erlSpawnLink : IO () -> IO ErlPid
  erlSpawnLink action = erlUnsafeCall ErlPid "erlang" "spawn_link" [MkErlIOFun0 action]

  -- TODO: Support more receivers than just `ErlPid`
  export
  erlSend : ErlType a => ErlPid -> a -> IO ()
  erlSend receiver value = do
    erlCall "erlang" "send" [receiver, value]
    pure ()

  %extern prim__erlReceive : (ms : Int) -> a -> List (ErlMatcher a) -> (1 x : %World) -> IORes a

  -- TODO: Add proof that `ms` is in proper range: 0 - 16#FFFFFFFF (http://erlang.org/doc/reference_manual/expressions.html#receive)
  export %inline
  erlReceive : (ms : Int) -> a -> List (ErlMatcher a) -> IO a
  erlReceive ms def matchers = primIO (prim__erlReceive ms def matchers)


namespace Maps
  export
  empty : ErlMap
  empty = unsafePerformIO $ erlUnsafeCall ErlMap "maps" "new" []

  -- TODO: Return type may not match the actual content
  export
  unsafeLookup : ErlType key => key -> (0 ret : Type) -> {auto prf : ErlType ret} -> ErlMap -> Maybe ret
  unsafeLookup key ty m = unsafePerformIO $ do
    result <- erlUnsafeCall ErlTerm "maps" "find" [key, m]
    pure $ erlCase Nothing [MTuple [MExact (MkErlAtom "ok"), MAny] (\ok, value => Just (erlUnsafeCast ty value))] result

  export
  insert : (ErlType key, ErlType value) => key -> value -> ErlMap -> ErlMap
  insert key value m = unsafePerformIO $ erlUnsafeCall ErlMap "maps" "put" [key, value, m]

  export
  delete : ErlType key => key -> ErlMap -> ErlMap
  delete key m = unsafePerformIO $ erlUnsafeCall ErlMap "maps" "remove" [key, m]

  size : ErlMap -> Integer
  size m = unsafePerformIO $ erlUnsafeCall Integer "maps" "size" [m]


namespace StringConversions
  -- http://erlang.org/doc/man/unicode.html
  -- charlist() = [char()]
  export
  isValidCharlist : ErlTerm -> Bool
  isValidCharlist term =
    erlCase False [
      map (const True) MNil,
      MCons MCodepoint MAny (\x, y => isValidCharlist (assert_smaller term y))
    ] term

  export
  erlTermToCharlist : ErlTerm -> Maybe ErlCharlist
  erlTermToCharlist term =
    if isValidCharlist term
      then Just (erlUnsafeCast ErlCharlist term)
      else Nothing


  -- http://erlang.org/doc/man/unicode.html#type-chardata
  -- chardata() = charlist() | unicode_binary()
  -- charlist() = maybe_improper_list(char() | unicode_binary() | charlist(), unicode_binary() | [])
  -- maybe_improper_list(X, Y) = [X | maybe_improper_list(X, Y)]
  mutual
    isValidStringHead : ErlTerm -> Bool
    isValidStringHead term =
      erlCase False [
        map (const True) MCodepoint, -- NOTE: Codepoints are only valid in head position in an IO list
        map (const True) MBinary,
        map (const True) MNil,
        MCons MAny MAny (\x, y => isValidStringHead (assert_smaller term x) && isValidString (assert_smaller term y))
      ] term

    export
    isValidString : ErlTerm -> Bool
    isValidString term =
      erlCase False [
        map (const True) MBinary,
        map (const True) MNil,
        MCons MAny MAny (\x, y => isValidStringHead (assert_smaller term x) && isValidString (assert_smaller term y))
      ] term

  export
  erlTermToString : ErlTerm -> Maybe String
  erlTermToString term =
    if isValidString term
      then Just (erlUnsafeCast String term)
      else Nothing


namespace ListConversions
  export
  0 ListToErlCons : List a -> Type
  ListToErlCons [] = ErlNil
  ListToErlCons (_ :: xs) = ErlCons a (ListToErlCons xs)

  export
  listToErlCons : (xs : List a) -> ListToErlCons xs
  listToErlCons [] = []
  listToErlCons (x :: xs) = x :: listToErlCons xs

  export
  0 ListToTypes : List a -> List Type
  ListToTypes [] = []
  ListToTypes (_ :: xs) = a :: ListToTypes xs

  export
  listToErlList : (xs : List a) -> ErlList (ListToTypes xs)
  listToErlList [] = []
  listToErlList (x :: xs) = x :: listToErlList xs


----------
-- SHOW --
----------

showSep : String -> List String -> String
showSep sep [] = ""
showSep sep [x] = x
showSep sep (x :: xs) = x ++ sep ++ showSep sep xs

export
Show ErlTerm where
  show _ = "<Erlang Term>"

export
Show ErlPid where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "erlang" "pid_to_list" [x]
    pure ("#Pid" ++ str)

export
Show ErlRef where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "erlang" "ref_to_list" [x]
    pure str

export
Show ErlPort where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "erlang" "port_to_list" [x]
    pure str

export
Show ErlAtom where
  show (MkErlAtom x) = "'" ++ x ++ "'"

export
Show ErlBinary where
  show (MkErlBinary x) = "<<" ++ show x ++ ">>"

export
Show ErlCharlist where
  show (MkErlCharlist x) = show (erlUnsafeCast (List Int) (cast x))

export
Show ErlNil where
  show [] = "[]"

export
(Show a, Show b) => Show (ErlCons a b) where
  show (x :: y) = "[" ++ show x ++ " | " ++ show y ++ "]"

export
Show (ErlList []) where
  show [] = "[]"

export
(Show x, Show (ErlList xs)) => Show (ErlList (x :: xs)) where
  show (x :: xs) = "[" ++ show x ++ " | " ++ show xs ++ "]"

export
Show ErlTuple0 where
  show MkErlTuple0 = "{}"

export
Show a => Show (ErlTuple1 a) where
  show (MkErlTuple1 x1) =
    "{" ++ showSep ", " [show x1] ++ "}"

export
(Show a, Show b) => Show (ErlTuple2 a b) where
  show (MkErlTuple2 x1 x2) =
    "{" ++ showSep ", " [show x1, show x2] ++ "}"

export
(Show a, Show b, Show c) => Show (ErlTuple3 a b c) where
  show (MkErlTuple3 x1 x2 x3) =
    "{" ++ showSep ", " [show x1, show x2, show x3] ++ "}"

export
(Show a, Show b, Show c, Show d) => Show (ErlTuple4 a b c d) where
  show (MkErlTuple4 x1 x2 x3 x4) =
    "{" ++ showSep ", " [show x1, show x2, show x3, show x4] ++ "}"

export
(Show a, Show b, Show c, Show d, Show e) => Show (ErlTuple5 a b c d e) where
  show (MkErlTuple5 x1 x2 x3 x4 x5) =
    "{" ++ showSep ", " [show x1, show x2, show x3, show x4, show x5] ++ "}"

export
Show ErlMap where
  show _ = "<Erlang Map>" -- TODO: Implement
