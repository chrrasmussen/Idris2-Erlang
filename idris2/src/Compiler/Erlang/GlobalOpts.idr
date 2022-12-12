module Compiler.Erlang.GlobalOpts

import Data.List
import Data.List1
import Data.String
import Compiler.Erlang.Name


%default total


public export
data OutputFormat = ErlangSource | ErlangSourcePretty | AbstractFormat | BeamFromErlangSource | BeamFromAbstractFormat | Escript

public export
record GlobalOpts where
  constructor MkGlobalOpts
  outputFormat : OutputFormat
  prefixStr : String
  inlineSize : Nat
  useMutableStorage : Bool

export
defaultGlobalOpts : GlobalOpts
defaultGlobalOpts = MkGlobalOpts Escript "Idris" 0 False


data Flag
  = SetOutputFormat OutputFormat
  | SetPrefix String
  | SetInlineSize Nat
  | SetUseMutableStorage Bool

flagToOpts : Flag -> GlobalOpts -> GlobalOpts
flagToOpts (SetOutputFormat outputFormat) opts = { outputFormat := outputFormat } opts
flagToOpts (SetPrefix prefixStr) opts = { prefixStr := prefixStr } opts
flagToOpts (SetInlineSize inlineSize) opts = { inlineSize := inlineSize } opts
flagToOpts (SetUseMutableStorage useMutableStorage) opts = { useMutableStorage := useMutableStorage } opts

flagsToOpts : List Flag -> GlobalOpts
flagsToOpts flags = flagsToOpts' flags defaultGlobalOpts
  where
    flagsToOpts' : List Flag -> GlobalOpts -> GlobalOpts
    flagsToOpts' [] opts = opts
    flagsToOpts' (flag :: flags) opts = flagsToOpts' flags (flagToOpts flag opts)

parseOutputFormat : String -> Maybe OutputFormat
parseOutputFormat "erl" = Just ErlangSource
parseOutputFormat "erl-pretty" = Just ErlangSourcePretty
parseOutputFormat "abstr" = Just AbstractFormat
parseOutputFormat "beam" = Just BeamFromErlangSource
parseOutputFormat "beam-abstr" = Just BeamFromAbstractFormat
parseOutputFormat "escript" = Just Escript
parseOutputFormat _ = Nothing

stringToFlags : List String -> List Flag
stringToFlags ds = mapMaybe parseFlag (map (\d => assert_total (words d)) ds) -- TODO: Remove `assert_total` when `words` is total
  where
    parseFlag : List String -> Maybe Flag
    parseFlag ["format", format] = SetOutputFormat <$> parseOutputFormat format
    parseFlag ["prefix", prefixStr] = Just $ SetPrefix prefixStr
    parseFlag ["inline", inlineSize] = Just $ SetInlineSize (integerToNat (cast inlineSize))
    parseFlag ["mutablestorage"] = Just $ SetUseMutableStorage True
    parseFlag _ = Nothing

export
parseOpts : List String -> GlobalOpts
parseOpts str = flagsToOpts (stringToFlags str)
