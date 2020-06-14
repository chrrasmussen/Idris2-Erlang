module Erlang.Data.Buffer

import Erlang
import public Erlang.System.File


BufferPayload : Type
BufferPayload = ErlTuple2 ErlBinary Int

%extern prim__erlBufferNew       : (size : Int) -> BufferPayload
%extern prim__erlBufferSetByte   : (buf : BufferPayload) -> (loc : Int) -> (value : Int) -> BufferPayload
%extern prim__erlBufferGetByte   : (buf : BufferPayload) -> (loc : Int) -> Int
%extern prim__erlBufferSetBits8  : (buf : BufferPayload) -> (loc : Int) -> (value : Bits8) -> BufferPayload
%extern prim__erlBufferGetBits8  : (buf : BufferPayload) -> (loc : Int) -> Bits8
%extern prim__erlBufferSetBits16 : (buf : BufferPayload) -> (loc : Int) -> (value : Bits16) -> BufferPayload
%extern prim__erlBufferGetBits16 : (buf : BufferPayload) -> (loc : Int) -> Bits16
%extern prim__erlBufferSetBits32 : (buf : BufferPayload) -> (loc : Int) -> (value : Bits32) -> BufferPayload
%extern prim__erlBufferGetBits32 : (buf : BufferPayload) -> (loc : Int) -> Bits32
%extern prim__erlBufferSetBits64 : (buf : BufferPayload) -> (loc : Int) -> (value : Bits64) -> BufferPayload
%extern prim__erlBufferGetBits64 : (buf : BufferPayload) -> (loc : Int) -> Bits64
%extern prim__erlBufferSetInt32  : (buf : BufferPayload) -> (loc : Int) -> (value : Int) -> BufferPayload
%extern prim__erlBufferGetInt32  : (buf : BufferPayload) -> (loc : Int) -> Int
%extern prim__erlBufferSetInt64  : (buf : BufferPayload) -> (loc : Int) -> (value : Int) -> BufferPayload
%extern prim__erlBufferGetInt64  : (buf : BufferPayload) -> (loc : Int) -> Int
%extern prim__erlBufferSetDouble : (buf : BufferPayload) -> (loc : Int) -> (value : Double) -> BufferPayload
%extern prim__erlBufferGetDouble : (buf : BufferPayload) -> (loc : Int) -> Double
%extern prim__erlBufferSetString : (buf : BufferPayload) -> (loc : Int) -> (value : String) -> BufferPayload
%extern prim__erlBufferGetString : (buf : BufferPayload) -> (loc : Int) -> (len : Int) -> String


export
data Buffer : Type where
  MkBuffer : ErlReference -> Buffer


%inline
getBufferPayload : Buffer -> IO BufferPayload
getBufferPayload (MkBuffer ref) =
  erlUnsafeCall BufferPayload "erlang" "get" [ref]

%inline
setBufferPayload : Buffer -> BufferPayload -> IO ()
setBufferPayload (MkBuffer ref) content = do
  erlUnsafeCall ErlTerm "erlang" "put" [ref, content]
  pure ()

%inline
updateBufferPayload : Buffer -> (BufferPayload -> BufferPayload) -> IO ()
updateBufferPayload buf updateFn = do
  old <- getBufferPayload buf
  setBufferPayload buf (updateFn old)


export
newBuffer : Int -> IO (Maybe Buffer)
newBuffer size = do
  ref <- erlUnsafeCall ErlReference "erlang" "make_ref" []
  let payload = prim__erlBufferNew size
  let buf = MkBuffer ref
  setBufferPayload buf payload
  pure $ Just buf

-- might be needed if we do this in C...
export
freeBuffer : Buffer -> IO ()
freeBuffer buf = pure ()

export
rawSize : Buffer -> IO Int
rawSize buf@(MkBuffer ref) = do
  MkTuple2 _ size <- getBufferPayload buf
  pure size

-- Assumes val is in the range 0-255
export
setByte : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setByte buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetByte payload loc val)

export
getByte : Buffer -> (loc : Int) -> IO Int
getByte buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetByte payload loc

export
setBits8 : Buffer -> (loc : Int) -> (val : Bits8) -> IO ()
setBits8 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits8 payload loc val)

export
getBits8 : Buffer -> (loc : Int) -> IO Bits8
getBits8 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits8 payload loc

export
setBits16 : Buffer -> (loc : Int) -> (val : Bits16) -> IO ()
setBits16 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits16 payload loc val)

export
getBits16 : Buffer -> (loc : Int) -> IO Bits16
getBits16 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits16 payload loc

export
setBits32 : Buffer -> (loc : Int) -> (val : Bits32) -> IO ()
setBits32 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits32 payload loc val)

export
getBits32 : Buffer -> (loc : Int) -> IO Bits32
getBits32 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits32 payload loc

export
setBits64 : Buffer -> (loc : Int) -> (val : Bits64) -> IO ()
setBits64 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits64 payload loc val)

export
getBits64 : Buffer -> (loc : Int) -> IO Bits64
getBits64 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits64 payload loc

export
setInt32 : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setInt32 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetInt32 payload loc val)

export
getInt32 : Buffer -> (loc : Int) -> IO Int
getInt32 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetInt32 payload loc

export
setInt : Buffer -> (loc : Int) -> (val : Int) -> IO ()
setInt buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetInt64 payload loc val)

export
getInt : Buffer -> (loc : Int) -> IO Int
getInt buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetInt64 payload loc

export
setDouble : Buffer -> (loc : Int) -> (val : Double) -> IO ()
setDouble buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetDouble payload loc val)

export
getDouble : Buffer -> (loc : Int) -> IO Double
getDouble buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetDouble payload loc

export
stringByteLength : String -> Int
stringByteLength str = unsafePerformIO $ do
  binary <- erlUnsafeCall ErlTerm "erlang" "iolist_to_binary" [str]
  erlUnsafeCall Int "erlang" "byte_size" [binary]

export
setString : Buffer -> (loc : Int) -> (val : String) -> IO ()
setString buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetString payload loc val)

export
getString : Buffer -> (loc : Int) -> (len : Int) -> IO String
getString buf loc len = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetString payload loc len

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
  ref <- erlUnsafeCall ErlReference "erlang" "make_ref" []
  erlUnsafeCall ErlTerm "erlang" "put" [ref, MkTuple2 str strSize]
  pure (Right (MkBuffer ref))

-- TODO: `maxbytes` is unused
export
writeBufferToFile : (filePath : String) -> Buffer -> (maxbytes : Int) -> IO (Either FileError ())
writeBufferToFile filePath buf@(MkBuffer ref) maxBytes = do
  MkTuple2 binary _ <- getBufferPayload buf
  result <- erlUnsafeCall ErlTerm "file" "write_file" [MkBinary filePath, binary]
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
