module Main


mkList : Int -> Int -> List Int
mkList seed 0 = []
mkList seed n =
  let seed' = (seed * 1664525) + 1013904223 in
  seed `mod` 1000 :: mkList seed' (n - 1)

insert : Int -> List Int -> List Int
insert x [] = [x]
insert x (y :: ys) =
  if x < y
    then x :: y :: ys
    else y :: insert x ys

sort : List Int -> List Int
sort [] = []
sort (x :: xs) = insert x (sort xs)

main : IO ()
main = printLn (sort (mkList 1234567890 10000))
