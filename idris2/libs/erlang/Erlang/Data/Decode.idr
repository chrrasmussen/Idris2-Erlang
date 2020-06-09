module Erlang.Data.Decode

import Erlang.Data
import Erlang.Data.Conversion
import Erlang.IO


%default total


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

public export
data ErlMapEntryDecoder : key -> Type -> Type where
  MkDecoderMapEntry : (key : a) -> ErlDecoder value -> ErlMapEntryDecoder key value

public export
(:=) : (key : a) -> ErlDecoder value -> ErlMapEntryDecoder key value
(:=) = MkDecoderMapEntry

public export
data ErlMapDecoders : List ErlMapEntry -> Type where
  Nil : ErlMapDecoders []
  (::) : ErlMapEntryDecoder key valueTy -> ErlMapDecoders xs -> ErlMapDecoders (MkMapEntry key valueTy :: xs)


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
  (MkDecoder decoder1) <|> (MkDecoder decoder2) =
    MkDecoder (\term => case decoder1 term of
      Right res => Right res
      Left firstErr => case decoder2 term of
        Right res => Right res
        Left secondErr => Left (OneOf firstErr secondErr))


-- DECODE ERLANG TERM

export
erlDecode : ErlType from => ErlDecoder a -> from -> Either ErlDecoderError a
erlDecode (MkDecoder decoder) term =
  decoder (cast term)

export
erlDecodeMay : ErlType from => ErlDecoder a -> from -> Maybe a
erlDecodeMay decoder term =
  case erlDecode decoder term of
    Right res => Just res
    Left _ => Nothing

export
erlDecodeDef : ErlType from => Lazy a -> ErlDecoder a -> from -> a
erlDecodeDef def decoder term =
  case erlDecode decoder term of
    Right res => res
    Left _ => def


-- PRIMITIVES

%extern prim__erlMatchExact       : ErlTerm -> ErlTerm -> Int
%extern prim__erlDecodeCodepoint  : ErlTerm -> Maybe Char
%extern prim__erlDecodeInteger    : ErlTerm -> Maybe Integer
%extern prim__erlDecodeDouble     : ErlTerm -> Maybe Double
%extern prim__erlDecodeAtom       : ErlTerm -> Maybe ErlAtom
%extern prim__erlDecodeBinary     : ErlTerm -> Maybe ErlBinary
%extern prim__erlDecodePid        : ErlTerm -> Maybe ErlPid
%extern prim__erldecodeReference  : ErlTerm -> Maybe ErlReference
%extern prim__erlDecodePort       : ErlTerm -> Maybe ErlPort
%extern prim__erlDecodeAnyMap     : ErlTerm -> Maybe ErlAnyMap
%extern prim__erlDecodeAnyList    : ErlTerm -> Maybe ErlTerm
%extern prim__erlDecodeNil        : ErlTerm -> Maybe ErlNil
%extern prim__erlDecodeCons       : ErlTerm -> Maybe (ErlCons ErlTerm ErlTerm)
%extern prim__erlDecodeTuple0     : ErlTerm -> Maybe ErlTuple0
%extern prim__erlDecodeTuple1     : ErlTerm -> Maybe (ErlTuple1 ErlTerm)
%extern prim__erlDecodeTuple2     : ErlTerm -> Maybe (ErlTuple2 ErlTerm ErlTerm)
%extern prim__erlDecodeTuple3     : ErlTerm -> Maybe (ErlTuple3 ErlTerm ErlTerm ErlTerm)
%extern prim__erlDecodeTuple4     : ErlTerm -> Maybe (ErlTuple4 ErlTerm ErlTerm ErlTerm ErlTerm)
%extern prim__erlDecodeTuple5     : ErlTerm -> Maybe (ErlTuple5 ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm)
%extern prim__erlDecodeFun0       : ErlTerm -> Maybe (ErlIOFun0 ErlTerm)
%extern prim__erlDecodeFun1       : ErlTerm -> Maybe (ErlIOFun1 a ErlTerm)
%extern prim__erlDecodeFun2       : ErlTerm -> Maybe (ErlIOFun2 a b ErlTerm)
%extern prim__erlDecodeFun3       : ErlTerm -> Maybe (ErlIOFun3 a b c ErlTerm)
%extern prim__erlDecodeFun4       : ErlTerm -> Maybe (ErlIOFun4 a b c d ErlTerm)
%extern prim__erlDecodeFun5       : ErlTerm -> Maybe (ErlIOFun5 a b c d e ErlTerm)


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
optional : ErlDecoder a -> ErlDecoder (Maybe a)
optional decoder =
  map Just decoder <|>
    pure Nothing

infixr 2 `lazyAlt`

-- A lazy version of `<|>`
lazyAlt : ErlDecoder a -> Lazy (ErlDecoder a) -> ErlDecoder a
lazyAlt decoder1 decoder2 = do
  result <- optional decoder1
  case result of
    Just value => pure value
    Nothing => decoder2

export
exact : ErlType a => a -> ErlDecoder a
exact matchValue =
  MkDecoder (\term =>
    if prim__erlMatchExact term (cast matchValue) == 1
      then Right matchValue
      else Left (Error "Expected the value to match exactly"))

export
codepoint : ErlDecoder Char
codepoint =
  MkDecoder (maybe (Left (Error "Expected a char")) Right . prim__erlDecodeCodepoint)

export
integer : ErlDecoder Integer
integer =
  MkDecoder (maybe (Left (Error "Expected an integer")) Right . prim__erlDecodeInteger)

export
double : ErlDecoder Double
double =
  MkDecoder (maybe (Left (Error "Expected a double")) Right . prim__erlDecodeDouble)

export
atom : ErlDecoder ErlAtom
atom =
  MkDecoder (maybe (Left (Error "Expected an atom")) Right . prim__erlDecodeAtom)

export
binary : ErlDecoder ErlBinary
binary =
  MkDecoder (maybe (Left (Error "Expected a binary")) Right . prim__erlDecodeBinary)

export
pid : ErlDecoder ErlPid
pid =
  MkDecoder (maybe (Left (Error "Expected a pid")) Right . prim__erlDecodePid)

export
reference : ErlDecoder ErlReference
reference =
  MkDecoder (maybe (Left (Error "Expected a reference")) Right . prim__erldecodeReference)

export
port : ErlDecoder ErlPort
port =
  MkDecoder (maybe (Left (Error "Expected a port")) Right . prim__erlDecodePort)

export
anyMap : ErlDecoder ErlAnyMap
anyMap =
  MkDecoder (maybe (Left (Error "Expected a map")) Right . prim__erlDecodeAnyMap)

export
anyList : ErlDecoder ErlTerm
anyList =
  MkDecoder (maybe (Left (Error "Expected a list")) Right . prim__erlDecodeAnyList)

export
nil : ErlDecoder ErlNil
nil =
  MkDecoder (maybe (Left (Error "Expected a nil value")) Right . prim__erlDecodeNil)

export
cons : ErlDecoder a -> ErlDecoder b -> ErlDecoder (ErlCons a b)
cons (MkDecoder xDecoder) (MkDecoder yDecoder) =
  MkDecoder (\term => do
    let Just (x :: y) = prim__erlDecodeCons term
      | Nothing => Left (Error "Expected a cons value")
    xRes <- xDecoder x
    yRes <- yDecoder y
    pure (xRes :: yRes))

export
tuple0 : ErlDecoder ErlTuple0
tuple0 =
  MkDecoder (maybe (Left (Error "Expected a tuple with 0 elements")) Right . prim__erlDecodeTuple0)

export
tuple1 : ErlDecoder a -> ErlDecoder (ErlTuple1 a)
tuple1 (MkDecoder aDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple1 a) = prim__erlDecodeTuple1 term
      | Nothing => Left (Error "Expected a tuple with 1 element")
    aRes <- aDecoder a
    pure (MkTuple1 aRes))

export
tuple2 : ErlDecoder a -> ErlDecoder b -> ErlDecoder (ErlTuple2 a b)
tuple2 (MkDecoder aDecoder) (MkDecoder bDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple2 a b) = prim__erlDecodeTuple2 term
      | Nothing => Left (Error "Expected a tuple with 2 elements")
    aRes <- aDecoder a
    bRes <- bDecoder b
    pure (MkTuple2 aRes bRes))

export
tuple3 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder (ErlTuple3 a b c)
tuple3 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple3 a b c) = prim__erlDecodeTuple3 term
      | Nothing => Left (Error "Expected a tuple with 3 elements")
    aRes <- aDecoder a
    bRes <- bDecoder b
    cRes <- cDecoder c
    pure (MkTuple3 aRes bRes cRes))

export
tuple4 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder (ErlTuple4 a b c d)
tuple4 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple4 a b c d) = prim__erlDecodeTuple4 term
      | Nothing => Left (Error "Expected a tuple with 4 elements")
    aRes <- aDecoder a
    bRes <- bDecoder b
    cRes <- cDecoder c
    dRes <- dDecoder d
    pure (MkTuple4 aRes bRes cRes dRes))

export
tuple5 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder e -> ErlDecoder (ErlTuple5 a b c d e)
tuple5 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) (MkDecoder eDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple5 a b c d e) = prim__erlDecodeTuple5 term
      | Nothing => Left (Error "Expected a tuple with 5 elements")
    aRes <- aDecoder a
    bRes <- bDecoder b
    cRes <- cDecoder c
    dRes <- dDecoder d
    eRes <- eDecoder e
    pure (MkTuple5 aRes bRes cRes dRes eRes))

export
list : ErlDecoder a -> ErlDecoder (List a)
list decoder =
  nil *> pure [] `lazyAlt`
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
  pure (erlUnsafeCast ErlCharlist xs)

mutual
  -- http://erlang.org/doc/man/unicode.html#type-chardata
  -- chardata() = charlist() | unicode_binary()
  -- charlist() = maybe_improper_list(char() | unicode_binary() | charlist(), unicode_binary() | [])
  -- maybe_improper_list(X, Y) = [X | maybe_improper_list(X, Y)]
  export
  string : ErlDecoder String
  string =
    map believe_me binary `lazyAlt`
      map believe_me nil `lazyAlt`
      map believe_me (cons (assert_total listHead) (assert_total string))
    where
      listHead : ErlDecoder String
      listHead =
        map believe_me codepoint `lazyAlt` -- NOTE: Codepoints are only valid in head position in an IO list
          map believe_me binary `lazyAlt`
          map believe_me nil `lazyAlt`
          map believe_me (cons (assert_total listHead) string)

export
mapEntry : ErlType key => key -> ErlDecoder value -> ErlDecoder value
mapEntry key (MkDecoder valueDecoder) =
  MkDecoder (\term => do
    let Just m = prim__erlDecodeAnyMap term
      | Nothing => Left (Error "Expected a map")
    let lookupResult = unsafePerformIO $ erlUnsafeCall ErlTerm "maps" "find" [key, m]
    let Just (MkTuple2 ok value) = prim__erlDecodeTuple2 lookupResult
      | Nothing => Left (Error "Could not find key in map")
    valueDecoder value)

-- This function does not put any restrictions on the types of the keys and values
-- because getting them wrong just means you won't get the expected result. It will
-- not result in any run-time errors.
export
mapSubset : ErlMapDecoders xs -> ErlDecoder (ErlMapSubset xs)
mapSubset [] = believe_me anyMap
mapSubset (MkDecoderMapEntry key valueDecoder :: xs) = believe_me (mapEntry (MkRaw key) valueDecoder *> mapSubset xs)

export
fun0 : ErlDecoder (IO (Either ErlException ErlTerm))
fun0 =
  MkDecoder (\term => do
    let Just (MkIOFun0 fun) = prim__erlDecodeFun0 term
      | Nothing => Left (Error "Expected a function of arity 0")
    pure $ erlTryCatch fun)

export
fun1 : (a : Type) -> ErlDecoder (a -> IO (Either ErlException ErlTerm))
fun1 aType =
  MkDecoder (\term => do
    let Just (MkIOFun1 fun) = prim__erlDecodeFun1 term
      | Nothing => Left (Error "Expected a function of arity 1")
    pure $ (\a => erlTryCatch (fun a)))

export
fun2 : (a : Type) -> (b : Type) -> ErlDecoder (a -> b -> IO (Either ErlException ErlTerm))
fun2 aType bType =
  MkDecoder (\term => do
    let Just (MkIOFun2 fun) = prim__erlDecodeFun2 term
      | Nothing => Left (Error "Expected a function of arity 2")
    pure $ (\a, b => erlTryCatch (fun a b)))

export
fun3 : (a : Type) -> (b : Type) -> (c : Type) -> ErlDecoder (a -> b -> c -> IO (Either ErlException ErlTerm))
fun3 aType bType cType =
  MkDecoder (\term => do
    let Just (MkIOFun3 fun) = prim__erlDecodeFun3 term
      | Nothing => Left (Error "Expected a function of arity 3")
    pure $ (\a, b, c => erlTryCatch (fun a b c)))

export
fun4 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> ErlDecoder (a -> b -> c -> d -> IO (Either ErlException ErlTerm))
fun4 aType bType cType dType =
  MkDecoder (\term => do
    let Just (MkIOFun4 fun) = prim__erlDecodeFun4 term
      | Nothing => Left (Error "Expected a function of arity 4")
    pure $ (\a, b, c, d => erlTryCatch (fun a b c d)))

export
fun5 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> (e : Type) -> ErlDecoder (a -> b -> c -> d -> e -> IO (Either ErlException ErlTerm))
fun5 aType bType cType dType eType =
  MkDecoder (\term => do
    let Just (MkIOFun5 fun) = prim__erlDecodeFun5 term
      | Nothing => Left (Error "Expected a function of arity 5")
    pure $ (\a, b, c, d, e => erlTryCatch (fun a b c d e)))
