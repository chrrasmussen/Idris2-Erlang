module Language.Reflection.TT

import public Data.List

-- 'FilePos' represents the position of
-- the source information in the file (or REPL).
-- in the form of '(line-no, column-no)'.
public export
FilePos : Type
FilePos = (Int, Int)

-- 'FC' represents the source location of the term.
-- The first 'FilePos' indicates the starting position.
-- the second 'FilePos' indicates the start of the next term.
public export
data FC : Type where
     MkFC : String -> FilePos -> FilePos -> FC
     EmptyFC : FC

public export
emptyFC : FC
emptyFC = EmptyFC

public export
data NameType : Type where
     Bound   : NameType
     Func    : NameType
     DataCon : (tag : Int) -> (arity : Nat) -> NameType
     TyCon   : (tag : Int) -> (arity : Nat) -> NameType

public export
data Constant
    = I Int
    | BI Integer
    | B8 Int
    | B16 Int
    | B32 Int
    | B64 Integer
    | Str String
    | Ch Char
    | Db Double
    | WorldVal

    | IntType
    | IntegerType
    | Bits8Type
    | Bits16Type
    | Bits32Type
    | Bits64Type
    | StringType
    | CharType
    | DoubleType
    | WorldType

public export
data Namespace = MkNS (List String) -- namespace, stored in reverse order

export
showSep : String -> List String -> String
showSep sep [] = ""
showSep sep [x] = x
showSep sep (x :: xs) = x ++ sep ++ showSep sep xs

export
Show Namespace where
  show (MkNS ns) = showSep "." (reverse ns)

public export
data Name = UN String -- user defined name
          | MN String Int -- machine generated name
          | NS Namespace Name -- name in a namespace
          | DN String Name -- a name and how to display it
          | RF String -- record field name

export
Show Name where
  show (NS ns n) = show ns ++ "." ++ show n
  show (UN x) = x
  show (MN x y) = "{" ++ x ++ ":" ++ show y ++ "}"
  show (DN str y) = str
  show (RF n) = "." ++ n

public export
data Count = M0 | M1 | MW

public export
data PiInfo t = ImplicitArg | ExplicitArg | AutoImplicit | DefImplicit t

public export
data IsVar : Name -> Nat -> List Name -> Type where
     First : IsVar n Z (n :: ns)
     Later : IsVar n i ns -> IsVar n (S i) (m :: ns)

public export
data LazyReason = LInf | LLazy | LUnknown

export
data TT : Type where [external]

{-
-- Type checked terms in the core TT
public export
data TT : List Name -> Type where
     Local : FC -> (idx : Nat) -> (0 prf : IsVar name idx vars) -> TT vars
     Ref : FC -> NameType -> Name -> TT vars
     Pi : FC -> Count -> PiInfo (TT vars) ->
          (x : Name) -> (argTy : TT vars) -> (retTy : TT (x :: vars)) ->
          TT vars
     Lam : FC -> Count -> PiInfo (TT vars) ->
           (x : Name) -> (argTy : TT vars) -> (scope : TT (x :: vars)) ->
           TT vars
     App : FC -> TT vars -> TT vars -> TT vars
     TDelayed : FC -> LazyReason -> TT vars -> TT vars
     TDelay : FC -> LazyReason -> (ty : TT vars) -> (arg : TT vars) -> TT vars
     TForce : FC -> LazyReason -> TT vars -> TT vars
     PrimVal : FC -> Constant -> TT vars
     Erased : FC -> TT vars
     TType : FC -> TT vars
     -}

public export
data TotalReq = Total | CoveringOnly | PartialOK

public export
data Visibility = Private | Export | Public
