module Erlang.Decode

import Erlang.Conversion
import Erlang.IO
import Erlang.Types


%default total

-- This module contains functions to turn an untyped Erlang value into a
-- typed Idris value.
-- The decoding functions are commonly used together with `erlCall` and
-- `erlUnsafeCall`.


||| The possible errors that can happen when decoding an Erlang value.
public export
data ErlDecoderError
  = Error String
  | OneOf ErlDecoderError ErlDecoderError
  | Empty

||| The decoder type.
export
data ErlDecoder a =
  MkDecoder (ErlTerm -> Either ErlDecoderError a)

namespace ErlDecoders
  ||| A list of decoders.
  public export
  data ErlDecoders : List Type -> Type where
    Nil : ErlDecoders []
    (::) : ErlDecoder a -> ErlDecoders as -> ErlDecoders (a :: as)

||| A type describing how to decode an entry in an Erlang map.
public export
data ErlMapEntryDecoder : key -> Type -> Type where
  MkDecoderMapEntry : (key : a) -> ErlDecoder value -> ErlMapEntryDecoder key value

||| Convenience operator for creating an `MkDecoderMapEntry`.
|||
||| `"name" := string` is equivalent to `MkDecoderMapEntry "name" string`
public export
(:=) : (key : a) -> ErlDecoder value -> ErlMapEntryDecoder key value
(:=) = MkDecoderMapEntry

namespace ErlMapDecoders
  ||| A list describing how to decode entries in an Erlang map.
  public export
  data ErlMapDecoders : List ErlMapEntry -> Type where
    Nil : ErlMapDecoders []
    (::) : ErlMapEntryDecoder key valueTy -> ErlMapDecoders xs -> ErlMapDecoders (MkMapEntry key valueTy :: xs)


-- IMPLEMENTATIONS FOR `ErlDecoder`

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

||| Try to decode the given value using the given decoder.
||| Returns an `ErlDecoderError` in the case of failure.
export
erlDecode : IsErlType from => ErlDecoder a -> from -> Either ErlDecoderError a
erlDecode (MkDecoder decoder) term =
  decoder (toErlTerm term)

||| Try to decode the given value using the given decoder.
||| Returns `Nothing` in the case of failure.
export
erlDecodeMay : IsErlType from => ErlDecoder a -> from -> Maybe a
erlDecodeMay decoder term =
  case erlDecode decoder term of
    Right res => Just res
    Left _ => Nothing

||| Try to decode the given value using the given decoder.
||| Returns a default value in the case of failure.
export
erlDecodeDef : IsErlType from => Lazy a -> ErlDecoder a -> from -> a
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
%extern prim__erlDecodeBinary     : ErlTerm -> Maybe String
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
%extern prim__erlDecodeTuple6     : ErlTerm -> Maybe (ErlTuple6 ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm)
%extern prim__erlDecodeTuple7     : ErlTerm -> Maybe (ErlTuple7 ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm)
%extern prim__erlDecodeTuple8     : ErlTerm -> Maybe (ErlTuple8 ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm ErlTerm)
%extern prim__erlDecodeFun0       : ErlTerm -> Maybe (ErlIOFun0 ErlTerm)
%extern prim__erlDecodeFun1       : ErlTerm -> Maybe (ErlIOFun1 a ErlTerm)
%extern prim__erlDecodeFun2       : ErlTerm -> Maybe (ErlIOFun2 a b ErlTerm)
%extern prim__erlDecodeFun3       : ErlTerm -> Maybe (ErlIOFun3 a b c ErlTerm)
%extern prim__erlDecodeFun4       : ErlTerm -> Maybe (ErlIOFun4 a b c d ErlTerm)
%extern prim__erlDecodeFun5       : ErlTerm -> Maybe (ErlIOFun5 a b c d e ErlTerm)
%extern prim__erlDecodeFun6       : ErlTerm -> Maybe (ErlIOFun6 a b c d e f ErlTerm)
%extern prim__erlDecodeFun7       : ErlTerm -> Maybe (ErlIOFun7 a b c d e f g ErlTerm)
%extern prim__erlDecodeFun8       : ErlTerm -> Maybe (ErlIOFun8 a b c d e f g h ErlTerm)


-- DECODERS

||| Decoder that always fails, with the given error message.
export
fail : String -> ErlDecoder a
fail msg =
  MkDecoder (\term => Left (Error msg))

||| Decoder that always succeeds.
export
any : ErlDecoder ErlTerm
any =
  MkDecoder (\term => Right term)

||| Decoder that always succeeds, where the success value is turned into
||| `Just value` and failure is turned into `Nothing`.
export
optional : ErlDecoder a -> ErlDecoder (Maybe a)
optional decoder =
  map Just decoder <|>
    pure Nothing

infixr 2 `lazyAlt`

||| A lazy version of `<|>`
lazyAlt : ErlDecoder a -> Lazy (ErlDecoder a) -> ErlDecoder a
lazyAlt decoder1 decoder2 = do
  result <- optional decoder1
  case result of
    Just value => pure value
    Nothing => decoder2

||| Decoder that expects an exact value.
export
exact : IsErlType a => a -> ErlDecoder a
exact matchValue =
  MkDecoder (\term =>
    if prim__erlMatchExact term (toErlTerm matchValue) == 1
      then Right matchValue
      else Left (Error "Expected the value to match exactly"))

||| Decoder that expects a codepoint value.
export
codepoint : ErlDecoder Char
codepoint =
  MkDecoder (maybe (Left (Error "Expected a char")) Right . prim__erlDecodeCodepoint)

||| Decoder that expects an Erlang integer value.
export
integer : ErlDecoder Integer
integer =
  MkDecoder (maybe (Left (Error "Expected an integer")) Right . prim__erlDecodeInteger)

||| Decoder that expects a Erlang float value.
export
double : ErlDecoder Double
double =
  MkDecoder (maybe (Left (Error "Expected a double")) Right . prim__erlDecodeDouble)

||| Decoder that expects an Erlang atom value.
export
atom : ErlDecoder ErlAtom
atom =
  MkDecoder (maybe (Left (Error "Expected an atom")) Right . prim__erlDecodeAtom)

||| Decoder that expects an Erlang binary value.
export
string : ErlDecoder String
string =
  MkDecoder (maybe (Left (Error "Expected a binary")) Right . prim__erlDecodeBinary)

||| Decoder that expects a Erlang PID value.
export
pid : ErlDecoder ErlPid
pid =
  MkDecoder (maybe (Left (Error "Expected a pid")) Right . prim__erlDecodePid)

||| Decoder that expects an Erlang reference value.
export
reference : ErlDecoder ErlReference
reference =
  MkDecoder (maybe (Left (Error "Expected a reference")) Right . prim__erldecodeReference)

||| Decoder that expects an Erlang port value.
export
port : ErlDecoder ErlPort
port =
  MkDecoder (maybe (Left (Error "Expected a port")) Right . prim__erlDecodePort)

||| Decoder that expects any Erlang map.
export
anyMap : ErlDecoder ErlAnyMap
anyMap =
  MkDecoder (maybe (Left (Error "Expected a map")) Right . prim__erlDecodeAnyMap)

||| Decoder that expects any Erlang list.
|||
||| The list may either be the empty list or a list with a head and a tail.
export
anyList : ErlDecoder ErlTerm
anyList =
  MkDecoder (maybe (Left (Error "Expected a list")) Right . prim__erlDecodeAnyList)

||| Decoder that expects an Erlang empty list.
export
nil : ErlDecoder ErlNil
nil =
  MkDecoder (maybe (Left (Error "Expected a nil value")) Right . prim__erlDecodeNil)

||| Decoder that expects an Erlang list with a head and a tail.
export
cons : ErlDecoder a -> ErlDecoder b -> ErlDecoder (ErlCons a b)
cons (MkDecoder xDecoder) (MkDecoder yDecoder) =
  MkDecoder (\term => do
    let Just (x :: y) = prim__erlDecodeCons term
      | Nothing => Left (Error "Expected a cons value")
    xRes <- xDecoder x
    yRes <- yDecoder y
    pure (xRes :: yRes))

||| Decoder that expects a tuple of size 0.
export
tuple0 : ErlDecoder ErlTuple0
tuple0 =
  MkDecoder (maybe (Left (Error "Expected a tuple with 0 elements")) Right . prim__erlDecodeTuple0)

||| Decoder that expects a tuple of size 1, where each element in the tuple must
||| match the given decoder.
export
tuple1 : ErlDecoder a -> ErlDecoder (ErlTuple1 a)
tuple1 (MkDecoder aDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple1 a) = prim__erlDecodeTuple1 term
      | Nothing => Left (Error "Expected a tuple with 1 element")
    pure (MkTuple1 !(aDecoder a)))

||| Decoder that expects a tuple of size 2, where each element in the tuple must
||| match the given decoder.
export
tuple2 : ErlDecoder a -> ErlDecoder b -> ErlDecoder (ErlTuple2 a b)
tuple2 (MkDecoder aDecoder) (MkDecoder bDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple2 a b) = prim__erlDecodeTuple2 term
      | Nothing => Left (Error "Expected a tuple with 2 elements")
    pure (MkTuple2 !(aDecoder a) !(bDecoder b)))

||| Decoder that expects a tuple of size 3, where each element in the tuple must
||| match the given decoder.
export
tuple3 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder (ErlTuple3 a b c)
tuple3 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple3 a b c) = prim__erlDecodeTuple3 term
      | Nothing => Left (Error "Expected a tuple with 3 elements")
    pure (MkTuple3 !(aDecoder a) !(bDecoder b) !(cDecoder c)))

||| Decoder that expects a tuple of size 4, where each element in the tuple must
||| match the given decoder.
export
tuple4 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder (ErlTuple4 a b c d)
tuple4 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple4 a b c d) = prim__erlDecodeTuple4 term
      | Nothing => Left (Error "Expected a tuple with 4 elements")
    pure (MkTuple4 !(aDecoder a) !(bDecoder b) !(cDecoder c) !(dDecoder d)))

||| Decoder that expects a tuple of size 5, where each element in the tuple must
||| match the given decoder.
export
tuple5 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder e -> ErlDecoder (ErlTuple5 a b c d e)
tuple5 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) (MkDecoder eDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple5 a b c d e) = prim__erlDecodeTuple5 term
      | Nothing => Left (Error "Expected a tuple with 5 elements")
    pure (MkTuple5 !(aDecoder a) !(bDecoder b) !(cDecoder c) !(dDecoder d) !(eDecoder e)))

||| Decoder that expects a tuple of size 6, where each element in the tuple must
||| match the given decoder.
export
tuple6 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder e -> ErlDecoder f -> ErlDecoder (ErlTuple6 a b c d e f)
tuple6 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) (MkDecoder eDecoder) (MkDecoder fDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple6 a b c d e f) = prim__erlDecodeTuple6 term
      | Nothing => Left (Error "Expected a tuple with 6 elements")
    pure (MkTuple6 !(aDecoder a) !(bDecoder b) !(cDecoder c) !(dDecoder d) !(eDecoder e) !(fDecoder f)))

||| Decoder that expects a tuple of size 6, where each element in the tuple must
||| match the given decoder.
export
tuple7 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder e -> ErlDecoder f -> ErlDecoder g -> ErlDecoder (ErlTuple7 a b c d e f g)
tuple7 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) (MkDecoder eDecoder) (MkDecoder fDecoder) (MkDecoder gDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple7 a b c d e f g) = prim__erlDecodeTuple7 term
      | Nothing => Left (Error "Expected a tuple with 7 elements")
    pure (MkTuple7 !(aDecoder a) !(bDecoder b) !(cDecoder c) !(dDecoder d) !(eDecoder e) !(fDecoder f) !(gDecoder g)))

||| Decoder that expects a tuple of size 7, where each element in the tuple must
||| match the given decoder.
export
tuple8 : ErlDecoder a -> ErlDecoder b -> ErlDecoder c -> ErlDecoder d -> ErlDecoder e -> ErlDecoder f -> ErlDecoder g -> ErlDecoder h -> ErlDecoder (ErlTuple8 a b c d e f g h)
tuple8 (MkDecoder aDecoder) (MkDecoder bDecoder) (MkDecoder cDecoder) (MkDecoder dDecoder) (MkDecoder eDecoder) (MkDecoder fDecoder) (MkDecoder gDecoder) (MkDecoder hDecoder) =
  MkDecoder (\term => do
    let Just (MkTuple8 a b c d e f g h) = prim__erlDecodeTuple8 term
      | Nothing => Left (Error "Expected a tuple with 8 elements")
    pure (MkTuple8 !(aDecoder a) !(bDecoder b) !(cDecoder c) !(dDecoder d) !(eDecoder e) !(fDecoder f) !(gDecoder g) !(hDecoder h)))

||| Decoder that expects a tuple of size 8.
export
list : ErlDecoder a -> ErlDecoder (List a)
list decoder =
  nil *> pure [] `lazyAlt`
    map (\(x :: xs) => x :: xs) (cons decoder (assert_total (list decoder)))

||| Decoder that expects an Erlang list, where each element in the list must
||| match the given decoder.
export
hList : ErlDecoders xs -> ErlDecoder (ErlList xs)
hList [] = nil *> pure []
hList (x :: xs) = map (\(y :: ys) => y :: ys) (cons x (hList xs))

||| Decoder that expects an Erlang charlist.
-- http://erlang.org/doc/man/unicode.html
-- charlist() = [char()]
export
charlist : ErlDecoder ErlCharlist
charlist = do
  xs <- list codepoint
  pure (erlUnsafeCast ErlCharlist xs)

||| Decoder that expects an Erlang IO data
-- http://erlang.org/doc/man/unicode.html#type-chardata
-- chardata() = charlist() | unicode_binary()
-- charlist() = maybe_improper_list(char() | unicode_binary() | charlist(), unicode_binary() | [])
-- maybe_improper_list(X, Y) = [X | maybe_improper_list(X, Y)]
export
ioData : ErlDecoder ErlTerm
ioData =
  map believe_me string `lazyAlt`
    map believe_me nil `lazyAlt`
    map believe_me (cons (assert_total listHead) (assert_total ioData))
  where
    listHead : ErlDecoder String
    listHead =
      map believe_me codepoint `lazyAlt` -- NOTE: Codepoints are only valid in head position in an IO list
        map believe_me string `lazyAlt`
        map believe_me nil `lazyAlt`
        map believe_me (cons (assert_total listHead) ioData)

||| Decoder for an Erlang map entry.
export
mapEntry : IsErlType key => key -> ErlDecoder value -> ErlDecoder value
mapEntry key (MkDecoder valueDecoder) =
  MkDecoder (\term => do
    let Just m = prim__erlDecodeAnyMap term
      | Nothing => Left (Error "Expected a map")
    let lookupResult = erlUnsafeCall ErlTerm "maps" "find" [key, m]
    let Just (MkTuple2 ok value) = prim__erlDecodeTuple2 lookupResult
      | Nothing => Left (Error "Could not find key in map")
    valueDecoder value)

||| Decoder for an Erlang map containing at least the specified entries.
|||
||| This function does not put any restrictions on the keys and values because
||| getting them wrong just means you won't get the expected result. It will
||| not result in any run-time errors.
export
mapSubset : ErlMapDecoders xs -> ErlDecoder (ErlMapSubset xs)
mapSubset [] = believe_me anyMap
mapSubset (MkDecoderMapEntry key valueDecoder :: xs) = believe_me (mapEntry (MkRaw key) valueDecoder *> mapSubset xs)

||| Decoder that expects a function of arity 0.
|||
||| The returned function from the `fun/N` decoders is wrapped in the `IO`
||| type in case the function performs any side-effects. The returned function
||| is also wrapped in a try/catch in case in crashes at run-time.
|||
||| The try/catch is especially important for the `fun/N` decoders where the
||| arity is 1 or higher because, in these cases, the caller is allowed to choose
||| any type for the input parameters of the returned function. If the values
||| passed to the Erlang function are not what the Erlang function expects, it
||| could cause an run-time error.
export
fun0 : ErlDecoder (IO (Either ErlException ErlTerm))
fun0 =
  MkDecoder (\term => do
    let Just (MkIOFun0 fun) = prim__erlDecodeFun0 term
      | Nothing => Left (Error "Expected a function of arity 0")
    pure $ erlTryCatch fun)

||| Decoder that expects a function of arity 1.
|||
||| See the documentation of `fun0` for more details.
export
fun1 : (a : Type) -> ErlDecoder (a -> IO (Either ErlException ErlTerm))
fun1 aType =
  MkDecoder (\term => do
    let Just (MkIOFun1 fun) = prim__erlDecodeFun1 term
      | Nothing => Left (Error "Expected a function of arity 1")
    pure $ (\a => erlTryCatch (fun a)))

||| Decoder that expects a function of arity 2.
|||
||| See the documentation of `fun0` for more details.
export
fun2 : (a : Type) -> (b : Type) -> ErlDecoder (a -> b -> IO (Either ErlException ErlTerm))
fun2 aType bType =
  MkDecoder (\term => do
    let Just (MkIOFun2 fun) = prim__erlDecodeFun2 term
      | Nothing => Left (Error "Expected a function of arity 2")
    pure $ (\a, b => erlTryCatch (fun a b)))

||| Decoder that expects a function of arity 3.
|||
||| See the documentation of `fun0` for more details.
export
fun3 : (a : Type) -> (b : Type) -> (c : Type) -> ErlDecoder (a -> b -> c -> IO (Either ErlException ErlTerm))
fun3 aType bType cType =
  MkDecoder (\term => do
    let Just (MkIOFun3 fun) = prim__erlDecodeFun3 term
      | Nothing => Left (Error "Expected a function of arity 3")
    pure $ (\a, b, c => erlTryCatch (fun a b c)))

||| Decoder that expects a function of arity 4.
|||
||| See the documentation of `fun0` for more details.
export
fun4 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> ErlDecoder (a -> b -> c -> d -> IO (Either ErlException ErlTerm))
fun4 aType bType cType dType =
  MkDecoder (\term => do
    let Just (MkIOFun4 fun) = prim__erlDecodeFun4 term
      | Nothing => Left (Error "Expected a function of arity 4")
    pure $ (\a, b, c, d => erlTryCatch (fun a b c d)))

||| Decoder that expects a function of arity 5.
|||
||| See the documentation of `fun0` for more details.
export
fun5 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> (e : Type) -> ErlDecoder (a -> b -> c -> d -> e -> IO (Either ErlException ErlTerm))
fun5 aType bType cType dType eType =
  MkDecoder (\term => do
    let Just (MkIOFun5 fun) = prim__erlDecodeFun5 term
      | Nothing => Left (Error "Expected a function of arity 5")
    pure $ (\a, b, c, d, e => erlTryCatch (fun a b c d e)))

||| Decoder that expects a function of arity 6.
|||
||| See the documentation of `fun0` for more details.
export
fun6 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> (e : Type) -> (f : Type) -> ErlDecoder (a -> b -> c -> d -> e -> f -> IO (Either ErlException ErlTerm))
fun6 aType bType cType dType eType fType =
  MkDecoder (\term => do
    let Just (MkIOFun6 fun) = prim__erlDecodeFun6 term
      | Nothing => Left (Error "Expected a function of arity 6")
    pure $ (\a, b, c, d, e, f => erlTryCatch (fun a b c d e f)))

||| Decoder that expects a function of arity 7.
|||
||| See the documentation of `fun0` for more details.
export
fun7 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> (e : Type) -> (f : Type) -> (g : Type) -> ErlDecoder (a -> b -> c -> d -> e -> f -> g -> IO (Either ErlException ErlTerm))
fun7 aType bType cType dType eType fType gType =
  MkDecoder (\term => do
    let Just (MkIOFun7 fun) = prim__erlDecodeFun7 term
      | Nothing => Left (Error "Expected a function of arity 7")
    pure $ (\a, b, c, d, e, f, g => erlTryCatch (fun a b c d e f g)))

||| Decoder that expects a function of arity 8.
|||
||| See the documentation of `fun0` for more details.
export
fun8 : (a : Type) -> (b : Type) -> (c : Type) -> (d : Type) -> (e : Type) -> (f : Type) -> (g : Type) -> (h : Type) -> ErlDecoder (a -> b -> c -> d -> e -> f -> g -> h -> IO (Either ErlException ErlTerm))
fun8 aType bType cType dType eType fType gType hType =
  MkDecoder (\term => do
    let Just (MkIOFun8 fun) = prim__erlDecodeFun8 term
      | Nothing => Left (Error "Expected a function of arity 8")
    pure $ (\a, b, c, d, e, f, g, h => erlTryCatch (fun a b c d e f g h)))

||| Decoder that expects an Erlang boolean value.
|||
||| Note that the Idris `Bool` type is not represented as the Erlang atoms
||| `true` and `false`. It is still useful to be able to decode those atoms
||| into the type `Bool`.
export
bool : ErlDecoder Bool
bool =
  (exact (MkAtom "true") *> pure True)
    <|> (exact (MkAtom "false") *> pure False)

||| Decoder that expects an Erlang value in the format `{ok, Value}`.
export
okTuple : ErlDecoder a -> ErlDecoder a
okTuple decoder =
  map (\(MkTuple2 _ result) => result) (tuple2 (exact (MkAtom "ok")) decoder)

||| Decoder that expects an Erlang value in the format `{error, Value}`.
export
errorTuple : ErlDecoder a -> ErlDecoder a
errorTuple decoder =
  map (\(MkTuple2 _ result) => result) (tuple2 (exact (MkAtom "error")) decoder)
