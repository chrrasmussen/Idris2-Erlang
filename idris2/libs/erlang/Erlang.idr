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
  erlUnsafeCall : (0 ret : Type) -> {auto 0 retPrf : ErlType ret} ->
                  String ->
                  String ->
                  ErlList xs -> {auto 0 argsPrf : ErlTypes xs} ->
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
  erlCall : String -> String -> ErlList xs -> {auto 0 prf : ErlTypes xs} -> IO (Either ErlException ErlTerm)
  erlCall modName fnName args = erlTryCatch (erlUnsafeCall ErlTerm modName fnName args)

  export
  erlUnsafeCast : (0 to : Type) -> {auto 0 prf : ErlType to} -> ErlTerm -> to
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


namespace Decoding
  public export
  data ErlDecoderError
    = Error String
    | OneOf ErlDecoderError ErlDecoderError
    | Empty

  export
  data ErlDecoder a =
    MkDecoder (ErlTerm -> Either ErlDecoderError a)

  namespace ErlDecoders
    public export
    data ErlDecoders : List Type -> Type where
      Nil : ErlDecoders []
      (::) : ErlDecoder a -> ErlDecoders as -> ErlDecoders (a :: as)

  -- TODO: Rename
  public export
  data ErlMapEntry2 : Type -> Type where
    MkErlMapEntry2 : ErlType key => key -> ErlDecoder value -> ErlMapEntry2 value

  infix 9 :=

  export %inline
  (:=) : ErlType key => key -> ErlDecoder value -> ErlMapEntry2 value
  (:=) = MkErlMapEntry2

  namespace ErlMapEntryDecoders
    public export
    data ErlMapEntryDecoders : List Type -> Type where
      Nil : ErlMapEntryDecoders []
      (::) : ErlMapEntry2 a -> ErlMapEntryDecoders as -> ErlMapEntryDecoders (a :: as)


  -- IMPLEMENTATIONS

  export
  Functor ErlDecoder where
    map f (MkDecoder valueDecoder) =
      MkDecoder (\term => either Left (Right . f) (valueDecoder term))

  export
  Applicative ErlDecoder where
    pure value =
      MkDecoder (\_ => Right value)
    (MkDecoder fDecoder) <*> (MkDecoder valueDecoder) =
      MkDecoder (\term => do
        f <- fDecoder term
        value <- valueDecoder term
        pure (f value))

  export
  Monad ErlDecoder where
    (MkDecoder valueDecoder) >>= f =
      MkDecoder (\term => do
        value <- valueDecoder term
        let (MkDecoder nextDecoder) = f value
        nextDecoder term)

  export
  Alternative ErlDecoder where
    empty =
      MkDecoder (\_ => Left Empty)
    (MkDecoder firstDecoder) <|> (MkDecoder secondDecoder) =
      MkDecoder (\term => case firstDecoder term of
        Right res => Right res
        Left firstErr => case secondDecoder term of
          Right res => Right res
          Left secondErr => Left (OneOf firstErr secondErr))


  -- DECODE ERLANG TERM

  export
  erlDecode : ErlDecoder a -> ErlTerm -> Either ErlDecoderError a
  erlDecode (MkDecoder decoder) term =
    decoder term

  export
  erlDecodeMay : ErlDecoder a -> ErlTerm -> Maybe a
  erlDecodeMay decoder term =
    case erlDecode decoder term of
      Right res => Just res
      Left _ => Nothing

  export
  erlDecodeDef : Lazy a -> ErlDecoder a -> ErlTerm -> a
  erlDecodeDef def decoder term =
    case erlDecode decoder term of
      Right res => res
      Left _ => def


  -- DECODERS

  export
  fail : String -> ErlDecoder a
  fail msg =
    MkDecoder (\term => Left (Error msg))

  export
  any : ErlDecoder ErlTerm
  any =
    MkDecoder (\term => Right term)

  export
  exact : ErlType a => a -> ErlDecoder a
  exact matchValue =
    MkDecoder (\term =>
      let isEqual = unsafePerformIO (erlUnsafeCall Bool "erlang" "=:=" [term, MkRaw matchValue])
      in if isEqual
        then Right matchValue
        else Left (Error "Expected the value to match exactly"))

  export
  codepoint : ErlDecoder Char
  codepoint =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected a char")) [map Right MCodepoint] term)

  export
  integer : ErlDecoder Integer
  integer =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected an integer")) [map Right MInteger] term)

  export
  double : ErlDecoder Double
  double =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected a double")) [map Right MDouble] term)

  export
  atom : ErlDecoder ErlAtom
  atom =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected an atom")) [map Right MAtom] term)

  export
  binary : ErlDecoder ErlBinary
  binary =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected a binary")) [map Right MBinary] term)

  export
  pid : ErlDecoder ErlPid
  pid =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a pid")) [map Right MPid] term)

  export
  ref : ErlDecoder ErlRef
  ref =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a ref")) [map Right MRef] term)

  export
  port : ErlDecoder ErlPort
  port =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a port")) [map Right MPort] term)

  export
  anyMap : ErlDecoder ErlMap
  anyMap =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a map")) [map Right MMap] term)

  export
  anyList : ErlDecoder ErlTerm
  anyList =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a list")) [map Right MAnyList] term)

  export
  nil : ErlDecoder ErlNil
  nil =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected a nil value")) [map (const (Right Nil)) MNil] term)

  export
  cons : ErlDecoder a -> ErlDecoder b -> ErlDecoder (ErlCons a b)
  cons (MkDecoder xDecoder) (MkDecoder yDecoder) =
    MkDecoder (\term => do
      (x, y) <- erlCase (Left (Error "Expected a cons value")) [MCons MAny MAny (\x, y => Right (x, y))] term
      xRes <- xDecoder x
      yRes <- yDecoder y
      pure (xRes :: yRes))

  export
  tuple0 : ErlDecoder ErlTuple0
  tuple0 =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected a tuple with 0 elements")) [MTuple [] (Right MkErlTuple0)] term)

  export
  tuple1 : ErlDecoder a -> ErlDecoder (ErlTuple1 a)
  tuple1 (MkDecoder aDecoder) =
    MkDecoder (\term => do
      a <- erlCase (Left (Error "Expected a tuple with 1 element")) [MTuple [MAny] Right] term
      aRes <- aDecoder a
      pure (MkErlTuple1 aRes))

  export
  tuple2 : ErlDecoder a -> ErlDecoder b -> ErlDecoder (ErlTuple2 a b)
  tuple2 (MkDecoder aDecoder) (MkDecoder bDecoder) =
    MkDecoder (\term => do
      (a, b) <- erlCase (Left (Error "Expected a tuple with 2 elements")) [MTuple [MAny, MAny] (\a, b => Right (a, b))] term
      aRes <- aDecoder a
      bRes <- bDecoder b
      pure (MkErlTuple2 aRes bRes))

  export
  tuple3 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder (ErlTuple3 a b c)
  tuple3 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) =
    MkDecoder (\term => do
      (a, b, c) <- erlCase (Left (Error "Expected a tuple with 3 elements")) [MTuple [MAny, MAny, MAny] (\a, b, c => Right (a, b, c))] term
      aRes <- aDecoder a
      bRes <- bDecoder b
      cRes <- cDecoder c
      pure (MkErlTuple3 aRes bRes cRes))

  export
  tuple4 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder (ErlTuple4 a b c d)
  tuple4 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) =
    MkDecoder (\term => do
      (a, b, c, d) <- erlCase (Left (Error "Expected a tuple with 4 elements")) [MTuple [MAny, MAny, MAny, MAny] (\a, b, c, d => Right (a, b, c, d))] term
      aRes <- aDecoder a
      bRes <- bDecoder b
      cRes <- cDecoder c
      dRes <- dDecoder d
      pure (MkErlTuple4 aRes bRes cRes dRes))

  export
  tuple5 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder e -> ErlDecoder (ErlTuple5 a b c d e)
  tuple5 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) (MkDecoder eDecoder) =
    MkDecoder (\term => do
      (a, b, c, d, e) <- erlCase (Left (Error "Expected a tuple with 5 elements")) [MTuple [MAny, MAny, MAny, MAny, MAny] (\a, b, c, d, e => Right (a, b, c, d, e))] term
      aRes <- aDecoder a
      bRes <- bDecoder b
      cRes <- cDecoder c
      dRes <- dDecoder d
      eRes <- eDecoder e
      pure (MkErlTuple5 aRes bRes cRes dRes eRes))

  export
  list : ErlDecoder a -> ErlDecoder (List a)
  list decoder =
    nil *> pure [] <|>
      map (\(x :: xs) => x :: xs) (cons decoder (assert_total (list decoder)))

  export
  hList : ErlDecoders xs -> ErlDecoder (ErlList xs)
  hList [] = nil *> pure []
  hList (x :: xs) = map (\(y :: ys) => y :: ys) (cons x (hList xs))

  -- http://erlang.org/doc/man/unicode.html
  -- charlist() = [char()]
  export
  charlist : ErlDecoder ErlCharlist
  charlist = do
    xs <- list codepoint
    pure (erlUnsafeCast ErlCharlist (cast xs))

  mutual
    -- http://erlang.org/doc/man/unicode.html#type-chardata
    -- chardata() = charlist() | unicode_binary()
    -- charlist() = maybe_improper_list(char() | unicode_binary() | charlist(), unicode_binary() | [])
    -- maybe_improper_list(X, Y) = [X | maybe_improper_list(X, Y)]
    export
    string : ErlDecoder String
    string =
      map believe_me binary <|>
        map believe_me nil <|>
        map believe_me (cons (assert_total listHead) (assert_total string))
      where
        listHead : ErlDecoder String
        listHead =
          map believe_me codepoint <|> -- NOTE: Codepoints are only valid in head position in an IO list
            map believe_me binary <|>
            map believe_me nil <|>
            map believe_me (cons (assert_total listHead) string)

  export
  mapEntry : ErlType key => key -> ErlDecoder value -> ErlDecoder value
  mapEntry key (MkDecoder valueDecoder) =
    MkDecoder (\term => do
      value <- erlCase (Left (Error "Could not find entry in map")) [MMapSubset [key := MAny] Right] term
      valueDecoder value)

  export
  mapSubset : ErlMapEntryDecoders xs -> ErlDecoder (ErlList xs)
  mapSubset [] = anyMap *> pure []
  mapSubset (MkErlMapEntry2 key valueDecoder :: xs) =
    (::) <$> mapEntry key valueDecoder <*> mapSubset xs

  export
  optional : ErlDecoder a -> ErlDecoder (Maybe a)
  optional decoder =
    map Just decoder <|>
      pure Nothing

  export
  fun0 : ErlDecoder (IO (Either ErlException ErlTerm))
  fun0 =
    MkDecoder (\term =>
      erlCase (Left (Error "Expected a function of arity 0")) [map Right (MIO [])] term)

  export
  fun1 : (a : Type) -> ErlDecoder (a -> IO (Either ErlException ErlTerm))
  fun1 aType =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a function of arity 1")) [map Right (MIO [aType])] term)

  export
  fun2 : (a : Type) -> (b : Type) -> ErlDecoder (a -> b -> IO (Either ErlException ErlTerm))
  fun2 aType bType =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a function of arity 2")) [map Right (MIO [aType, bType])] term)

  export
  fun3 : (a : Type) -> (b : Type) -> (c : Type) -> ErlDecoder (a -> b -> c -> IO (Either ErlException ErlTerm))
  fun3 aType bType cType =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a function of arity 3")) [map Right (MIO [aType, bType, cType])] term)

  export
  fun4 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> ErlDecoder (a -> b -> c -> d -> IO (Either ErlException ErlTerm))
  fun4 aType bType cType dType =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a function of arity 4")) [map Right (MIO [aType, bType, cType, dType])] term)

  export
  fun5 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> (e : Type) -> ErlDecoder (a -> b -> c -> d -> e -> IO (Either ErlException ErlTerm))
  fun5 aType bType cType dType eType =
    MkDecoder (\term => do
      erlCase (Left (Error "Expected a function of arity 5")) [map Right (MIO [aType, bType, cType, dType, eType])] term)


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
  unsafeLookup : ErlType key => key -> (0 ret : Type) -> {auto 0 prf : ErlType ret} -> ErlMap -> Maybe ret
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
