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

flagToOpts : GlobalOpts -> Flag -> GlobalOpts
flagToOpts opts (SetOutputFormat outputFormat) = { outputFormat := outputFormat } opts
flagToOpts opts (SetPrefix prefixStr) = { prefixStr := prefixStr } opts
flagToOpts opts (SetInlineSize inlineSize) = { inlineSize := inlineSize } opts
flagToOpts opts (SetUseMutableStorage useMutableStorage) = { useMutableStorage := useMutableStorage } opts

parseOutputFormat : String -> Maybe OutputFormat
parseOutputFormat "erl" = Just ErlangSource
parseOutputFormat "erl-pretty" = Just ErlangSourcePretty
parseOutputFormat "abstr" = Just AbstractFormat
parseOutputFormat "beam" = Just BeamFromErlangSource
parseOutputFormat "beam-abstr" = Just BeamFromAbstractFormat
parseOutputFormat "escript" = Just Escript
parseOutputFormat _ = Nothing

stringToFlags : List String -> List Flag
stringToFlags ds = mapMaybe parseFlag (map (\d => words d) ds)
  where
    parseFlag : List String -> Maybe Flag
    parseFlag ["format", format] = SetOutputFormat <$> parseOutputFormat format
    parseFlag ["prefix", prefixStr] = Just $ SetPrefix prefixStr
    parseFlag ["inline", inlineSize] = Just $ SetInlineSize (integerToNat (cast inlineSize))
    parseFlag ["mutablestorage"] = Just $ SetUseMutableStorage True
    parseFlag _ = Nothing

export
parseOpts : GlobalOpts -> List String -> GlobalOpts
parseOpts initialOpts str = foldl flagToOpts initialOpts (stringToFlags str)
