module Compiler.Erlang.IR.PrimTerm


%default total


public export
data PrimTerm
  = PAtom String
  | PChar Char
  | PFloat Double
  | PInteger Integer
  | PTuple (List PrimTerm)
  | PList (List PrimTerm)
  | PCharlist String
