module Compiler.Erlang.Name

import Data.List
import Core.Name
import Core.TT


%default total


public export
data OutputBundle : Type where
  Concat : (ns : String) -> OutputBundle
  Split : (prefixStr : String) -> (inNS : Namespace) -> OutputBundle

export
Eq OutputBundle where
  (Concat ns1) == (Concat ns2) = ns1 == ns2
  (Split prefix1 inNS1) == (Split prefix2 inNS2) = prefix1 == prefix2 && inNS1 == inNS2
  _ == _ = False

Ord OutputBundle where
  compare (Concat ns1) (Concat ns2) = compare ns1 ns2
  compare (Split prefix1 inNS1) (Split prefix2 inNS2) =
    case compare prefix1 prefix2 of
      LT => LT
      GT => GT
      EQ => compare inNS1 inNS2
  compare (Concat _) (Split _ _) = LT
  compare (Split _ _) (Concat _) = GT

public export
record NamespaceInfo where
  constructor MkNamespaceInfo
  outputBundle : OutputBundle

export
Eq NamespaceInfo where
  (MkNamespaceInfo outputBundle1) == (MkNamespaceInfo outputBundle2) =
    outputBundle1 == outputBundle2

export
Ord NamespaceInfo where
  compare (MkNamespaceInfo outputBundle1) (MkNamespaceInfo outputBundle2) =
    compare outputBundle1 outputBundle2

export
getNamespace : Name -> Namespace
getNamespace (NS ns _) = ns
getNamespace n = emptyNS -- TODO: Fix emptyNS

genName : Name -> String
genName (NS ns n) = "ns--" ++ show ns ++ "--" ++ genName n
genName (UN n) = "un--" ++ show n
genName (MN n i) = "mn--" ++ n ++ "-" ++ show i
genName (PV n d) = "pat--" ++ genName n
genName (DN _ n) = "dn--" ++ genName n
genName (Nested (i, x) n) = "nested--" ++ show i ++ "-" ++ show x ++ "--in--" ++ genName n
genName (CaseBlock x y) = "case--" ++ x ++ "-" ++ show y
genName (WithBlock x y) = "with--" ++ x ++ "-" ++ show y
genName (Resolved i) = "fn--" ++ show i

moduleNameForNS : NamespaceInfo -> Namespace -> String
moduleNameForNS namespaceInfo ns =
  case outputBundle namespaceInfo of
    Concat ns => ns
    Split prefixStr inNS => show $ mkNamespace prefixStr <.> ns

moduleNameForName : NamespaceInfo -> Name -> String
moduleNameForName namespaceInfo name = moduleNameForNS namespaceInfo (getNamespace name)

export
currentModuleName : NamespaceInfo -> String
currentModuleName namespaceInfo =
  case outputBundle namespaceInfo of
    Concat ns => ns
    Split _ inNS => moduleNameForNS namespaceInfo inNS

export
isNameInCurrentModule : NamespaceInfo -> Name -> Bool
isNameInCurrentModule namespaceInfo name =
  case outputBundle namespaceInfo of
    Concat _ => True
    Split _ inNS => moduleNameForName namespaceInfo name == currentModuleName namespaceInfo

export
moduleNameFunctionName : NamespaceInfo -> Name -> (String, String)
moduleNameFunctionName namespaceInfo name =
  case outputBundle namespaceInfo of
    Concat ns => (ns, genName name)
    Split _ _ => (moduleNameForName namespaceInfo name, genName (dropNS name))

export
constructorName : Name -> String
constructorName name =
  let ns = getNamespace name
      ctorName = case dropNS name of
        (UN (Basic dataCtor)) => dataCtor
        n => genName n
  in show ns ++ "." ++ ctorName


-- NAMESPACES

export
erlangTypesNS : Namespace
erlangTypesNS = mkNamespace "Erlang.Types"

export
erlangIONS : Namespace
erlangIONS = mkNamespace "Erlang.IO"

export
erlangMaybeImproperListNS : Namespace
erlangMaybeImproperListNS = mkNamespace "Erlang.Types.MaybeImproperList"

export
erlangProperListNS : Namespace
erlangProperListNS = mkNamespace "Erlang.Types.ProperList"
