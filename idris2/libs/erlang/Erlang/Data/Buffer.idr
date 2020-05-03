module Erlang.Data.Buffer

import Erlang
import Erlang.System.File


%default total


%extern prim__erlBufferNew : (size : Int) -> ErlBinary
%extern prim__erlBufferSetByte : (bin : ErlBinary) -> (loc : Int) -> (value : Int) -> ErlBinary
%extern prim__erlBufferGetByte : (bin : ErlBinary) -> (loc : Int) -> Int
%extern prim__erlBufferSetInt : (bin : ErlBinary) -> (loc : Int) -> (value : Int) -> ErlBinary
%extern prim__erlBufferGetInt : (bin : ErlBinary) -> (loc : Int) -> Int
%extern prim__erlBufferSetDouble : (bin : ErlBinary) -> (loc : Int) -> (value : Double) -> ErlBinary
%extern prim__erlBufferGetDouble : (bin : ErlBinary) -> (loc : Int) -> Double
%extern prim__erlBufferSetString : (bin : ErlBinary) -> (loc : Int) -> (value : String) -> ErlBinary
%extern prim__erlBufferGetString : (bin : ErlBinary) -> (loc : Int) -> (len : Int) -> String


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
  ref <- erlUnsafeCall ErlTerm "erlang" "make_ref" []
  let emptyBinary = prim__erlBufferNew size
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
  updateBinary buf (\bin => prim__erlBufferSetByte bin loc val)

export
getByte : Buffer -> (loc : Int) -> IO Int
getByte buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetByte bin loc

export
setInt : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setInt buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetInt bin loc val)

export
getInt : Buffer -> (loc : Int) -> IO Int
getInt buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetInt bin loc

export
setDouble : Buffer -> (loc : Int) -> (val : Double) -> IO ()
setDouble buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetDouble bin loc val)

export
getDouble : Buffer -> (loc : Int) -> IO Double
getDouble buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetDouble bin loc

export
setString : Buffer -> (loc : Int) -> (val : String) -> IO ()
setString buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetString bin loc val)

export
getString : Buffer -> (loc : Int) -> (len : Int) -> IO String
getString buf loc len = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetString bin loc len

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

export
readBufferFromFile : BinaryFile -> Buffer -> (maxbytes : Int) -> IO (Either FileError Buffer)
readBufferFromFile (FHandle h) buf@(MkBuffer ref size loc) maxBytes = do
  let remainingBytesInBuffer = size - loc
  Right result <- erlCall "file" "read" [h, maxBytes]
    | Left _ => pure (Left FileReadError)
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
  Right binaryToBeWritten <- erlCall "binary" "part" [binary, MkErlTuple2 loc max']
    | Left _ => pure (Left FileWriteError)
  Right result <- erlCall "file" "write" [h, binaryToBeWritten]
    | Left _ => pure (Left FileWriteError)
  pure $ erlCase (Left FileWriteError) [map (const (Right (MkBuffer ref size (loc + max')))) (MExact (MkErlAtom "ok"))] result
