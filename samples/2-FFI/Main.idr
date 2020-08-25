module Main

import Erlang


||| Get the length of a string.
||| Implemented using the Erlang function `string:length/1`.
stringLength : String -> Integer
stringLength str = erlUnsafeCall Integer "string" "length" [str]


||| Get the length of string and print the result.
|||
||| Output:
||| ```idris
||| 5
||| ```
main : IO ()
main = do
  let result = stringLength "Hello"
  printLn result




-- `erlUnsafeCall` requires that the passed arguments and the return type are
-- members of `ErlType`. One way to create a generic function is to forward
-- this constraint to the caller of `reverseList`.

||| Reverse a list of values that conform to `ErlType`.
||| Implemented using the Erlang function `lists:reverse/1`.
reverseList : ErlType a => List a -> List a
reverseList xs = erlUnsafeCall (List a) "lists" "reverse" [xs]


||| Reverse a list of strings and print the result.
||| String is a member of `ErlType` so this works.
|||
||| Output:
||| ```idris
||| ["c", "b", "a"]
||| ```
main2 : IO ()
main2 = do
  let result = reverseList ["a", "b", "c"]
  printLn result




-- We can write a more generic reverse list function by wrapping the value in
-- the `Raw` type. When doing this, one need to be sure that the value we pass
-- to Erlang is sensible. In the following example, we know that the `List` is
-- mapped to an Erlang list, and the values contained in the list does not
-- matter to `lists:reverse/1`.

||| Reverse a list of values of any type.
||| Implemented using the Erlang function `lists:reverse/1`.
reverseListGeneric : List a -> List a
reverseListGeneric xs =
  let MkRaw val = erlUnsafeCall (Raw (List a)) "lists" "reverse" [MkRaw xs]
  in val

||| A data type that has no meaning to Erlang.
data Custom = MkCustom String

Show Custom where
  show (MkCustom str) = "MkCustom " ++ show str

||| Reverse a list of `Custom` values and print the result.
|||
||| Output:
||| ```idris
||| [MkCustom "type", MkCustom "this", MkCustom "about", MkCustom "know",
||| MkCustom "not", MkCustom "does", MkCustom "Erlang"]
||| ```
main3 : IO ()
main3 = do
  let result = reverseListGeneric
        [MkCustom "Erlang", MkCustom "does", MkCustom "not", MkCustom "know",
        MkCustom "about", MkCustom "this", MkCustom "type"]
  printLn result




-- It is possible to pass functions as arguments to Erlang functions as well.

-- The signature of `foldl` in Erlang is as following:
-- ```erlang
-- foldl(Fun, Acc0, List) -> Acc1
--
-- Fun = fun((Elem :: T, AccIn) -> AccOut)
-- Acc0 = Acc1 = AccIn = AccOut = term()
-- List = [T]
-- T = term()
-- ```

-- When wrapping an Erlang function we still want to provide a convenient
-- signature to Idris programs, i.e. a curried function:

||| A fold-left function that takes a pure step-function.
||| Implemented using the Erlang function `lists:foldl/3`.
pureFoldl : (ErlType a, ErlType b) => (a -> b -> b) -> b -> List a -> b
pureFoldl func acc xs =
  erlUnsafeCall b "lists" "foldl" [MkFun2 func, acc, xs]

||| Calculate the sum of integer values and print the result.
|||
||| Output:
||| ```idris
||| 6
||| ```
main4 : IO ()
main4 = do
  let result = pureFoldl (+) 0 [1, 2, 3]
  printLn result




-- The function that we provide to Erlang may also contain IO actions.
-- When we pass a function that performs side-effects to `lists:foldl/1`, it
-- means the resulting function call will also perform side-effects. To make
-- sure that we are being honest in our types, the retun type of `impureFoldl`
-- be of the type `IO`.

||| A fold-left function that takes a step-function that may perform
||| side-effects.
||| Implemented using the Erlang function `lists:foldl/3`.
impureFoldl : (ErlType a, ErlType b) => (a -> b -> IO b) -> b -> List a -> IO b
impureFoldl func acc xs =
  pure $ erlUnsafeCall b "lists" "foldl" [MkIOFun2 func, acc, xs]


||| Calculate the sum of integer values and print the result. Also print
||| the value at every step.
|||
||| Output:
||| ```idris
||| Next: 4
||| Next: 5
||| Next: 6
||| Sum: 15
||| ```
main5 : IO ()
main5 = do
  result <- impureFoldl (\x, acc => do { putStrLn ("Next: " ++ show x); pure (x + acc) }) 0 [4, 5, 6]
  putStrLn ("Sum: " ++ show result)
