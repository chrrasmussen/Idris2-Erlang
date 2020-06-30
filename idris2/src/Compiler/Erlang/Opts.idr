module Compiler.Erlang.Opts

import Data.List
import Data.Strings
import Compiler.Erlang.Name


%default total


public export
data OutputFormat = AbstractFormat | Erlang | ErlangMinified | Beam

public export
record Opts where
  constructor MkOpts
  outputFormat : OutputFormat
  prefixStr : String
  inlineSize : Nat
  changedNamespaces : Maybe (List Namespace)

export
defaultOpts : Opts
defaultOpts = MkOpts Beam "Idris" 0 Nothing


data Flag
  = SetOutputFormat OutputFormat
  | SetPrefix String
  | SetInlineSize Nat
  | SetChangedNamespaces (List Namespace)

flagToOpts : Flag -> Opts -> Opts
flagToOpts (SetOutputFormat outputFormat) opts = record { outputFormat = outputFormat } opts
flagToOpts (SetPrefix prefixStr) opts = record { prefixStr = prefixStr } opts
flagToOpts (SetInlineSize inlineSize) opts = record { inlineSize = inlineSize } opts
flagToOpts (SetChangedNamespaces namespaces) opts = record { changedNamespaces = Just namespaces } opts

flagsToOpts : List Flag -> Opts
flagsToOpts flags = flagsToOpts' flags defaultOpts
  where
    flagsToOpts' : List Flag -> Opts -> Opts
    flagsToOpts' [] opts = opts
    flagsToOpts' (flag :: flags) opts = flagsToOpts' flags (flagToOpts flag opts)

splitNamespaces : String -> List Namespace
splitNamespaces namespaces = map toNamespace (splitOn ',' (unpack namespaces))
  where
    toNamespace : List Char -> Namespace
    toNamespace ns = reverse (map pack (splitOn '.' ns))

stringToFlags : String -> List Flag
stringToFlags str = parseFlags (assert_total (words str)) -- TODO: Remove `assert_total` when `words` is total
  where
    parseFlags : List String -> List Flag
    parseFlags [] = []
    parseFlags ("--format" :: "abstr" :: rest) = SetOutputFormat AbstractFormat :: parseFlags rest
    parseFlags ("--format" :: "erl" :: rest) = SetOutputFormat Erlang :: parseFlags rest
    parseFlags ("--format" :: "erl-minified" :: rest) = SetOutputFormat ErlangMinified :: parseFlags rest
    parseFlags ("--format" :: "beam" :: rest) = SetOutputFormat Beam :: parseFlags rest
    parseFlags ("--prefix" :: prefixStr :: rest) = SetPrefix prefixStr :: parseFlags rest
    parseFlags ("--inline" :: inlineSize :: rest) = SetInlineSize (integerToNat (cast inlineSize)) :: parseFlags rest
    parseFlags ("--changed" :: namespaces :: rest) = SetChangedNamespaces (splitNamespaces namespaces) :: parseFlags rest
    parseFlags (_ :: rest) = parseFlags rest

export
parseOpts : String -> Opts
parseOpts str = flagsToOpts (stringToFlags str)
