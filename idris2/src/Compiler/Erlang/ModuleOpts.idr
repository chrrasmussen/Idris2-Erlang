module Compiler.Erlang.ModuleOpts

import Data.List
import Data.Strings
import Core.Name
import Compiler.Erlang.Name


%default total


public export
record ModuleOpts where
  constructor MkModuleOpts
  ns : Namespace
  exportFunName : Maybe Name
  inlineSize : Maybe Nat

defaultModuleOpts : Namespace -> ModuleOpts
defaultModuleOpts ns = MkModuleOpts ns Nothing Nothing


data Flag
  = SetExportFunName String
  | SetInlineSize Nat

flagToOpts : Flag -> ModuleOpts -> ModuleOpts
flagToOpts (SetExportFunName exportFunName) opts = record { exportFunName = Just (NS (ns opts) (UN exportFunName)) } opts
flagToOpts (SetInlineSize inlineSize) opts = record { inlineSize = Just inlineSize } opts

flagsToOpts : Namespace -> List Flag -> ModuleOpts
flagsToOpts ns flags = flagsToOpts' flags (defaultModuleOpts ns)
  where
    flagsToOpts' : List Flag -> ModuleOpts -> ModuleOpts
    flagsToOpts' [] opts = opts
    flagsToOpts' (flag :: flags) opts = flagsToOpts' flags (flagToOpts flag opts)

stringToFlags : List String -> List Flag
stringToFlags ds = mapMaybe parseFlag (map (\d => assert_total (words d)) ds) -- TODO: Remove `assert_total` when `words` is total
  where
    parseFlag : List String -> Maybe Flag
    parseFlag ["export", exportFunName] = Just $ SetExportFunName exportFunName
    parseFlag ["inline", inlineSize] = Just $ SetInlineSize (integerToNat (cast inlineSize))
    parseFlag _ = Nothing

export
parseModuleOpts : Namespace -> List String -> ModuleOpts
parseModuleOpts ns str = flagsToOpts ns (stringToFlags str)
