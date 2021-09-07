module Main

import Erlang


-- Wrappers around Erlang functions

mapEmpty : ErlAnyMap
mapEmpty = erlUnsafeCall ErlAnyMap "test_support" "get_map_empty" []

mapEx1 : ErlAnyMap
mapEx1 = erlUnsafeCall ErlAnyMap "test_support" "get_map_ex1" []

mapEx2 : ErlAnyMap
mapEx2 = erlUnsafeCall ErlAnyMap "test_support" "get_map_ex2" []

pidEx : ErlPid
pidEx = erlUnsafeCall ErlPid "test_support" "get_pid" []

refEx : ErlReference
refEx = erlUnsafeCall ErlReference "test_support" "get_ref" []

portEx : ErlPort
portEx = erlUnsafeCall ErlPort "test_support" "get_port" []

binaryEx : String
binaryEx = erlUnsafeCall String "test_support" "get_binary" []

fun0Ex : ErlTerm
fun0Ex = erlUnsafeCall ErlTerm "test_support" "get_fun0" []

fun1Ex : ErlTerm
fun1Ex = erlUnsafeCall ErlTerm "test_support" "get_fun1" []

fun2Ex : ErlTerm
fun2Ex = erlUnsafeCall ErlTerm "test_support" "get_fun2" []

funDivEx : ErlTerm
funDivEx = erlUnsafeCall ErlTerm "test_support" "get_fun_div" []


-- Tests

testErlDecode : IO ()
testErlDecode = do
  putStrLn "testErlDecode"
  putStrLn (erlDecodeDef "not found" (map show integer) "string is not an integer")
  putStrLn (erlDecodeDef "not found" (map show integer <|> string) "string matches on second try")
  printLn (erlDecodeDef (-1) integer 42)
  printLn (erlDecodeDef (-1) integer "string is not an integer")
  printLn (erlDecodeDef Nothing (map Just string) "val")
  printLn (erlDecodeDef Nothing (map Just string) 0)

testErlDecodeInErlDecode : IO ()
testErlDecodeInErlDecode = do
  putStrLn "testErlDecodeInErlDecode"
  putStrLn (erlDecodeDef "not found" (map (\(MkTuple1 val) => erlDecodeDef "inner not found" (map show integer) val) (tuple1 any)) (MkTuple1 42))
  putStrLn (erlDecodeDef "not found" (map (\str => erlDecodeDef "inner not found" (map (const "find this") (exact "find this")) str) string) "find this")

testFail : IO ()
testFail = do
  putStrLn "testFail"
  putStrLn (erlDecodeDef "not found" (fail "always fails") "any value")
  putStrLn (erlDecodeDef "not found" (fail "always fails") 1)

testAny : IO ()
testAny = do
  putStrLn "testAny"
  putStrLn (erlDecodeDef "not found" (map (const "matched on string") any) "match me")
  putStrLn (erlDecodeDef "not found" (map (const "matched on atom") any) (MkAtom "ok"))
  putStrLn (erlDecodeDef "not found" (map (const "matched on integer") any) 42)

testExact : IO ()
testExact = do
  putStrLn "testExact"
  putStrLn (erlDecodeDef "not found" (map (const "match me") (exact "match me")) "match me")
  putStrLn (erlDecodeDef "not found" (map (const "match me") (exact "match me")) "something else")
  putStrLn (erlDecodeDef "not found" (map (const "'ok'") (exact (MkAtom "ok"))) (MkAtom "ok"))
  putStrLn (erlDecodeDef "not found" (map (const "'ok'") (exact (MkAtom "ok"))) "ok")
  putStrLn (erlDecodeDef "not found" (map (const "42") (exact 42)) 42)
  putStrLn (erlDecodeDef "not found" (map (const "42") (exact 42)) (the Double 42))

testCodepoint : IO ()
testCodepoint = do
  putStrLn "testCodepoint"
  putStrLn (erlDecodeDef "not found" (map show codepoint) 97)
  putStrLn (erlDecodeDef "not found" (map show codepoint) (-1)) -- NOTE: Min char value is 0
  putStrLn (erlDecodeDef "not found" (map show codepoint) 1114112) -- NOTE: Max char value is 0x10FFFF (1114111 in decimal number)
  putStrLn (erlDecodeDef "not found" (map show codepoint) "string is not a char")
  putStrLn (erlDecodeDef "not found" (map show codepoint) (the Double 42))

testInteger : IO ()
testInteger = do
  putStrLn "testInteger"
  putStrLn (erlDecodeDef "not found" (map show integer) 42)
  putStrLn (erlDecodeDef "not found" (map show integer) 0)
  putStrLn (erlDecodeDef "not found" (map show integer) (-42))
  putStrLn (erlDecodeDef "not found" (map show integer) "string is not an integer")
  putStrLn (erlDecodeDef "not found" (map show integer) (the Double 42))

testDouble : IO ()
testDouble = do
  putStrLn "testDouble"
  putStrLn (erlDecodeDef "not found" (map show double) (the Double 42))
  putStrLn (erlDecodeDef "not found" (map show double) (the Double 0))
  putStrLn (erlDecodeDef "not found" (map show double) (the Double (-42)))
  putStrLn (erlDecodeDef "not found" (map show double) "string is not an double")
  putStrLn (erlDecodeDef "not found" (map show double) 42)

testAtom : IO ()
testAtom = do
  putStrLn "testAtom"
  putStrLn (erlDecodeDef "not found" (map show atom) (MkAtom "ok"))
  putStrLn (erlDecodeDef "not found" (map show atom) (MkAtom "error"))
  putStrLn (erlDecodeDef "not found" (map show atom) "string is not an atom")

testString : IO ()
testString = do
  putStrLn "testString"
  putStrLn (erlDecodeDef "not found" string binaryEx)
  putStrLn (erlDecodeDef "not found" string 42)

testPid : IO ()
testPid = do
  putStrLn "testPid"
  putStrLn (erlDecodeDef "not found" (map show pid) pidEx)
  putStrLn (erlDecodeDef "not found" (map show pid) "not a pid")

testReference : IO ()
testReference = do
  putStrLn "testReference"
  putStrLn (erlDecodeDef "not found" (map show reference) refEx)
  putStrLn (erlDecodeDef "not found" (map show reference) "not a ref")

testPort : IO ()
testPort = do
  putStrLn "testPort"
  putStrLn (erlDecodeDef "not found" (map show port) portEx)
  putStrLn (erlDecodeDef "not found" (map show port) "not a port")

testAnyMap : IO ()
testAnyMap = do
  putStrLn "testAnyMap"
  putStrLn (erlDecodeDef "not found" (map (const "found map") anyMap) mapEmpty)
  putStrLn (erlDecodeDef "not found" (map (const "found map") anyMap) mapEx1)
  putStrLn (erlDecodeDef "not found" (map (const "found map") anyMap) "not a map")

testAnyList : IO ()
testAnyList = do
  putStrLn "testAnyList"
  putStrLn (erlDecodeDef "not found" (map (const "found list") anyList) (the ErlNil []))
  putStrLn (erlDecodeDef "not found" (map (const "found list") anyList) (the (ErlCons _ _) (MkAtom "ok" :: 42)))
  putStrLn (erlDecodeDef "not found" (map (const "found list") anyList) "not a list")

testNil : IO ()
testNil = do
  putStrLn "testNil"
  putStrLn (erlDecodeDef "not found" (map (const "found nil") nil) (the ErlNil []))
  putStrLn (erlDecodeDef "not found" (map (const "found nil") nil) "not an empty list")

testCons : IO ()
testCons = do
  putStrLn "testCons"
  putStrLn (erlDecodeDef "not found" (map show (cons string string)) (the (ErlCons String String) ("a" :: "b")))
  putStrLn (erlDecodeDef "not found" (map show (cons string string)) "not a list cons")
  putStrLn (erlDecodeDef "not found" (map show (cons string integer)) (the (ErlCons String Integer) ("a" :: 42)))
  putStrLn (erlDecodeDef "not found" (map show (cons string nil)) (the (ErlCons String ErlNil) ["a"]))
  putStrLn (erlDecodeDef "not found" (map show (cons string (cons integer nil))) (the (ErlCons String (ErlCons Integer ErlNil)) ["a", 42]))

testList : IO ()
testList = do
  putStrLn "testList"
  putStrLn (erlDecodeDef "not found" (map show (list string)) (the (List String) []))
  putStrLn (erlDecodeDef "not found" (map show (list integer)) "not a list")
  putStrLn (erlDecodeDef "not found" (map show (list string)) (the (List _) ["first item", "second item"]))
  putStrLn (erlDecodeDef "not found" (map show (list integer)) (the (List _) [1, 2, 3]))
  putStrLn (erlDecodeDef "not found" (map show (list integer)) (the (List _) ["first item", "second item"]))

testHList : IO ()
testHList = do
  putStrLn "testHList"
  putStrLn (erlDecodeDef "not found" (map show (hList [string])) (the (ErlList _) ["first item"]))
  putStrLn (erlDecodeDef "not found" (map show (hList [string])) "not an hList")
  putStrLn (erlDecodeDef "not found" (map show (hList [string, integer])) (the (ErlList _) ["first item", 42]))
  putStrLn (erlDecodeDef "not found" (map show (hList [string])) (the (ErlList _) []))
  putStrLn (erlDecodeDef "not found" (map show (hList [string])) (the (ErlList _) ["a", "b"]))

testTuple : IO ()
testTuple = do
  putStrLn "testTuple"
  putStrLn (erlDecodeDef "not found" (map show tuple0) MkTuple0)
  putStrLn (erlDecodeDef "not found" (map show tuple0) "not an empty tuple")
  putStrLn (erlDecodeDef "not found" (map show (tuple1 any)) (MkTuple1 42))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 integer)) (MkTuple1 42))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 string)) (MkTuple1 "string inside 1-element tuple"))
  putStrLn (erlDecodeDef "not found" (map show (tuple1 any)) 42)
  putStrLn (erlDecodeDef "not found" (map show (tuple2 string string)) (MkTuple2 "first string" "second string"))
  putStrLn (erlDecodeDef "not found" (map show (tuple2 (exact (MkAtom "ok")) integer)) (MkTuple2 (MkAtom "ok") 42))
  putStrLn (erlDecodeDef "not found" (map show (tuple2 (exact (MkAtom "ok")) integer)) (MkTuple3 (MkAtom "ok") 42 "too long tuple"))

testMapEntry : IO ()
testMapEntry = do
  putStrLn "testMapEntry"
  putStrLn (erlDecodeDef "not found" (mapEntry "first" string) mapEx1)
  putStrLn (erlDecodeDef "not found" (mapEntry "second" string) mapEx1) -- Missing key
  putStrLn (erlDecodeDef "not found" (map show (mapEntry "first" integer)) mapEx1) -- Wrong type
  putStrLn (erlDecodeDef "not found" (mapEntry "first" string) mapEx2)

testMapEntries : IO ()
testMapEntries = do
  putStrLn "testMapEntries"
  putStrLn (erlDecodeDef "not found" (map (const "found map") (mapEntries [])) mapEx1)
  putStrLn (erlDecodeDef "not found" (map (const "found map") (mapEntries [])) "not a map")
  putStrLn (erlDecodeDef "not found" (map (\case [first] => show first) (mapEntries ["first" .= string])) mapEx1)
  putStrLn (erlDecodeDef "not found" (map (\case [first] => show first) (mapEntries ["first" .= string])) mapEx2)
  putStrLn (erlDecodeDef "not found" (map (\case [first, second] => show (first, second)) (mapEntries ["first" .= string, "second" .= integer])) mapEx1)
  putStrLn (erlDecodeDef "not found" (map (\case [first, second] => show (first, second)) (mapEntries ["first" .= string, "second" .= integer])) mapEx2)

testOptional : IO ()
testOptional = do
  putStrLn "testOptional"
  putStrLn (erlDecodeDef "not found" (map show (optional integer)) 42)
  putStrLn (erlDecodeDef "not found" (map show (optional integer)) "string is not an integer")

testIO : IO ()
testIO = do
  putStrLn "testIO"
  case erlDecode fun0 fun0Ex of
    Right fun0 => do
      Right fun0_res <- fun0
        | Left _ => putStrLn "exception"
      putStrLn (erlDecodeDef "not an integer" (map show integer) fun0_res)
    Left _ => putStrLn "not found"
  case erlDecode fun0 "not a function" of
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
  testString
  testPid
  testReference
  testPort
  testAnyMap
  testAnyList
  testNil
  testCons
  testList
  testHList
  testTuple
  testMapEntry
  testMapEntries
  testOptional
  testIO
