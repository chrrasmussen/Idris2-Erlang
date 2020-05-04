module Erlang.Data.Map

import Erlang.Data
import Erlang.Data.Decode
import Erlang.IO


%default total


export
empty : ErlMap
empty = unsafePerformIO $ erlUnsafeCall ErlMap "maps" "new" []

export
lookup : ErlType key => key -> ErlDecoder a -> ErlMap -> Maybe a
lookup key decoder m = erlDecodeMay (mapEntry key decoder) m

export
insert : (ErlType key, ErlType value) => key -> value -> ErlMap -> ErlMap
insert key value m = unsafePerformIO $ erlUnsafeCall ErlMap "maps" "put" [key, value, m]

export
delete : ErlType key => key -> ErlMap -> ErlMap
delete key m = unsafePerformIO $ erlUnsafeCall ErlMap "maps" "remove" [key, m]

size : ErlMap -> Integer
size m = unsafePerformIO $ erlUnsafeCall Integer "maps" "size" [m]
