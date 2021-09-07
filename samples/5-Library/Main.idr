module Main

import Erlang

%default total
%cg erlang export exports


printSum : Integer -> Integer -> IO Integer
printSum x y = do
  let result = x + y
  putStrLn ("Sum: " ++ show result)
  pure result

exports : ErlExport
exports =
  Fun "foo" 42
    <+> Fun "print_sum" (MkIOFun2 printSum)
