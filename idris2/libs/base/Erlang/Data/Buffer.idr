module Erlang.Data.Buffer

import System.File
import Erlang

export
data Buffer : Type where
  MkBuffer : ErlTerm -> (size : Int) -> (loc : Int) -> Buffer


etsKey : ErlAtom
etsKey = MkErlAtom "$idris_rts_ets"


getBinary : Buffer -> IO ErlBinary
getBinary (MkBuffer ref _ _) =
  erlUnsafeCall ErlBinary "ets" "lookup_element" [etsKey, ref, 2]

setBinary : Buffer -> ErlBinary -> IO ()
setBinary (MkBuffer ref _ _) binary = do
  erlCall "ets" "insert" [etsKey, MkErlTuple2 ref binary]
  pure ()

updateBinary : Buffer -> (ErlBinary -> ErlBinary) -> IO ()
updateBinary buf updateFn = do
  old <- getBinary buf
  setBinary buf (updateFn old)


export
newBuffer : Int -> IO Buffer
newBuffer size = do
  ref <- erlCall "erlang" "make_ref" []
  emptyBinary <- erlUnsafeCall ErlBinary "Idris.RTS-Internal" "buffer_new" [size]
  erlCall "ets" "insert" [etsKey, MkErlTuple2 ref emptyBinary]
  pure (MkBuffer ref size 0)

export
rawSize : Buffer -> IO Int
rawSize buf@(MkBuffer ref _ _) = do
  binary <- getBinary buf
  erlUnsafeCall Int "erlang" "byte_size" [binary]

export
size : Buffer -> Int
size (MkBuffer _ s _) = s

-- Assumes val is in the range 0-255
export
setByte : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setByte buf loc val = do
  updateBinary buf (unsafePerformIO . erlSetByte)
  where
    erlSetByte : ErlBinary -> IO ErlBinary
    erlSetByte binary = erlUnsafeCall ErlBinary "Idris.RTS-Internal" "buffer_set_byte" [binary, loc, val]

export
getByte : Buffer -> (loc : Int) -> IO Int
getByte buf loc = do
  binary <- getBinary buf
  erlUnsafeCall Int "Idris.RTS-Internal" "buffer_get_byte" [binary, loc]

export
setInt : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setInt buf loc val = do
  updateBinary buf (unsafePerformIO . erlSetInt)
  where
    erlSetInt : ErlBinary -> IO ErlBinary
    erlSetInt binary = erlUnsafeCall ErlBinary "Idris.RTS-Internal" "buffer_set_int" [binary, loc, val]

export
getInt : Buffer -> (loc : Int) -> IO Int
getInt buf loc = do
  binary <- getBinary buf
  erlUnsafeCall Int "Idris.RTS-Internal" "buffer_get_int" [binary, loc]

export
setDouble : Buffer -> (loc : Int) -> (val : Double) -> IO ()
setDouble buf loc val = do
  updateBinary buf (unsafePerformIO . erlSetDouble)
  where
    erlSetDouble : ErlBinary -> IO ErlBinary
    erlSetDouble binary = erlUnsafeCall ErlBinary "Idris.RTS-Internal" "buffer_set_double" [binary, loc, val]

export
getDouble : Buffer -> (loc : Int) -> IO Double
getDouble buf loc = do
  binary <- getBinary buf
  erlUnsafeCall Double "Idris.RTS-Internal" "buffer_get_double" [binary, loc]

export
setString : Buffer -> (loc : Int) -> (val : String) -> IO ()
setString buf loc val = do
  updateBinary buf (unsafePerformIO . erlSetString)
  where
    erlSetString : ErlBinary -> IO ErlBinary
    erlSetString binary = erlUnsafeCall ErlBinary "Idris.RTS-Internal" "buffer_set_string" [binary, loc, val]

export
getString : Buffer -> (loc : Int) -> (len : Int) -> IO String
getString buf loc len = do
  binary <- getBinary buf
  erlUnsafeCall String "Idris.RTS-Internal" "buffer_get_string" [binary, loc, len]

export
bufferData : Buffer -> IO (List Int)
bufferData buf = do
  len <- rawSize buf
  unpackTo [] len
  where
    unpackTo : List Int -> Int -> IO (List Int)
    unpackTo acc 0 = pure acc
    unpackTo acc loc = do
      val <- getByte buf (loc - 1)
      unpackTo (val :: acc) (loc - 1)

filePtrToErlTerm : FilePtr -> ErlTerm
filePtrToErlTerm = believe_me

export
readBufferFromFile : BinaryFile -> Buffer -> (maxbytes : Int) -> IO (Either FileError Buffer)
readBufferFromFile (FHandle h) buf@(MkBuffer ref size loc) maxBytes = do
  let remainingBytesInBuffer = size - loc
  result <- erlCall "file" "read" [filePtrToErlTerm h, maxBytes]
  let Just (MkErlBinary str) = erlCase Nothing [map Just (MTuple [MExact (MkErlAtom "ok"), MBinary] (\ok, binary => binary))] result
    | _ => pure (Left FileReadError)
  strSize <- erlUnsafeCall Int "erlang" "byte_size" [str]
  if strSize <= remainingBytesInBuffer
    then do
      setString buf loc str
      pure (Right (MkBuffer ref size (loc + strSize)))
    else
      pure (Left FileReadError)

export
writeBufferToFile : BinaryFile -> Buffer -> (maxbytes : Int) -> IO (Either FileError Buffer)
writeBufferToFile (FHandle h) buf@(MkBuffer ref size loc) maxBytes = do
  let remainingBytesInBuffer = size - loc
  let max' = if remainingBytesInBuffer < maxBytes then remainingBytesInBuffer else maxBytes
  binary <- getBinary buf
  binaryToBeWritten <- erlCall "binary" "part" [binary, MkErlTuple2 loc max']
  result <- erlCall "file" "write" [filePtrToErlTerm h, binaryToBeWritten]
  pure $ erlCase (Left FileWriteError) [map (const (Right (MkBuffer ref size (loc + max')))) (MExact (MkErlAtom "ok"))] result
