import Erlang

%default partial

foo : Maybe a -> a
foo (Just x) = x

data Vect : ? -> Type -> Type where
     Nil : Vect Z a
     (::) : a -> Vect k a -> Vect (S k) a

data Fin : Nat -> Type where
     FZ : Fin (S k)
     FS : Fin k -> Fin (S k)

lookup : Fin n -> Vect n a -> a
lookup FZ (x :: xs) = x
lookup (FS k) (x :: xs) = lookup k xs

lookup' : Fin n -> Vect n a -> a
lookup' (FS k) (x :: xs) = lookup' k xs

lookup'' : Fin n -> Vect n a -> a
lookup'' n xs = lookup' n xs


ex1 : IO ()
ex1 = do
  putStr "" -- TODO: Workaround to avoid pruning this function
  let x = foo Nothing
  printLn (the Int x)

ex2 : IO ()
ex2 = printLn $ lookup (FS FZ) [1,2,3,4]

ex3 : IO ()
ex3 = do
  putStr "" -- TODO: Workaround to avoid pruning this function
  printLn $ lookup' (FS FZ) [1,2,3,4]

ex4 : IO ()
ex4 = do
  putStr "" -- TODO: Workaround to avoid pruning this function
  printLn $ lookup'' (FS FZ) [1,2,3,4]

try : IO () -> IO ()
try action = do
  Right _ <- erlTryCatch action
    | Left (MkTuple3 _ reason _) =>
      let MkTuple2 _ msg = erlUnsafeCast (ErlTuple2 ErlTerm String) reason
      in putStrLn msg
  pure ()

main : IO ()
main = do
  -- try ex1 -- TODO: This example is not caught by `erlTryCatch`, thus exiting early.
  try ex2
  try ex3
  try ex4
