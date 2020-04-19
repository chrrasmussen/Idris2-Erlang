module Compiler.Erlang.Name

import Core.Name
import Core.TT


%default total


public export
Namespace : Type
Namespace = List String

public export
record NamespaceInfo where
  constructor MkNamespaceInfo
  prefix : String
  inNS : Maybe Namespace


export
getNamespace : Name -> List String
getNamespace (NS ns _) = ns
getNamespace n = []

export
genName : Name -> String
genName (NS ns n) = "ns--" ++ showSep "-" ns ++ "--" ++ genName n
genName (UN n) = "un--" ++ n
genName (MN n i) = n ++ "_" ++ show i
genName (PV n d) = "pat--" ++ genName n
genName (DN _ n) = "dn--" ++ genName n
genName (Nested (i, x) n) = "nested--" ++ show i ++ "-" ++ show x ++ "--in--" ++ genName n
genName (CaseBlock x y) = "case--" ++ show x ++ "-" ++ show y
genName (WithBlock x y) = "with--" ++ show x ++ "-" ++ show y
genName (Resolved i) = "fn--" ++ show i

export
moduleNameFromNS : (prefix : String) -> List String -> String
moduleNameFromNS prefix ns = showSep "." (prefix :: reverse ns)

export
moduleName : (prefix : String) -> Name -> String
moduleName prefix n = moduleNameFromNS prefix (getNamespace n)

export
moduleNameFunctionName : (prefix : String) -> Name -> (String, String)
moduleNameFunctionName prefix n@(NS ns dcons) = (moduleName prefix n, genName dcons)
moduleNameFunctionName prefix n = (moduleName prefix n, genName n)

export
constructorName : NamespaceInfo -> Name -> String
constructorName namespaceInfo (NS ns (UN dcons)) =
  let modName = moduleNameFromNS (prefix namespaceInfo) ns
  in modName ++ "." ++ dcons
constructorName namespaceInfo (UN dcons) =
  let modName = moduleNameFromNS (prefix namespaceInfo) []
  in modName ++ "." ++ dcons
constructorName namespaceInfo n =
  let (modName, fnName) = moduleNameFunctionName (prefix namespaceInfo) n
  in modName ++ "." ++ fnName
