module Compiler.Erlang.Codegen.PrimTermToString

import Data.List
import Compiler.Erlang.IR.PrimTerm
import Compiler.Erlang.Utils.CompositeString
import Compiler.Erlang.Utils.String


%default total


export
genPrimTerm : PrimTerm -> CompositeString
genPrimTerm (PAtom str) = Nested [Str "'", Str (escapeString (unpack str) ""), Str "'"]
genPrimTerm (PChar x) = Nested [Str "$", Str (escapeChar x "")]
genPrimTerm (PFloat x) = Str (showDouble x)
genPrimTerm (PInteger x) = Str (show x)
genPrimTerm (PTuple xs) = Nested [Str "{", Nested $ intersperse (Str ",") (assert_total (map genPrimTerm xs)), Str "}"]
genPrimTerm (PList xs) = Nested [Str "[", Nested $ intersperse (Str ",") (assert_total (map genPrimTerm xs)), Str "]"]
genPrimTerm (PCharlist str) = Nested [Str "\"", Str (escapeString (unpack str) ""), Str "\""]
