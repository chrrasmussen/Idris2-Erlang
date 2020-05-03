module Main

import Erlang


-- Wrappers around Erlang functions

mapEmpty : ErlMap
mapEmpty = unsafePerformIO $ erlUnsafeCall ErlMap "test_support" "get_map_empty" []

mapEx1 : ErlMap
mapEx1 = unsafePerformIO $ erlUnsafeCall ErlMap "test_support" "get_map_ex1" []

mapEx2 : ErlMap
mapEx2 = unsafePerformIO $ erlUnsafeCall ErlMap "test_support" "get_map_ex2" []

pidEx : ErlPid
pidEx = unsafePerformIO $ erlUnsafeCall ErlPid "test_support" "get_pid" []

refEx : ErlRef
refEx = unsafePerformIO $ erlUnsafeCall ErlRef "test_support" "get_ref" []

portEx : ErlPort
portEx = unsafePerformIO $ erlUnsafeCall ErlPort "test_support" "get_port" []

binaryEx : ErlBinary
binaryEx = unsafePerformIO $ erlUnsafeCall ErlBinary "test_support" "get_binary" []

fun0Ex : ErlTerm
fun0Ex = unsafePerformIO $ erlUnsafeCall ErlTerm "test_support" "get_fun0" []

fun1Ex : ErlTerm
fun1Ex = unsafePerformIO $ erlUnsafeCall ErlTerm "test_support" "get_fun1" []

fun2Ex : ErlTerm
fun2Ex = unsafePerformIO $ erlUnsafeCall ErlTerm "test_support" "get_fun2" []

funDivEx : ErlTerm
funDivEx = unsafePerformIO $ erlUnsafeCall ErlTerm "test_support" "get_fun_div" []


-- Helper functions

unwrapBinary : ErlBinary -> String
unwrapBinary (MkErlBinary str) = str


-- Tests

testErlDecode : IO ()
testErlDecode = do
  putStrLn "testErlDecode"
  putStrLn (erlDecodeDef "not found" (map show integer) (cast "string is not an integer"))
  putStrLn (erlDecodeDef "not found" (map show integer <|> map unwrapBinary binary) (cast "string matches on second try"))
  printLn (erlDecodeDef (-1) integer (cast 42))
  printLn (erlDecodeDef (-1) integer (cast "string is not an integer"))
  printLn (erlDecodeDef Nothing (map (Just . unwrapBinary) binary) (cast "val"))
  printLn (erlDecodeDef Nothing (map (Just . unwrapBinary) binary) (cast 0))

testErlDecodeInErlDecode : IO ()
testErlDecodeInErlDecode = do
  putStrLn "testErlDecodeInErlDecode"
  putStrLn (erlDecodeDef "not found" (map (\(MkErlTuple1 val) => erlDecodeDef "inner not found" (map show integer) val) (tuple1 any)) (cast (MkErlTuple1 42)))
  putStrLn (erlDecodeDef "not found" (map (\(MkErlBinary str) => erlDecodeDef "inner not found" (map (const "find this") (exact "find this")) (cast str)) binary) (cast "find this"))

testFail : IO ()
testFail = do
  putStrLn "testFail"
  putStrLn (erlDecodeDef "not found" (fail "always fails") (cast "any value"))
  putStrLn (erlDecodeDef "not found" (fail "always fails") (cast 1))

testAny : IO ()
testAny = do
  putStrLn "testAny"
  putStrLn (erlDecodeDef "not found" (map (const "matched on string") any) (cast "match me"))
  putStrLn (erlDecodeDef "not found" (map (const "matched on atom") any) (cast (MkErlAtom "ok")))
  putStrLn (erlDecodeDef "not found" (map (const "matched on integer") any) (cast 42))

testExact : IO ()
testExact = do
  putStrLn "testExact"
  putStrLn (erlDecodeDef "not found" (map (const "match me") (exact "match me")) (cast "match me"))
  putStrLn (erlDecodeDef "not found" (map (const "match me") (exact "match me")) (cast "something else"))
  putStrLn (erlDecodeDef "not found" (map (const "'ok'") (exact (MkErlAtom "ok"))) (cast (MkErlAtom "ok")))
  putStrLn (erlDecodeDef "not found" (map (const "'ok'") (exact (MkErlAtom "ok"))) (cast "ok"))
  putStrLn (erlDecodeDef "not found" (map (const "42") (exact 42)) (cast 42))
  putStrLn (erlDecodeDef "not found" (map (const "42") (exact 42)) (cast (the Double 42)))

testCodepoint : IO ()
testCodepoint = do
  putStrLn "testCodepoint"
  putStrLn (erlDecodeDef "not found" (map show codepoint) (cast 97))
  putStrLn (erlDecodeDef "not found" (map show codepoint) (cast (-1))) -- NOTE: Min char value is 0
  putStrLn (erlDecodeDef "not found" (map show codepoint) (cast 1114112)) -- NOTE: Max char value is 0x10FFFF (1114111 in decimal number)
  putStrLn (erlDecodeDef "not found" (map show codepoint) (cast "string is not a char"))
  putStrLn (erlDecodeDef "not found" (map show codepoint) (cast (the Double 42)))

testInteger : IO ()
testInteger = do
  putStrLn "testInteger"
  putStrLn (erlDecodeDef "not found" (map show integer) (cast 42))
  putStrLn (erlDecodeDef "not found" (map show integer) (cast 0))
  putStrLn (erlDecodeDef "not found" (map show integer) (cast (-42)))
  putStrLn (erlDecodeDef "not found" (map show integer) (cast "string is not an integer"))
  putStrLn (erlDecodeDef "not found" (map show integer) (cast (the Double 42)))

testDouble : IO ()
testDouble = do
  putStrLn "testDouble"
  putStrLn (erlDecodeDef "not found" (map show double) (cast (the Double 42)))
  putStrLn (erlDecodeDef "not found" (map show double) (cast (the Double 0)))
  putStrLn (erlDecodeDef "not found" (map show double) (cast (the Double (-42))))
  putStrLn (erlDecodeDef "not found" (map show double) (cast "string is not an double"))
  putStrLn (erlDecodeDef "not found" (map show double) (cast 42))

testAtom : IO ()
testAtom = do
  putStrLn "testAtom"
  putStrLn (erlDecodeDef "not found" (map show atom) (cast (MkErlAtom "ok")))
  putStrLn (erlDecodeDef "not found" (map show atom) (cast (MkErlAtom "error")))
  putStrLn (erlDecodeDef "not found" (map show atom) (cast "string is not an atom"))

testBinary : IO ()
testBinary = do
  putStrLn "testBinary"
  putStrLn (erlDecodeDef "not found" (map show binary) (cast binaryEx))
  putStrLn (erlDecodeDef "not found" (map show binary) (cast 42))

testPid : IO ()
testPid = do
  putStrLn "testPid"
  putStrLn (erlDecodeDef "not found" (map show pid) (cast pidEx))
  putStrLn (erlDecodeDef "not found" (map show pid) (cast "not a pid"))

testRef : IO ()
testRef = do
  putStrLn "testRef"
  putStrLn (erlDecodeDef "not found" (map show ref) (cast refEx))
  putStrLn (erlDecodeDef "not found" (map show ref) (cast "not a ref"))

testPort : IO ()
testPort = do
  putStrLn "testPort"
  putStrLn (erlDecodeDef "not found" (map show port) (cast portEx))
  putStrLn (erlDecodeDef "not found" (map show port) (cast "not a port"))

testAnyMap : IO ()
testAnyMap = do
  putStrLn "testAnyMap"
  putStrLn (erlDecodeDef "not found" (map (const "found map") anyMap) (cast mapEmpty))
  putStrLn (erlDecodeDef "not found" (map (const "found map") anyMap) (cast mapEx1))
  putStrLn (erlDecodeDef "not found" (map (const "found map") anyMap) (cast "not a map"))

testAnyList : IO ()
testAnyList = do
  putStrLn "testAnyList"
  putStrLn (erlDecodeDef "not found" (map (const "found list") anyList) (cast (the ErlNil [])))
  putStrLn (erlDecodeDef "not found" (map (const "found list") anyList) (cast (the (ErlCons _ _) (MkErlAtom "ok" :: 42))))
  putStrLn (erlDecodeDef "not found" (map (const "found list") anyList) (cast "not a list"))

testNil : IO ()
testNil = do
  putStrLn "testNil"
  putStrLn (erlDecodeDef "not found" (map (const "found nil") nil) (cast (the ErlNil [])))
  putStrLn (erlDecodeDef "not found" (map (const "found nil") nil) (cast "not an empty list"))

testCons : IO ()
testCons = do
  putStrLn "testCons"
  putStrLn (erlDecodeDef "not found" (map show (cons binary binary)) (cast (the (ErlCons String String) ("a" :: "b"))))
  putStrLn (erlDecodeDef "not found" (map show (cons binary binary)) (cast "not a list cons"))
  putStrLn (erlDecodeDef "not found" (map show (cons binary integer)) (cast (the (ErlCons String Integer) ("a" :: 42))))
  putStrLn (erlDecodeDef "not found" (map show (cons binary nil)) (cast (the (ErlCons String ErlNil) ["a"])))
  putStrLn (erlDecodeDef "not found" (map show (cons binary (cons integer nil))) (cast (the (ErlCons String (ErlCons Integer ErlNil)) ["a", 42])))

testList : IO ()
testList = do
  putStrLn "testList"
  putStrLn (erlDecodeDef "not found" (map show (list binary)) (cast (the (List String) [])))
  putStrLn (erlDecodeDef "not found" (map show (list integer)) (cast "not a list"))
  putStrLn (erlDecodeDef "not found" (map show (list binary)) (cast (the (List _) ["first item", "second item"])))
  putStrLn (erlDecodeDef "not found" (map show (list integer)) (cast (the (List _) [1, 2, 3])))
  putStrLn (erlDecodeDef "not found" (map show (list integer)) (cast (the (List _) ["first item", "second item"])))

testHList : IO ()
testHList = do
  putStrLn "testHList"
  putStrLn (erlDecodeDef "not found" (map show (hList [binary])) (cast (the (ErlList _) ["first item"])))
  putStrLn (erlDecodeDef "not found" (map show (hList [binary])) (cast "not an hList"))
  putStrLn (erlDecodeDef "not found" (map show (hList [binary, integer])) (cast (the (ErlList _) ["first item", 42])))
  putStrLn (erlDecodeDef "not found" (map show (hList [binary])) (cast (the (ErlList _) [])))
  putStrLn (erlDecodeDef "not found" (map show (hList [binary])) (cast (the (ErlList _) ["a", "b"])))

testTuple : IO ()
testTuple = do
  putStrLn "testTuple"
  putStrLn (erlDecodeDef "not found" (map show tuple0) (cast MkErlTuple0))
  putStrLn (erlDecodeDef "not found" (map show tuple0) (cast ()))
  putStrLn (erlDecodeDef "not found" (map show tuple0) (cast "not an empty tuple"))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 any)) (cast (MkErlTuple1 42)))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 integer)) (cast (MkErlTuple1 42)))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 binary)) (cast (MkErlTuple1 "string inside 1-element tuple")))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 any)) (cast 42))
  putStrLn (erlDecodeDef "not found" (map show (tuple2 binary binary)) (cast (MkErlTuple2 "first string" "second string")))
  putStrLn (erlDecodeDef "not found" (map show (tuple2 (exact (MkErlAtom "ok")) integer)) (cast (MkErlTuple2 (MkErlAtom "ok") 42)))
  putStrLn (erlDecodeDef "not found" (map show (tuple2 (exact (MkErlAtom "ok")) integer)) (cast (MkErlTuple3 (MkErlAtom "ok") 42 "too long tuple")))

testMapEntry : IO ()
testMapEntry = do
  putStrLn "testMapEntry"
  putStrLn (erlDecodeDef "not found" (map unwrapBinary (mapEntry "first" binary)) (cast mapEx1))
  putStrLn (erlDecodeDef "not found" (map unwrapBinary (mapEntry "second" binary)) (cast mapEx1)) -- Missing key
  putStrLn (erlDecodeDef "not found" (map show (mapEntry "first" integer)) (cast mapEx1)) -- Wrong type
  putStrLn (erlDecodeDef "not found" (map unwrapBinary (mapEntry "first" binary)) (cast mapEx2))

testMapSubset : IO ()
testMapSubset = do
  putStrLn "testMapSubset"
  putStrLn (erlDecodeDef "not found" (map (const "found map") (mapSubset [])) (cast mapEx1))
  putStrLn (erlDecodeDef "not found" (map (const "found map") (mapSubset [])) (cast "not a map"))
  putStrLn (erlDecodeDef "not found" (map show (mapSubset ["first" := binary])) (cast mapEx1))
  putStrLn (erlDecodeDef "not found" (map show (mapSubset ["first" := binary])) (cast mapEx2))
  putStrLn (erlDecodeDef "not found" (map show (mapSubset ["first" := binary, "second" := integer])) (cast mapEx1))
  putStrLn (erlDecodeDef "not found" (map show (mapSubset ["first" := binary, "second" := integer])) (cast mapEx2))

testOptional : IO ()
testOptional = do
  putStrLn "testOptional"
  putStrLn (erlDecodeDef "not found" (map show (optional integer)) (cast 42))
  putStrLn (erlDecodeDef "not found" (map show (optional integer)) (cast "string is not an integer"))

testIO : IO ()
testIO = do
  putStrLn "testIO"
  case erlDecode fun0 fun0Ex of
    Right fun0 => do
      Right fun0_res <- fun0
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not an integer" (map show integer) fun0_res)
    Left _ => putStrLn "not found"
  case erlDecode fun0 (cast {to=ErlTerm} "not a function") of
    Right fun0_notFound => do
      Right fun0_notFound_res <- fun0_notFound
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not an integer" (map show integer) fun0_notFound_res)
    Left _ => putStrLn "not found"
  case erlDecode (fun1 Int) fun1Ex of
    Right fun1 => do
      Right fun1_res <- fun1 42
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not an integer" (map show integer) fun1_res)
    Left _ => putStrLn "not found"
  case erlDecode (fun2 Int Int) fun2Ex of
    Right fun2 => do
      Right fun2_res <- fun2 42 37
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not an integer" (map show integer) fun2_res)
    Left _ => putStrLn "not found"
  case erlDecode (fun1 Double) funDivEx of
    Right funDiv_works => do
      Right funDiv_works_res <- funDiv_works 1.0
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not a double" (map show double) funDiv_works_res)
    Left _ => putStrLn "not found"
  case erlDecode (fun1 Double) funDivEx of
    Right funDiv_crashes => do
      Right funDiv_crashes_res <- funDiv_crashes 0.0
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not a double" (map show double) funDiv_crashes_res)
    Left _ => putStrLn "not found"


main : IO ()
main = do
  testErlDecode
  testErlDecodeInErlDecode
  testFail
  testAny
  testExact
  testCodepoint
  testInteger
  testDouble
  testAtom
  testBinary
  testPid
  testRef
  testPort
  testAnyMap
  testAnyList
  testNil
  testCons
  testList
  testHList
  testTuple
  testMapEntry
  testMapSubset
  testOptional
  testIO
