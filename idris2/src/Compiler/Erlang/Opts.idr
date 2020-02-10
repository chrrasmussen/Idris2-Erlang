module Compiler.Erlang.Opts

%default total

public export
data OutputFormat = Erlang | Beam

public export
record Opts where
  constructor MkOpts
  outputFormat : OutputFormat
  generateAsLibrary : Bool

export
defaultOpts : Opts
defaultOpts = MkOpts Beam False


data Flag
  = SetOutputFormat OutputFormat
  | SetGenerateAsLibrary

flagsToOpts : List Flag -> Opts
flagsToOpts flags = flagsToOpts' flags defaultOpts
  where
    flagsToOpts' : List Flag -> Opts -> Opts
    flagsToOpts' [] opts = opts
    flagsToOpts' (SetOutputFormat outputFormat :: rest) opts = record { outputFormat = outputFormat } (flagsToOpts' rest opts)
    flagsToOpts' (SetGenerateAsLibrary :: rest) opts = record { generateAsLibrary = True } (flagsToOpts' rest opts)

stringToFlags : String -> List Flag
stringToFlags str = parseFlags (words str)
  where
    parseFlags : List String -> List Flag
    parseFlags [] = []
    parseFlags ("--format" :: "erlang" :: rest) = SetOutputFormat Erlang :: parseFlags rest
    parseFlags ("--format" :: "beam" :: rest) = SetOutputFormat Beam :: parseFlags rest
    parseFlags ("--library" :: rest) = SetGenerateAsLibrary :: parseFlags rest
    parseFlags (_ :: rest) = parseFlags rest

export
parseOpts : String -> Opts
parseOpts str = flagsToOpts (stringToFlags str)
