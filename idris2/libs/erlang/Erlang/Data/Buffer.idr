module Erlang.Data.Buffer

import Erlang
import public Erlang.System.File


%default total


BufferPayload : Type
BufferPayload = ErlTuple2 String Int

%extern prim__erlBufferNew       : (size : Int) -> BufferPayload
%extern prim__erlBufferResize    : (buf : BufferPayload) -> (newSize : Int) -> BufferPayload
%extern prim__erlBufferFlatten   : (buf : BufferPayload) -> (maxbytes : Int) -> BufferPayload
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
getBufferPayload : HasIO io => Buffer -> io BufferPayload
getBufferPayload (MkBuffer ref) =
  pure $ erlUnsafeCall BufferPayload "erlang" "get" [ref]

%inline
setBufferPayload : HasIO io => Buffer -> BufferPayload -> io ()
setBufferPayload (MkBuffer ref) content = do
  ignore $ pure $ erlUnsafeCall ErlTerm "erlang" "put" [ref, content]

%inline
updateBufferPayload : HasIO io => Buffer -> (BufferPayload -> BufferPayload) -> io ()
updateBufferPayload buf updateFn = do
  old <- getBufferPayload buf
  setBufferPayload buf (updateFn old)


export
newBuffer : HasIO io => Int -> io (Maybe Buffer)
newBuffer size = do
  ref <- pure $ erlUnsafeCall ErlReference "erlang" "make_ref" []
  let payload = prim__erlBufferNew size
  let buf = MkBuffer ref
  setBufferPayload buf payload
  pure $ Just buf

-- might be needed if we do this in C...
export
freeBuffer : HasIO io => Buffer -> io ()
freeBuffer buf = pure ()

export
rawSize : HasIO io => Buffer -> io Int
rawSize buf = do
  MkTuple2 _ size <- getBufferPayload buf
  pure size

flatten : HasIO io => Buffer -> (maxbytes : Int) -> io ()
flatten buf maxbytes = do
  updateBufferPayload buf (\payload => prim__erlBufferFlatten payload maxbytes)

-- Assumes val is in the range 0-255
export
setByte : HasIO io => Buffer -> (loc : Int) -> (val : Int) -> io ()
setByte buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetByte payload loc val)

export
getByte : HasIO io => Buffer -> (loc : Int) -> io Int
getByte buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetByte payload loc

export
setBits8 : HasIO io => Buffer -> (loc : Int) -> (val : Bits8) -> io ()
setBits8 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits8 payload loc val)

export
getBits8 : HasIO io => Buffer -> (loc : Int) -> io Bits8
getBits8 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits8 payload loc

export
setBits16 : HasIO io => Buffer -> (loc : Int) -> (val : Bits16) -> io ()
setBits16 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits16 payload loc val)

export
getBits16 : HasIO io => Buffer -> (loc : Int) -> io Bits16
getBits16 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits16 payload loc

export
setBits32 : HasIO io => Buffer -> (loc : Int) -> (val : Bits32) -> io ()
setBits32 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits32 payload loc val)

export
getBits32 : HasIO io => Buffer -> (loc : Int) -> io Bits32
getBits32 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits32 payload loc

export
setBits64 : HasIO io => Buffer -> (loc : Int) -> (val : Bits64) -> io ()
setBits64 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetBits64 payload loc val)

export
getBits64 : HasIO io => Buffer -> (loc : Int) -> io Bits64
getBits64 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetBits64 payload loc

export
setInt32 : HasIO io => Buffer -> (loc : Int) -> (val : Int) -> io ()
setInt32 buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetInt32 payload loc val)

export
getInt32 : HasIO io => Buffer -> (loc : Int) -> io Int
getInt32 buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetInt32 payload loc

export
setInt : HasIO io => Buffer -> (loc : Int) -> (val : Int) -> io ()
setInt buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetInt64 payload loc val)

export
getInt : HasIO io => Buffer -> (loc : Int) -> io Int
getInt buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetInt64 payload loc

export
setDouble : HasIO io => Buffer -> (loc : Int) -> (val : Double) -> io ()
setDouble buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetDouble payload loc val)

export
getDouble : HasIO io => Buffer -> (loc : Int) -> io Double
getDouble buf loc = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetDouble payload loc

export
stringByteLength : String -> Int
stringByteLength str =
  erlUnsafeCall Int "erlang" "byte_size" [str]

export
setString : HasIO io => Buffer -> (loc : Int) -> (val : String) -> io ()
setString buf loc val = do
  updateBufferPayload buf (\payload => prim__erlBufferSetString payload loc val)

export
getString : HasIO io => Buffer -> (loc : Int) -> (len : Int) -> io String
getString buf loc len = do
  payload <- getBufferPayload buf
  pure $ prim__erlBufferGetString payload loc len

export covering
bufferData : HasIO io => Buffer -> io (List Int)
bufferData buf = do
  len <- rawSize buf
  unpackTo [] len
  where
    covering
    unpackTo : List Int -> Int -> io (List Int)
    unpackTo acc 0 = pure acc
    unpackTo acc loc = do
      val <- getByte buf (loc - 1)
      unpackTo (val :: acc) (loc - 1)

export
copyData : HasIO io => (src : Buffer) -> (start, len : Int) -> (dest : Buffer) -> (loc : Int) -> io ()
copyData src start len dest loc = do
  srcBinary <- getString src start len
  setString dest loc srcBinary

-- Create a new buffer by reading all the contents from the given file
-- Fails if no bytes can be read or buffer can't be created
export
createBufferFromFile : HasIO io => (filePath : String) -> io (Either FileError Buffer)
createBufferFromFile filePath = do
  result <- pure $ erlUnsafeCall ErlTerm "file" "read_file" [filePath]
  let Right str = erlDecode (okTuple string) result
    | _ => pure (Left FileReadError)
  let strSize = erlUnsafeCall Int "erlang" "byte_size" [str]
  ref <- pure $ erlUnsafeCall ErlReference "erlang" "make_ref" []
  ignore $ pure $ erlUnsafeCall ErlTerm "erlang" "put" [ref, MkTuple2 str strSize]
  pure (Right (MkBuffer ref))

-- TODO: `maxbytes` is unused
export
writeBufferToFile : HasIO io => (filePath : String) -> Buffer -> (maxbytes : Int) -> io (Either FileError ())
writeBufferToFile filePath buf maxbytes = do
  flatten buf maxbytes
  MkTuple2 binary _ <- getBufferPayload buf
  result <- pure $ erlUnsafeCall ErlTerm "file" "write_file" [filePath, binary]
  pure $ erlDecodeDef (Left FileWriteError) (exact (MkAtom "ok") *> pure (Right ())) result

export
resizeBuffer : HasIO io => Buffer -> Int -> io (Maybe Buffer)
resizeBuffer buf newSize = do
  updateBufferPayload buf (\payload => prim__erlBufferResize payload newSize)
  pure $ Just buf
