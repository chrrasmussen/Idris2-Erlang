module Erlang.Data.MutableStorageBuffer

import Erlang
import public Erlang.System.File


%default total


export
data Buffer : Type where [external]


export
newBuffer : HasIO io => Int -> io (Maybe Buffer)
newBuffer size = do
  MkRaw buf <- erlUnsafeCall (Raw Buffer) "mutable_storage" "buffer_new" [size]
  pure (Just buf)

-- might be needed if we do this in C...
export
freeBuffer : HasIO io => Buffer -> io ()
freeBuffer buf = pure ()

export
rawSize : HasIO io => Buffer -> io Int
rawSize buf = do
  erlUnsafeCall Int "mutable_storage" "buffer_raw_size" [MkRaw buf]

-- Assumes val is in the range 0-255
export
setByte : HasIO io => Buffer -> (loc : Int) -> (val : Int) -> io ()
setByte buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_bits8" [MkRaw buf, loc, val]

export
getByte : HasIO io => Buffer -> (loc : Int) -> io Int
getByte buf loc = do
  erlUnsafeCall Int "mutable_storage" "buffer_get_bits8" [MkRaw buf, loc]

export
setBits8 : HasIO io => Buffer -> (loc : Int) -> (val : Bits8) -> io ()
setBits8 buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_bits8" [MkRaw buf, loc, MkRaw val]

export
getBits8 : HasIO io => Buffer -> (loc : Int) -> io Bits8
getBits8 buf loc = do
  MkRaw val <- erlUnsafeCall (Raw Bits8) "mutable_storage" "buffer_get_bits8" [MkRaw buf, loc]
  pure val

export
setBits16 : HasIO io => Buffer -> (loc : Int) -> (val : Bits16) -> io ()
setBits16 buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_bits16" [MkRaw buf, loc, MkRaw val]

export
getBits16 : HasIO io => Buffer -> (loc : Int) -> io Bits16
getBits16 buf loc = do
  MkRaw val <- erlUnsafeCall (Raw Bits16) "mutable_storage" "buffer_get_bits16" [MkRaw buf, loc]
  pure val

export
setBits32 : HasIO io => Buffer -> (loc : Int) -> (val : Bits32) -> io ()
setBits32 buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_bits32" [MkRaw buf, loc, MkRaw val]

export
getBits32 : HasIO io => Buffer -> (loc : Int) -> io Bits32
getBits32 buf loc = do
  MkRaw val <- erlUnsafeCall (Raw Bits32) "mutable_storage" "buffer_get_bits32" [MkRaw buf, loc]
  pure val

export
setBits64 : HasIO io => Buffer -> (loc : Int) -> (val : Bits64) -> io ()
setBits64 buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_bits64" [MkRaw buf, loc, MkRaw val]

export
getBits64 : HasIO io => Buffer -> (loc : Int) -> io Bits64
getBits64 buf loc = do
  MkRaw val <- erlUnsafeCall (Raw Bits64) "mutable_storage" "buffer_get_bits64" [MkRaw buf, loc]
  pure val

export
setInt32 : HasIO io => Buffer -> (loc : Int) -> (val : Int) -> io ()
setInt32 buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_int32" [MkRaw buf, loc, val]

export
getInt32 : HasIO io => Buffer -> (loc : Int) -> io Int
getInt32 buf loc = do
  erlUnsafeCall Int "mutable_storage" "buffer_get_int32" [MkRaw buf, loc]

export
setInt : HasIO io => Buffer -> (loc : Int) -> (val : Int) -> io ()
setInt buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_int64" [MkRaw buf, loc, val]

export
getInt : HasIO io => Buffer -> (loc : Int) -> io Int
getInt buf loc = do
  erlUnsafeCall Int "mutable_storage" "buffer_get_int64" [MkRaw buf, loc]

export
setDouble : HasIO io => Buffer -> (loc : Int) -> (val : Double) -> io ()
setDouble buf loc val = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_double" [MkRaw buf, loc, val]

export
getDouble : HasIO io => Buffer -> (loc : Int) -> io Double
getDouble buf loc = do
  erlUnsafeCall Double "mutable_storage" "buffer_get_double" [MkRaw buf, loc]

export
stringByteLength : String -> Int
stringByteLength str =
  erlUnsafeCallPure Int "erlang" "byte_size" [str]

export
setString : HasIO io => Buffer -> (loc : Int) -> (val : String) -> io ()
setString buf loc val = do
  binary <- erlUnsafeCall String "erlang" "iolist_to_binary" [val]
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_set_binary" [MkRaw buf, loc, binary]

export
getString : HasIO io => Buffer -> (loc : Int) -> (len : Int) -> io String
getString buf loc len = do
  erlUnsafeCall String "mutable_storage" "buffer_get_binary" [MkRaw buf, loc, len]

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
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_copy" [MkRaw src, start, len, MkRaw dest, loc]

-- Create a new buffer by reading all the contents from the given file
-- Fails if no bytes can be read or buffer can't be created
export
createBufferFromFile : HasIO io => (filePath : String) -> io (Either FileError Buffer)
createBufferFromFile filePath = do
  result <- erlUnsafeCall ErlTerm "file" "read_file" [filePath]
  let Right str = erlDecode (okTuple string) result
    | _ => pure (Left FileReadError)
  let strSize = erlUnsafeCallPure Int "erlang" "byte_size" [str]
  Just buf <- newBuffer strSize
    | Nothing => pure (Left FileReadError)
  setString buf 0 str
  pure (Right buf)

-- TODO: `maxbytes` is unused
export
writeBufferToFile : HasIO io => (filePath : String) -> Buffer -> (maxbytes : Int) -> io (Either FileError ())
writeBufferToFile filePath buf maxBytes = do
  size <- rawSize buf
  bin <- getString buf 0 (min size maxBytes)
  result <- erlUnsafeCall ErlTerm "file" "write_file" [filePath, bin]
  pure $ erlDecodeDef (Left FileWriteError) (exact (MkAtom "ok") *> pure (Right ())) result

export
resizeBuffer : HasIO io => Buffer -> Int -> io (Maybe Buffer)
resizeBuffer buf newSize = do
  ignore $ erlUnsafeCall ErlTerm "mutable_storage" "buffer_resize" [MkRaw buf, newSize]
  pure (Just buf)
