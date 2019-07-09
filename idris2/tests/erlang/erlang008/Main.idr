module Main

import Erlang

%cg erlang """
get_map_empty() -> #{}.
get_map_ex1() -> #{<<"first">> => <<"ex1">>}.
get_map_ex2() -> #{<<"first">> => <<"ex2">>, <<"second">> => 42}.
get_pid() -> list_to_pid("<0.4.1>").
get_ref() -> list_to_ref("#Ref<0.4192537678.4073193475.71181>").
get_port() -> list_to_port("#Port<0.4>").
get_binary() -> <<"hello">>.
get_fun0() -> fun() -> 42 end.
get_fun1() -> fun(X) -> X end.
get_fun2() -> fun(X, Y) -> X + Y end.
get_fun_div() -> fun(X) -> 42.0 / X end.
"""

-- Wrappers around Erlang functions

mapEmpty : ErlMap
mapEmpty = unsafePerformIO $ erlUnsafeCall ErlMap "get_map_empty" []

mapEx1 : ErlMap
mapEx1 = unsafePerformIO $ erlUnsafeCall ErlMap "get_map_ex1" []

mapEx2 : ErlMap
mapEx2 = unsafePerformIO $ erlUnsafeCall ErlMap "get_map_ex2" []

pidEx : ErlPid
pidEx = unsafePerformIO $ erlUnsafeCall ErlPid "get_pid" []

refEx : ErlRef
refEx = unsafePerformIO $ erlUnsafeCall ErlRef "get_ref" []

portEx : ErlPort
portEx = unsafePerformIO $ erlUnsafeCall ErlPort "get_port" []

binaryEx : ErlBinary
binaryEx = unsafePerformIO $ erlUnsafeCall ErlBinary "get_binary" []

fun0Ex : ErlTerm
fun0Ex = unsafePerformIO $ erlUnsafeCall ErlTerm "get_fun0" []

fun1Ex : ErlTerm
fun1Ex = unsafePerformIO $ erlUnsafeCall ErlTerm "get_fun1" []

fun2Ex : ErlTerm
fun2Ex = unsafePerformIO $ erlUnsafeCall ErlTerm "get_fun2" []

funDivEx : ErlTerm
funDivEx = unsafePerformIO $ erlUnsafeCall ErlTerm "get_fun_div" []


-- Helper functions

unwrapBinary : ErlBinary -> String
unwrapBinary (MkErlBinary str) = str

unwrapAtom : ErlAtom -> String
unwrapAtom (MkErlAtom str) = str


-- Tests

testErlCase : IO ()
testErlCase = do
  putStrLn "testErlCase"
  putStrLn (erlCase "not found" [] (cast "any value"))
  putStrLn (erlCase "not found" [] (cast 1))
  putStrLn (erlCase "not found" [map show MInteger] (cast "string is not an integer"))
  putStrLn (erlCase "not found" [map show MInteger, map unwrapBinary MBinary] (cast "string matches on second try"))
  printLn (erlCase (-1) [MInteger] (cast 42))
  printLn (erlCase (-1) [MInteger] (cast "string is not an integer"))
  printLn (erlCase Nothing [map (Just . unwrapBinary) MBinary] (cast "val"))
  printLn (erlCase Nothing [map (Just . unwrapBinary) MBinary] (cast 0))

testErlCaseInErlCase : IO ()
testErlCaseInErlCase = do
  putStrLn "testErlCaseInErlCase"
  putStrLn (erlCase "not found" [MTuple [MAny] (\val => erlCase "inner not found" [map show MInteger] val)] (cast (MkErlTuple1 42)))
  putStrLn (erlCase "not found" [map (\str => erlCase "inner not found" [map (const "find this") (MExact "find this")] (cast str)) MBinary] (cast "find this"))

testMExact : IO ()
testMExact = do
  putStrLn "testMExact"
  putStrLn (erlCase "not found" [map (const "match me") (MExact "match me")] (cast "match me"))
  putStrLn (erlCase "not found" [map (const "match me") (MExact "match me")] (cast "something else"))
  putStrLn (erlCase "not found" [map (const "'ok'") (MExact (MkErlAtom "ok"))] (cast (MkErlAtom "ok")))
  putStrLn (erlCase "not found" [map (const "'ok'") (MExact (MkErlAtom "ok"))] (cast "ok"))
  putStrLn (erlCase "not found" [map (const "42") (MExact 42)] (cast 42))
  putStrLn (erlCase "not found" [map (const "42") (MExact 42)] (cast (the Double 42)))

testMAny : IO ()
testMAny = do
  putStrLn "testMAny"
  putStrLn (erlCase "not found" [map (const "matched on string") MAny] (cast "match me"))
  putStrLn (erlCase "not found" [map (const "matched on atom") MAny] (cast (MkErlAtom "ok")))
  putStrLn (erlCase "not found" [map (const "matched on integer") MAny] (cast 42))

testMCodepoint : IO ()
testMCodepoint = do
  putStrLn "testMCodepoint"
  putStrLn (erlCase "not found" [map show MCodepoint] (cast 97))
  putStrLn (erlCase "not found" [map show MCodepoint] (cast (-1))) -- NOTE: Min char value is 0
  putStrLn (erlCase "not found" [map show MCodepoint] (cast 1114112)) -- NOTE: Max char value is 0x10FFFF (1114111 in decimal number)
  putStrLn (erlCase "not found" [map show MCodepoint] (cast "string is not a char"))
  putStrLn (erlCase "not found" [map show MCodepoint] (cast (the Double 42)))

testMInteger : IO ()
testMInteger = do
  putStrLn "testMInteger"
  putStrLn (erlCase "not found" [map show MInteger] (cast 42))
  putStrLn (erlCase "not found" [map show MInteger] (cast 0))
  putStrLn (erlCase "not found" [map show MInteger] (cast (-42)))
  putStrLn (erlCase "not found" [map show MInteger] (cast "string is not an integer"))
  putStrLn (erlCase "not found" [map show MInteger] (cast (the Double 42)))

testMDouble : IO ()
testMDouble = do
  putStrLn "testMDouble"
  putStrLn (erlCase "not found" [map show MDouble] (cast (the Double 42)))
  putStrLn (erlCase "not found" [map show MDouble] (cast (the Double 0)))
  putStrLn (erlCase "not found" [map show MDouble] (cast (the Double (-42))))
  putStrLn (erlCase "not found" [map show MDouble] (cast "string is not an double"))
  putStrLn (erlCase "not found" [map show MDouble] (cast 42))

testMAtom : IO ()
testMAtom = do
  putStrLn "testMAtom"
  putStrLn (erlCase "not found" [map show MAtom] (cast (MkErlAtom "ok")))
  putStrLn (erlCase "not found" [map show MAtom] (cast (MkErlAtom "error")))
  putStrLn (erlCase "not found" [map show MAtom] (cast "string is not an atom"))

testMBinary : IO ()
testMBinary = do
  putStrLn "testMBinary"
  putStrLn (erlCase "not found" [map show MBinary] (cast binaryEx))
  putStrLn (erlCase "not found" [map show MBinary] (cast 42))

testMMap : IO ()
testMMap = do
  putStrLn "testMMap"
  putStrLn (erlCase "not found" [map (const "found map") MMap] (cast mapEmpty))
  putStrLn (erlCase "not found" [map (const "found map") MMap] (cast mapEx1))
  putStrLn (erlCase "not found" [map (const "found map") MMap] (cast "not a map"))

testMPid : IO ()
testMPid = do
  putStrLn "testMPid"
  putStrLn (erlCase "not found" [map show MPid] (cast pidEx))
  putStrLn (erlCase "not found" [map show MPid] (cast "not a pid"))

testMRef : IO ()
testMRef = do
  putStrLn "testMRef"
  putStrLn (erlCase "not found" [map show MRef] (cast refEx))
  putStrLn (erlCase "not found" [map show MRef] (cast "not a ref"))

testMPort : IO ()
testMPort = do
  putStrLn "testMPort"
  putStrLn (erlCase "not found" [map show MPort] (cast portEx))
  putStrLn (erlCase "not found" [map show MPort] (cast "not a port"))

testMAnyList : IO ()
testMAnyList = do
  putStrLn "testMAnyList"
  putStrLn (erlCase "not found" [map (const "found list") MAnyList] (cast (the ErlNil [])))
  putStrLn (erlCase "not found" [map (const "found list") MAnyList] (cast (the (ErlCons _ _) (MkErlAtom "ok" :: 42))))
  putStrLn (erlCase "not found" [map (const "found list") MAnyList] (cast "not a list"))

testMNil : IO ()
testMNil = do
  putStrLn "testMNil"
  putStrLn (erlCase "not found" [map (const "found nil") MNil] (cast (the ErlNil [])))
  putStrLn (erlCase "not found" [map (const "found nil") MNil] (cast "not an empty list"))

testMCons : IO ()
testMCons = do
  putStrLn "testMCons"
  putStrLn (erlCase "not found" [MCons MBinary MBinary (\x, y => unwrapBinary x ++ unwrapBinary y)] (cast (the (ErlCons String String) ("a" :: "b"))))
  putStrLn (erlCase "not found" [MCons MBinary MBinary (\x, y => unwrapBinary x ++ unwrapBinary y)] (cast "not a list cons"))
  putStrLn (erlCase "not found" [MCons MBinary MInteger (\x, y => unwrapBinary x ++ show y)] (cast (the (ErlCons String Integer) ("a" :: 42))))
  putStrLn (erlCase "not found" [MCons MBinary MNil (\x, y => unwrapBinary x)] (cast (the (ErlCons String ErlNil) ["a"])))
  putStrLn (erlCase "not found" [MCons MBinary (MCons MInteger MNil (\x, y => x)) (\x, y => unwrapBinary x ++ show y)] (cast (the (ErlCons String (ErlCons Integer ErlNil)) ["a", 42])))

testMList : IO ()
testMList = do
  putStrLn "testMList"
  putStrLn (erlCase "not found" [MList [MBinary] unwrapBinary] (cast (the (ErlList _) ["first item"])))
  putStrLn (erlCase "not found" [MList [MBinary, MInteger] (\x, y => unwrapBinary x ++ show y)] (cast (the (ErlList _) ["first item", 42])))
  putStrLn (erlCase "not found" [MList [MBinary] unwrapBinary] (cast (the (ErlList _) [])))
  putStrLn (erlCase "not found" [MList [MBinary] unwrapBinary] (cast (the (ErlList _) ["a", "b"])))

testMTuple : IO ()
testMTuple = do
  putStrLn "testMTuple"
  putStrLn (erlCase "not found" [MTuple [] "is empty tuple"] (cast MkErlTuple0))
  putStrLn (erlCase "not found" [MTuple [] "is empty tuple"] (cast ()))
  putStrLn (erlCase "not found" [MTuple [] "is empty tuple"] (cast "not an empty tuple"))
  putStrLn (erlCase "not found" [MTuple [MAny] (const "found any value")] (cast (MkErlTuple1 42)))
  putStrLn (erlCase "not found" [MTuple [MInteger] show] (cast (MkErlTuple1 42)))
  putStrLn (erlCase "not found" [MTuple [MBinary] unwrapBinary] (cast (MkErlTuple1 "string inside 1-element tuple")))
  putStrLn (erlCase "not found" [MTuple [MAny] (const "found any value")] (cast 42))
  putStrLn (erlCase "not found" [MTuple [MBinary, MBinary] (\x, y => unwrapBinary x ++ " & " ++ unwrapBinary y)] (cast (MkErlTuple2 "first string" "second string")))
  putStrLn (erlCase "not found" [MTuple [MExact (MkErlAtom "ok"), MInteger] (\x, y => show y)] (cast (MkErlTuple2 (MkErlAtom "ok") 42)))
  putStrLn (erlCase "not found" [MTuple [MExact (MkErlAtom "ok"), MInteger] (\x, y => show y)] (cast (MkErlTuple3 (MkErlAtom "ok") 42 "too long tuple")))

testMMapSubset : IO ()
testMMapSubset = do
  putStrLn "testMMapSubset"
  putStrLn (erlCase "not found" [MMapSubset ["first" := MBinary] unwrapBinary] (cast mapEx1))
  putStrLn (erlCase "not found" [MMapSubset ["first" := MBinary] unwrapBinary] (cast mapEx2))
  putStrLn (erlCase "not found" [MMapSubset ["first" := MBinary, "second" := MInteger] (\first, second => unwrapBinary first ++ " & " ++ show second)] (cast mapEx1))
  putStrLn (erlCase "not found" [MMapSubset ["first" := MBinary, "second" := MInteger] (\first, second => unwrapBinary first ++ " & " ++ show second)] (cast mapEx2))

testMIO : IO ()
testMIO = do
  putStrLn "testMIO"
  case erlCase Nothing [map Just (MIO [])] fun0Ex of
    Nothing => putStrLn "not found"
    Just fun0 => do
      fun0_res <- fun0
      putStrLn (erlCase "not an integer" [map show MInteger] fun0_res)
  case erlCase Nothing [map Just (MIO [])] (cast {to=ErlTerm} "not a function") of
    Nothing => putStrLn "not found"
    Just fun0_notFound => do
      fun0_notFound_res <- fun0_notFound
      putStrLn (erlCase "not an integer" [map show MInteger] fun0_notFound_res)
  case erlCase Nothing [map Just (MIO [Int])] fun1Ex of
    Nothing => putStrLn "not found"
    Just fun1 => do
      fun1_res <- fun1 42
      putStrLn (erlCase "not an integer" [map show MInteger] fun1_res)
  case erlCase Nothing [map Just (MIO [Int, Int])] fun2Ex of
    Nothing => putStrLn "not found"
    Just fun2 => do
      fun2_res <- fun2 42 37
      putStrLn (erlCase "not an integer" [map show MInteger] fun2_res)
  case erlCase Nothing [map Just (MIO [Double])] funDivEx of
    Nothing => putStrLn "not found"
    Just funDiv_works => do
      funDiv_works_res <- funDiv_works 1.0
      putStrLn (erlCase "not a double" [map show MDouble] funDiv_works_res)
  case erlCase Nothing [map Just (MIO [Double])] funDivEx of
    Nothing => putStrLn "not found"
    Just funDiv_crashes => do
      funDiv_crashes_res <- funDiv_crashes 0.0
      putStrLn (erlCase "not a double" [map show MDouble] funDiv_crashes_res)

testMError : IO ()
testMError = do
  putStrLn "testMError"
  putStrLn (erlCase "not found" [map (const "matched on error") (MError MAny)] (cast (MkErlTuple2 (MkErlAtom "$idris_rts_exception") "error")))
  putStrLn (erlCase "not found" [map (const "matched on error") (MError MAny)] (cast "something else"))
  case erlCase Nothing [map Just (MIO [Double])] funDivEx of
    Nothing => putStrLn "not found"
    Just funDiv_crashes => do
      funDiv_crashes_res <- funDiv_crashes 0.0
      putStrLn (erlCase "did not match on error" [MError (MTuple [MAtom, MAtom, MAny] (\class, reason, stacktrace => unwrapAtom reason))] funDiv_crashes_res)


main : IO ()
main = do
  testErlCase
  testErlCaseInErlCase
  testMExact
  testMAny
  testMCodepoint
  testMInteger
  testMDouble
  testMAtom
  testMBinary
  testMMap
  testMPid
  testMRef
  testMPort
  testMAnyList
  testMNil
  testMCons
  testMList
  testMTuple
  testMMapSubset
  testMIO
  testMError
