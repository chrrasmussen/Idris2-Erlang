module Erlang


namespace Idris
  -- `Raw a` is compiled to `a`
  public export
  data Raw a = MkRaw a


namespace Atoms
  public export
  data ErlAtom = MkErlAtom String


namespace Strings
  public export
  data ErlBinary = MkErlBinary String

  public export
  data ErlCharlist = MkErlCharlist String


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
  data ErlTerm : Type where

  export
  data ErlMap : Type where

  export
  data ErlPid : Type where

  export
  data ErlRef : Type where

  export
  data ErlPort : Type where


namespace Tuples
  public export
  data ErlTuple0 = MkErlTuple0

  public export
  data ErlTuple1 a = MkErlTuple1 a

  public export
  data ErlTuple2 a b = MkErlTuple2 a b

  public export
  data ErlTuple3 a b c = MkErlTuple3 a b c

  public export
  data ErlTuple4 a b c d = MkErlTuple4 a b c d

  public export
  data ErlTuple5 a b c d e = MkErlTuple5 a b c d e


namespace Functions
  public export
  data ErlFun0 : Type -> Type where
    MkErlFun0 : ret -> ErlFun0 ret

  public export
  data ErlFun1 : Type -> Type -> Type where
    MkErlFun1 : (a -> ret) -> ErlFun1 a ret

  public export
  data ErlFun2 : Type -> Type -> Type -> Type where
    MkErlFun2 : (a -> b -> ret) -> ErlFun2 a b ret

  public export
  data ErlFun3 : Type -> Type -> Type -> Type -> Type where
    MkErlFun3 : (a -> b -> c -> ret) -> ErlFun3 a b c ret

  public export
  data ErlFun4 : Type -> Type -> Type -> Type -> Type -> Type where
    MkErlFun4 : (a -> b -> c -> d -> ret) -> ErlFun4 a b c d ret

  public export
  data ErlFun5 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
    MkErlFun5 : (a -> b -> c -> d -> e -> ret) -> ErlFun5 a b c d e ret

  public export
  data ErlIO0 : Type -> Type where
    MkErlIO0  : IO ret -> ErlIO0 ret

  public export
  data ErlIO1 : Type -> Type -> Type where
    MkErlIO1  : (a -> IO ret) -> ErlIO1 a ret

  public export
  data ErlIO2 : Type -> Type -> Type -> Type where
    MkErlIO2  : (a -> b -> IO ret) -> ErlIO2 a b ret

  public export
  data ErlIO3 : Type -> Type -> Type -> Type -> Type where
    MkErlIO3  : (a -> b -> c -> IO ret) -> ErlIO3 a b c ret

  public export
  data ErlIO4 : Type -> Type -> Type -> Type -> Type -> Type where
    MkErlIO4  : (a -> b -> c -> d -> IO ret) -> ErlIO4 a b c d ret

  public export
  data ErlIO5 : Type -> Type -> Type -> Type -> Type -> Type -> Type where
    MkErlIO5  : (a -> b -> c -> d -> e -> IO ret) -> ErlIO5 a b c d e ret


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
    ETErlIO0        : ErlTypes [ret]                => ErlType (ErlIO0 ret)
    ETErlIO1        : ErlTypes [a, ret]             => ErlType (ErlIO1 a ret)
    ETErlIO2        : ErlTypes [a, b, ret]          => ErlType (ErlIO2 a b ret)
    ETErlIO3        : ErlTypes [a, b, c, ret]       => ErlType (ErlIO3 a b c ret)
    ETErlIO4        : ErlTypes [a, b, c, d, ret]    => ErlType (ErlIO4 a b c d ret)
    ETErlIO5        : ErlTypes [a, b, c, d, e, ret] => ErlType (ErlIO5 a b c d e ret)

  public export
  data ErlTypes : List Type -> Type where
    ETErlTypesNil   : ErlTypes []
    ETErlTypesCons  : (ErlType x, ErlTypes xs) => ErlTypes (x :: xs)


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
      MList         : ErlMatchers ErlMatcher xs  -> TypesToFunc xs ret -> ErlMatcher ret
      MTuple        : ErlMatchers ErlMatcher xs  -> TypesToFunc xs ret -> ErlMatcher ret
      MMapSubset    : ErlMatchers ErlMapEntry xs -> TypesToFunc xs ret -> ErlMatcher ret
      MIO           : (xs : List Type) -> ErlMatcher (TypesToFunc xs (IO ErlTerm))
      MError        : ErlMatcher a -> ErlMatcher a
      MMapper       : ErlMatcher a -> (a -> b) -> ErlMatcher b

    public export
    data ErlMatchers : (Type -> Type) -> List Type -> Type where
      Nil : ErlMatchers matcher []
      (::) : matcher x -> ErlMatchers matcher xs -> ErlMatchers matcher (x :: xs)

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
  map func matcher = MMapper matcher func


namespace IO
  -- Creates an Erlang function call similar to: `fn`(`args...`)
  %extern prim__erlUnsafeCall : (0 ret : Type) -> String -> ErlList xs -> (1 x : %World) -> IORes ret

  -- Creates an Erlang function call similar to: catch (binary_to_atom(`mod`)):(binary_to_atom(`fn`))(`args...`)
  %extern prim__erlCall : String -> String -> ErlList xs -> (1 x : %World) -> IORes ErlTerm

  export %inline
  erlUnsafeCall : (0 ret : Type) -> {auto ret_prf : ErlType ret} ->
                  String ->
                  ErlList xs -> {auto inp_prf : ErlTypes xs} ->
                  IO ret
  erlUnsafeCall ret fn args = primIO (prim__erlUnsafeCall ret fn args)

  export %inline
  erlCall : String -> String -> ErlList xs -> {auto prf : ErlTypes xs} -> IO ErlTerm
  erlCall modName fnName args = primIO (prim__erlCall modName fnName args)

  export
  erlUnsafeCast : (0 to : Type) -> {auto prf : ErlType to} -> ErlTerm -> to
  erlUnsafeCast to term = believe_me term

  public export
  data ErlExports : Type where
    Fun : ErlType t => (name : String) -> (expr : t) -> ErlExports
    Combine : ErlExports -> ErlExports -> ErlExports

  public export %inline
  (<+>) : ErlExports -> ErlExports -> ErlExports
  (<+>) = Combine

namespace Concurrency
  export
  erlSelf : IO ErlPid
  erlSelf = erlUnsafeCall ErlPid "erlang:self" []

  export
  erlSpawnLink : IO () -> IO ErlPid
  erlSpawnLink action = erlUnsafeCall ErlPid "erlang:spawn_link" [MkErlIO0 action]

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
  empty = unsafePerformIO $ erlUnsafeCall ErlMap "maps:new" []

  -- TODO: Return type may not match the actual content
  export
  unsafeLookup : ErlType key => key -> (0 ret : Type) -> {auto prf : ErlType ret} -> ErlMap -> Maybe ret
  unsafeLookup key ty m = unsafePerformIO $ do
    result <- erlUnsafeCall ErlTerm "maps:find" [key, m]
    pure $ erlCase Nothing [MTuple [MExact (MkErlAtom "ok"), MAny] (\ok, value => Just (erlUnsafeCast ty value))] result

  export
  insert : (ErlType key, ErlType value) => key -> value -> ErlMap -> ErlMap
  insert key value m = unsafePerformIO $ erlUnsafeCall ErlMap "maps:put" [key, value, m]

  export
  delete : ErlType key => key -> ErlMap -> ErlMap
  delete key m = unsafePerformIO $ erlUnsafeCall ErlMap "maps:remove" [key, m]

  size : ErlMap -> Integer
  size m = unsafePerformIO $ erlUnsafeCall Integer "maps:size" [m]


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
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "pid_to_list" [x]
    pure ("#Pid" ++ str)

export
Show ErlRef where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "ref_to_list" [x]
    pure str

export
Show ErlPort where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "port_to_list" [x]
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
