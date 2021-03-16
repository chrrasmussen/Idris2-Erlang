module Libraries.Text.Parser.Core

import Libraries.Data.Bool.Extra
import Data.List
import public Libraries.Control.Delayed
import public Libraries.Text.Bounded

%default total

-- TODO: Add some primitives for helping with error messages.
-- e.g. perhaps set a string to state what we're currently trying to
-- parse, or to say what the next expected token is in words

||| Description of a language's grammar. The `tok` parameter is the type
||| of tokens, and the `consumes` flag is True if the language is guaranteed
||| to be non-empty - that is, successfully parsing the language is guaranteed
||| to consume some input.
export
data Grammar : (tok : Type) -> (consumes : Bool) -> Type -> Type where
     Empty : (val : ty) -> Grammar tok False ty
     Terminal : String -> (tok -> Maybe a) -> Grammar tok True a
     NextIs : String -> (tok -> Bool) -> Grammar tok False tok
     EOF : Grammar tok False ()

     Fail : (location : Maybe Bounds) -> Bool -> String -> Grammar tok c ty
     Try : Grammar tok c ty -> Grammar tok c ty

     Commit : Grammar tok False ()
     MustWork : Grammar tok c a -> Grammar tok c a

     SeqEat : {c2 : Bool} ->
              Grammar tok True a -> Inf (a -> Grammar tok c2 b) ->
              Grammar tok True b
     SeqEmpty : {c1, c2 : Bool} ->
                Grammar tok c1 a -> (a -> Grammar tok c2 b) ->
                Grammar tok (c1 || c2) b

     ThenEat : {c2 : Bool} ->
               Grammar tok True () -> Inf (Grammar tok c2 a) ->
               Grammar tok True a
     ThenEmpty : {c1, c2 : Bool} ->
                 Grammar tok c1 () -> Grammar tok c2 a ->
                 Grammar tok (c1 || c2) a

     Alt : {c1, c2 : Bool} ->
           Grammar tok c1 ty -> Lazy (Grammar tok c2 ty) ->
           Grammar tok (c1 && c2) ty
     Bounds : Grammar tok c ty -> Grammar tok c (WithBounds ty)
     Position : Grammar tok False Bounds

||| Sequence two grammars. If either consumes some input, the sequence is
||| guaranteed to consume some input. If the first one consumes input, the
||| second is allowed to be recursive (because it means some input has been
||| consumed and therefore the input is smaller)
export %inline
(>>=) : {c1, c2 : Bool} ->
        Grammar tok c1 a ->
        inf c1 (a -> Grammar tok c2 b) ->
        Grammar tok (c1 || c2) b
(>>=) {c1 = False} = SeqEmpty
(>>=) {c1 = True}  = SeqEat

||| Sequence two grammars. If either consumes some input, the sequence is
||| guaranteed to consume some input. If the first one consumes input, the
||| second is allowed to be recursive (because it means some input has been
||| consumed and therefore the input is smaller)
public export %inline %tcinline
(>>) : {c1, c2 : Bool} ->
        Grammar tok c1 () ->
        inf c1 (Grammar tok c2 a) ->
        Grammar tok (c1 || c2) a
(>>) {c1 = False} = ThenEmpty
(>>) {c1 = True} = ThenEat

||| Sequence two grammars. If either consumes some input, the sequence is
||| guaranteed to consume input. This is an explicitly non-infinite version
||| of `>>=`.
export %inline
seq : {c1,c2 : Bool} ->
      Grammar tok c1 a ->
      (a -> Grammar tok c2 b) ->
      Grammar tok (c1 || c2) b
seq = SeqEmpty

||| Sequence a grammar followed by the grammar it returns.
export %inline
join : {c1,c2 : Bool} ->
       Grammar tok c1 (Grammar tok c2 a) ->
       Grammar tok (c1 || c2) a
join {c1 = False} p = SeqEmpty p id
join {c1 = True} p = SeqEat p id

||| Allows the result of a grammar to be mapped to a different value.
export
{c : _} ->
Functor (Grammar tok c) where
  map f (Empty val)  = Empty (f val)
  map f (Fail bd fatal msg) = Fail bd fatal msg
  map f (Try g) = Try (map f g)
  map f (MustWork g) = MustWork (map f g)
  map f (Terminal msg g) = Terminal msg (map f . g)
  map f (Alt x y)    = Alt (map f x) (map f y)
  map f (SeqEat act next)
      = SeqEat act (\val => map f (next val))
  map f (SeqEmpty act next)
      = SeqEmpty act (\ val => map f (next val))
  map f (ThenEat act next)
      = ThenEat act (map f next)
  map f (ThenEmpty act next)
      = ThenEmpty act (map f next)
  map {c} f (Bounds act)
    = rewrite sym $ orFalseNeutral c in
      SeqEmpty (Bounds act) (Empty . f) -- Bounds (map f act)
  -- The remaining constructors (NextIs, EOF, Commit) have a fixed type,
  -- so a sequence must be used.
  map {c = False} f p = SeqEmpty p (Empty . f)

||| Give two alternative grammars. If both consume, the combination is
||| guaranteed to consume.
export %inline
(<|>) : {c1,c2 : Bool} ->
        Grammar tok c1 ty ->
        Lazy (Grammar tok c2 ty) ->
        Grammar tok (c1 && c2) ty
(<|>) = Alt

infixr 2 <||>
||| Take the tagged disjunction of two grammars. If both consume, the
||| combination is guaranteed to consume.
export
(<||>) : {c1,c2 : Bool} ->
        Grammar tok c1 a ->
        Lazy (Grammar tok c2 b) ->
        Grammar tok (c1 && c2) (Either a b)
(<||>) p q = (Left <$> p) <|> (Right <$> q)

||| Sequence a grammar with value type `a -> b` and a grammar
||| with value type `a`. If both succeed, apply the function
||| from the first grammar to the value from the second grammar.
||| Guaranteed to consume if either grammar consumes.
export %inline
(<*>) : {c1, c2 : Bool} ->
        Grammar tok c1 (a -> b) ->
        Grammar tok c2 a ->
        Grammar tok (c1 || c2) b
(<*>) x y = SeqEmpty x (\f => map f y)

||| Sequence two grammars. If both succeed, use the value of the first one.
||| Guaranteed to consume if either grammar consumes.
export %inline
(<*) : {c1,c2 : Bool} ->
       Grammar tok c1 a ->
       Grammar tok c2 b ->
       Grammar tok (c1 || c2) a
(<*) x y = map const x <*> y

||| Sequence two grammars. If both succeed, use the value of the second one.
||| Guaranteed to consume if either grammar consumes.
export %inline
(*>) : {c1,c2 : Bool} ->
       Grammar tok c1 a ->
       Grammar tok c2 b ->
       Grammar tok (c1 || c2) b
(*>) x y = map (const id) x <*> y

||| Produce a grammar that can parse a different type of token by providing a
||| function converting the new token type into the original one.
export
mapToken : (a -> b) -> Grammar b c ty -> Grammar a c ty
mapToken f (Empty val) = Empty val
mapToken f (Terminal msg g) = Terminal msg (g . f)
mapToken f (NextIs msg g) = SeqEmpty (NextIs msg (g . f)) (Empty . f)
mapToken f EOF = EOF
mapToken f (Fail bd fatal msg) = Fail bd fatal msg
mapToken f (Try g) = Try (mapToken f g)
mapToken f (MustWork g) = MustWork (mapToken f g)
mapToken f Commit = Commit
mapToken f (SeqEat act next)
  = SeqEat (mapToken f act) (\x => mapToken f (next x))
mapToken f (SeqEmpty act next)
  = SeqEmpty (mapToken f act) (\x => mapToken f (next x))
mapToken f (ThenEat act next)
  = ThenEat (mapToken f act) (mapToken f next)
mapToken f (ThenEmpty act next)
  = ThenEmpty (mapToken f act) (mapToken f next)
mapToken f (Alt x y) = Alt (mapToken f x) (mapToken f y)
mapToken f (Bounds act) = Bounds (mapToken f act)
mapToken f Position = Position

||| Always succeed with the given value.
export %inline
pure : (val : ty) -> Grammar tok False ty
pure = Empty

||| Check whether the next token satisfies a predicate
export %inline
nextIs : String -> (tok -> Bool) -> Grammar tok False tok
nextIs = NextIs

||| Look at the next token in the input
export %inline
peek : Grammar tok False tok
peek = nextIs "Unrecognised token" (const True)

||| Succeeds if running the predicate on the next token returns Just x,
||| returning x. Otherwise fails.
export %inline
terminal : String -> (tok -> Maybe a) -> Grammar tok True a
terminal = Terminal

||| Always fail with a message
export %inline
fail : String -> Grammar tok c ty
fail = Fail Nothing False

export %inline
fatalError : String -> Grammar tok c ty
fatalError = Fail Nothing True

export %inline
fatalLoc : Bounds -> String -> Grammar tok c ty
fatalLoc b = Fail (Just b) True

||| Catch a fatal error
export %inline
try : Grammar tok c ty -> Grammar tok c ty
try = Try

||| Succeed if the input is empty
export %inline
eof : Grammar tok False ()
eof = EOF

||| Commit to an alternative; if the current branch of an alternative
||| fails to parse, no more branches will be tried
export %inline
commit : Grammar tok False ()
commit = Commit

||| If the parser fails, treat it as a fatal error
export %inline
mustWork : {c : Bool} -> Grammar tok c ty -> Grammar tok c ty
mustWork = MustWork

export %inline
bounds : Grammar tok c ty -> Grammar tok c (WithBounds ty)
bounds = Bounds

export %inline
position : Grammar tok False Bounds
position = Position

data ParseResult : Type -> Type -> Type where
     Failure : (committed : Bool) -> (fatal : Bool) ->
               (err : String) -> (location : Maybe Bounds) -> ParseResult tok ty
     Res : (committed : Bool) ->
           (val : WithBounds ty) -> (more : List (WithBounds tok)) -> ParseResult tok ty

mergeWith : WithBounds ty -> ParseResult tok sy -> ParseResult tok sy
mergeWith x (Res committed val more) = Res committed (mergeBounds x val) more
mergeWith x v = v

doParse : (commit : Bool) ->
          (act : Grammar tok c ty) ->
          (xs : List (WithBounds tok)) ->
          ParseResult tok ty
doParse com (Empty val) xs = Res com (irrelevantBounds val) xs
doParse com (Fail location fatal str) xs = Failure com fatal str (maybe (bounds <$> head' xs) Just location)
doParse com (Try g) xs = case doParse com g xs of
  -- recover from fatal match but still propagate the 'commit'
  Failure com _ msg ts => Failure com False msg ts
  res => res
doParse com Commit xs = Res True (irrelevantBounds ()) xs
doParse com (MustWork g) xs =
  case assert_total (doParse com g xs) of
       Failure com' _ msg ts => Failure com' True msg ts
       res => res
doParse com (Terminal err f) [] = Failure com False "End of input" Nothing
doParse com (Terminal err f) (x :: xs) =
  case f x.val of
       Nothing => Failure com False err (Just x.bounds)
       Just a => Res com (const a <$> x) xs
doParse com EOF [] = Res com (irrelevantBounds ()) []
doParse com EOF (x :: xs) = Failure com False "Expected end of input" (Just x.bounds)
doParse com (NextIs err f) [] = Failure com False "End of input" Nothing
doParse com (NextIs err f) (x :: xs)
      = if f x.val
           then Res com (removeIrrelevance x) (x :: xs)
           else Failure com False err (Just x.bounds)
doParse com (Alt {c1} {c2} x y) xs
    = case doParse False x xs of
           Failure com' fatal msg ts
              => if com' || fatal
                        -- If the alternative had committed, don't try the
                        -- other branch (and reset commit flag)
                   then Failure com fatal msg ts
                   else assert_total (doParse False y xs)
           -- Successfully parsed the first option, so use the outer commit flag
           Res _ val xs => Res com val xs
doParse com (SeqEmpty act next) xs
    = case assert_total (doParse com act xs) of
           Failure com fatal msg ts => Failure com fatal msg ts
           Res com v xs =>
             mergeWith v (assert_total $ doParse com (next v.val) xs)
doParse com (SeqEat act next) xs
    = case assert_total (doParse com act xs) of
           Failure com fatal msg ts => Failure com fatal msg ts
           Res com v xs =>
             mergeWith v (assert_total $ doParse com (next v.val) xs)
doParse com (ThenEmpty act next) xs
    = case assert_total (doParse com act xs) of
           Failure com fatal msg ts => Failure com fatal msg ts
           Res com v xs =>
             mergeWith v (assert_total $ doParse com next xs)
doParse com (ThenEat act next) xs
    = case assert_total (doParse com act xs) of
           Failure com fatal msg ts => Failure com fatal msg ts
           Res com v xs =>
             mergeWith v (assert_total $ doParse com next xs)
doParse com (Bounds act) xs
    = case assert_total (doParse com act xs) of
           Failure com fatal msg ts => Failure com fatal msg ts
           Res com v xs => Res com (const v <$> v) xs
doParse com Position [] = Failure com False "End of input" Nothing
doParse com Position (x :: xs)
    = Res com (irrelevantBounds x.bounds) (x :: xs)

public export
data ParsingError tok = Error String (Maybe Bounds)

||| Parse a list of tokens according to the given grammar. If successful,
||| returns a pair of the parse result and the unparsed tokens (the remaining
||| input).
export
parse : {c : Bool} -> (act : Grammar tok c ty) -> (xs : List (WithBounds tok)) ->
        Either (ParsingError tok) (ty, List (WithBounds tok))
parse act xs
    = case doParse False act xs of
           Failure _ _ msg ts => Left (Error msg ts)
           Res _ v rest => Right (v.val, rest)
