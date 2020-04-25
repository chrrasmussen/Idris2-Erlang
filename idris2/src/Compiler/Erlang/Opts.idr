module Compiler.Erlang.Opts

import Compiler.Erlang.Name


%default total


public export
data OutputFormat = AbstractFormat | Erlang | Beam

public export
record Opts where
  constructor MkOpts
  outputFormat : OutputFormat
  prefix : String
  generateAsLibrary : Bool
  changedNamespaces : Maybe (List Namespace)

export
defaultOpts : Opts
defaultOpts = MkOpts Beam "Idris" False Nothing


data Flag
  = SetOutputFormat OutputFormat
  | SetPrefix String
  | SetGenerateAsLibrary
  | SetChangedNamespaces (List Namespace)

flagsToOpts : List Flag -> Opts
flagsToOpts flags = flagsToOpts' flags defaultOpts
  where
    flagsToOpts' : List Flag -> Opts -> Opts
    flagsToOpts' [] opts = opts
    flagsToOpts' (SetOutputFormat outputFormat :: rest) opts = record { outputFormat = outputFormat } (flagsToOpts' rest opts)
    flagsToOpts' (SetPrefix prefix :: rest) opts = record { prefix = prefix } (flagsToOpts' rest opts)
    flagsToOpts' (SetGenerateAsLibrary :: rest) opts = record { generateAsLibrary = True } (flagsToOpts' rest opts)
    flagsToOpts' (SetChangedNamespaces namespaces :: rest) opts = record { changedNamespaces = Just namespaces } (flagsToOpts' rest opts)

splitNamespaces : String -> List Namespace
splitNamespaces namespaces = map toNamespace (splitOn ',' (unpack namespaces))
  where
    toNamespace : List Char -> Namespace
    toNamespace ns = reverse (map pack (splitOn '.' ns))

stringToFlags : String -> List Flag
stringToFlags str = parseFlags (words str)
  where
    parseFlags : List String -> List Flag
    parseFlags [] = []
    parseFlags ("--format" :: "abstr" :: rest) = SetOutputFormat AbstractFormat :: parseFlags rest
    parseFlags ("--format" :: "erl" :: rest) = SetOutputFormat Erlang :: parseFlags rest
    parseFlags ("--format" :: "beam" :: rest) = SetOutputFormat Beam :: parseFlags rest
    parseFlags ("--prefix" :: prefix :: rest) = SetPrefix prefix :: parseFlags rest
    parseFlags ("--library" :: rest) = SetGenerateAsLibrary :: parseFlags rest
    parseFlags ("--changed" :: namespaces :: rest) = SetChangedNamespaces (splitNamespaces namespaces) :: parseFlags rest
    parseFlags (_ :: rest) = parseFlags rest

export
parseOpts : String -> Opts
parseOpts str = flagsToOpts (stringToFlags str)
