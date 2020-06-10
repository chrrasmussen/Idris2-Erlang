module Erlang.Data.Buffer

import Erlang
import public Erlang.System.File


%extern prim__erlBufferNew : (size : Int) -> ErlBinary
%extern prim__erlBufferSetByte : (bin : ErlBinary) -> (loc : Int) -> (value : Int) -> ErlBinary
%extern prim__erlBufferGetByte : (bin : ErlBinary) -> (loc : Int) -> Int
%extern prim__erlBufferSetBits8 : (bin : ErlBinary) -> (loc : Int) -> (value : Bits8) -> ErlBinary
%extern prim__erlBufferGetBits8 : (bin : ErlBinary) -> (loc : Int) -> Bits8
%extern prim__erlBufferSetBits16 : (bin : ErlBinary) -> (loc : Int) -> (value : Bits16) -> ErlBinary
%extern prim__erlBufferGetBits16 : (bin : ErlBinary) -> (loc : Int) -> Bits16
%extern prim__erlBufferSetBits32 : (bin : ErlBinary) -> (loc : Int) -> (value : Bits32) -> ErlBinary
%extern prim__erlBufferGetBits32 : (bin : ErlBinary) -> (loc : Int) -> Bits32
%extern prim__erlBufferSetBits64 : (bin : ErlBinary) -> (loc : Int) -> (value : Bits64) -> ErlBinary
%extern prim__erlBufferGetBits64 : (bin : ErlBinary) -> (loc : Int) -> Bits64
%extern prim__erlBufferSetInt32 : (bin : ErlBinary) -> (loc : Int) -> (value : Int) -> ErlBinary
%extern prim__erlBufferGetInt32 : (bin : ErlBinary) -> (loc : Int) -> Int
%extern prim__erlBufferSetInt64 : (bin : ErlBinary) -> (loc : Int) -> (value : Int) -> ErlBinary
%extern prim__erlBufferGetInt64 : (bin : ErlBinary) -> (loc : Int) -> Int
%extern prim__erlBufferSetDouble : (bin : ErlBinary) -> (loc : Int) -> (value : Double) -> ErlBinary
%extern prim__erlBufferGetDouble : (bin : ErlBinary) -> (loc : Int) -> Double
%extern prim__erlBufferSetString : (bin : ErlBinary) -> (loc : Int) -> (value : String) -> ErlBinary
%extern prim__erlBufferGetString : (bin : ErlBinary) -> (loc : Int) -> (len : Int) -> String


export
data Buffer : Type where
  MkBuffer : ErlTerm -> (size : Int) -> (loc : Int) -> Buffer


etsKey : ErlAtom
etsKey = MkAtom "$idris_rts_ets"


getBinary : Buffer -> IO ErlBinary
getBinary (MkBuffer ref _ _) =
  erlUnsafeCall ErlBinary "ets" "lookup_element" [etsKey, ref, 2]

setBinary : Buffer -> ErlBinary -> IO ()
setBinary (MkBuffer ref _ _) binary = do
  erlCall "ets" "insert" [etsKey, MkTuple2 ref binary]
  pure ()

updateBinary : Buffer -> (ErlBinary -> ErlBinary) -> IO ()
updateBinary buf updateFn = do
  old <- getBinary buf
  setBinary buf (updateFn old)


export
newBuffer : Int -> IO (Maybe Buffer)
newBuffer size = do
  ref <- erlUnsafeCall ErlTerm "erlang" "make_ref" []
  let emptyBinary = prim__erlBufferNew size
  erlCall "ets" "insert" [etsKey, MkTuple2 ref emptyBinary]
  pure $ Just (MkBuffer ref size 0)

-- might be needed if we do this in C...
export
freeBuffer : Buffer -> IO ()
freeBuffer buf = pure ()

export
rawSize : Buffer -> IO Int
rawSize buf@(MkBuffer ref _ _) = do
  binary <- getBinary buf
  erlUnsafeCall Int "erlang" "byte_size" [binary]

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
setBits8 : Buffer -> (loc : Int) -> (val : Bits8) -> IO ()
setBits8 buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetBits8 bin loc val)

export
getBits8 : Buffer -> (loc : Int) -> IO Bits8
getBits8 buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetBits8 bin loc

export
setBits16 : Buffer -> (loc : Int) -> (val : Bits16) -> IO ()
setBits16 buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetBits16 bin loc val)

export
getBits16 : Buffer -> (loc : Int) -> IO Bits16
getBits16 buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetBits16 bin loc

export
setBits32 : Buffer -> (loc : Int) -> (val : Bits32) -> IO ()
setBits32 buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetBits32 bin loc val)

export
getBits32 : Buffer -> (loc : Int) -> IO Bits32
getBits32 buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetBits32 bin loc

export
setBits64 : Buffer -> (loc : Int) -> (val : Bits64) -> IO ()
setBits64 buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetBits64 bin loc val)

export
getBits64 : Buffer -> (loc : Int) -> IO Bits64
getBits64 buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetBits64 bin loc

export
setInt32 : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setInt32 buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetInt32 bin loc val)

export
getInt32 : Buffer -> (loc : Int) -> IO Int
getInt32 buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetInt32 bin loc

export
setInt : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setInt buf loc val = do
  updateBinary buf (\bin => prim__erlBufferSetInt64 bin loc val)

export
getInt : Buffer -> (loc : Int) -> IO Int
getInt buf loc = do
  bin <- getBinary buf
  pure $ prim__erlBufferGetInt64 bin loc

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
stringByteLength : String -> Int
stringByteLength str = unsafePerformIO $ do
  binary <- erlUnsafeCall ErlTerm "erlang" "iolist_to_binary" [str]
  erlUnsafeCall Int "erlang" "byte_size" [binary]

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
copyData : (src : Buffer) -> (start, len : Int) -> (dest : Buffer) -> (loc : Int) -> IO ()
copyData src start len dest loc = do
  srcBinary <- getString src start len
  setString dest loc srcBinary

-- Create a new buffer by reading all the contents from the given file
-- Fails if no bytes can be read or buffer can't be created
export
createBufferFromFile : (filePath : String) -> IO (Either FileError Buffer)
createBufferFromFile filePath = do
  result <- erlUnsafeCall ErlTerm "file" "read_file" [MkBinary filePath]
  let Right (MkTuple2 _ (MkBinary str)) = erlDecode (tuple2 (exact (MkAtom "ok")) binary) result
    | _ => pure (Left FileReadError)
  strSize <- erlUnsafeCall Int "erlang" "byte_size" [str]
  ref <- erlUnsafeCall ErlTerm "erlang" "make_ref" []
  erlCall "ets" "insert" [etsKey, MkTuple2 ref str]
  pure (Right (MkBuffer ref strSize 0))

-- TODO: `maxbytes` is unused
export
writeBufferToFile : (filePath : String) -> Buffer -> (maxbytes : Int) -> IO (Either FileError ())
writeBufferToFile filePath buf@(MkBuffer ref size loc) maxBytes = do
  bin <- getBinary buf
  result <- erlUnsafeCall ErlTerm "file" "write_file" [MkBinary filePath, bin]
  pure $ erlDecodeDef (Left FileWriteError) (exact (MkAtom "ok") *> pure (Right ())) result

export
resizeBuffer : Buffer -> Int -> IO (Maybe Buffer)
resizeBuffer old newsize = do
  Just buf <- newBuffer newsize
    | Nothing => pure Nothing
  -- If the new buffer is smaller than the old one, just copy what
  -- fits
  oldsize <- rawSize old
  let len = if newsize < oldsize then newsize else oldsize
  copyData old 0 len buf 0
  freeBuffer old
  pure (Just buf)
