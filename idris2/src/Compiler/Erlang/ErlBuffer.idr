module Compiler.Erlang.ErlBuffer

import Compiler.Erlang.AbstractFormat


genFunCall : Line -> String -> String -> List Expr -> Expr
genFunCall l modName fnName args =
  AEFunCall l (AERemoteRef l (AELiteral (ALAtom l modName)) (AELiteral (ALAtom l fnName))) args

export
bufferNew : Line -> (size : Expr) -> Expr
bufferNew l size =
  let zeroBinary = AEBitstring l [MkBitSegment l (AELiteral (ALInteger l 0)) ABSDefault (MkTSL Nothing Nothing Nothing Nothing)]
      paddedBinary = genFunCall l "binary" "copy" [zeroBinary, size]
  in AETuple l [paddedBinary, size]

-- Similar to the following Erlang code:
-- ```
-- buffer_set_byte(Bin, Loc, Value) ->
--   <<Start:Loc/binary, _:8/integer, End/binary>> = Bin,
--   <<Start/binary, Value:8/integer, End/binary>>.
-- ```
bufferSetGeneric : (targetTSL : TypeSpecifierList) -> (targetSize : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
bufferSetGeneric targetTSL targetSize l buf loc value =
  let binaryPattern = APBitstring l
        [ MkBitSegment l (ABPVar l "Start") (ABSVar l "Loc")                 (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPUniversal l)   (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (ABPVar l "End")   ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      constructedBinary = AEBitstring l
        [ MkBitSegment l (AEVar l "Start") ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Value") (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (AEVar l "End")   ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      body =
        [ AEMatch l binaryPattern (AEVar l "Bin")
        , AETuple l [constructedBinary, AEVar l "BufSize"]
        ]
      funExpr = AEFun l 3 [MkFunClause l [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Value"] [] body]
  in AEFunCall l funExpr [buf, loc, value]

-- Similar to the following Erlang code:
-- ```
-- buffer_get_byte(Bin, Loc) ->
--   <<_Start:Loc/binary, Value:8/integer, _End/binary>> = Bin,
--   Value.
-- ```
bufferGetGeneric : (targetTSL : TypeSpecifierList) -> (targetSize : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> Expr
bufferGetGeneric targetTSL targetSize l buf loc =
  let binaryPattern = APBitstring l
        [ MkBitSegment l (ABPUniversal l)   (ABSVar l "Loc")                 (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPVar l "Value") (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (ABPUniversal l)   ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      body =
        [ AEMatch l binaryPattern (AEVar l "Bin")
        , AEVar l "Value"
        ]
      funExpr = AEFun l 2 [MkFunClause l [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc"] [] body]
  in AEFunCall l funExpr [buf, loc]

export
bufferSetUnsignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
bufferSetUnsignedInt = bufferSetGeneric (MkTSL (Just ABUnsigned) (Just ABNative) (Just ABInteger) Nothing)

export
bufferGetUnsignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> Expr
bufferGetUnsignedInt = bufferGetGeneric (MkTSL (Just ABUnsigned) (Just ABNative) (Just ABInteger) Nothing)

export
bufferSetSignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
bufferSetSignedInt = bufferSetGeneric (MkTSL (Just ABSigned) (Just ABNative) (Just ABInteger) Nothing)

export
bufferGetSignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> Expr
bufferGetSignedInt = bufferGetGeneric (MkTSL (Just ABSigned) (Just ABNative) (Just ABInteger) Nothing)

export
bufferSetDouble : Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
bufferSetDouble = bufferSetGeneric (MkTSL Nothing (Just ABNative) (Just ABFloat) Nothing) 64

export
bufferGetDouble : Line -> (buf : Expr) -> (loc : Expr) -> Expr
bufferGetDouble = bufferGetGeneric (MkTSL Nothing (Just ABNative) (Just ABFloat) Nothing) 64

-- Similar to the following Erlang code:
-- ```
-- buffer_set_string(Bin, Loc, Value) ->
--   Size = erlang:byte_size(Value),
--   <<Start:Loc/binary, _:Size/binary, End/binary>> = Bin,
--   <<Start/binary, Value/binary, End/binary>>.
-- ```
export
bufferSetString : Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
bufferSetString l buf loc value =
  let binaryPattern = APBitstring l
        [ MkBitSegment l (ABPVar l "Start") (ABSVar l "Loc")  (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPUniversal l)   (ABSVar l "Size") (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPVar l "End")   ABSDefault        (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      constructedBinary = AEBitstring l
        [ MkBitSegment l (AEVar l "Start") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Value") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "End")   ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      body =
        [ AEMatch l (APVar l "Size") (genFunCall l "erlang" "byte_size" [AEVar l "Value"])
        , AEMatch l binaryPattern (AEVar l "Bin")
        , AETuple l [constructedBinary, AEVar l "BufSize"]
        ]
      funExpr = AEFun l 3 [MkFunClause l [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Value"] [] body]
  in AEFunCall l funExpr [buf, loc, value]

-- Similar to the following Erlang code:
-- ```
-- buffer_get_string(Bin, Loc, Len) ->
--   <<_Start:Loc/binary, Value:Len/binary, _End/binary>> = Bin,
--   Value.
-- ```
export
bufferGetString : Line -> (buf : Expr) -> (loc : Expr) -> (len : Expr) -> Expr
bufferGetString l buf loc len =
  let binaryPattern = APBitstring l
        [ MkBitSegment l (ABPUniversal l)   (ABSVar l "Loc") (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPVar l "Value") (ABSVar l "Len") (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPUniversal l)   ABSDefault       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      body =
        [ AEMatch l binaryPattern (AEVar l "Bin")
        , AEVar l "Value"
        ]
      funExpr = AEFun l 3 [MkFunClause l [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Len"] [] body]
  in AEFunCall l funExpr [buf, loc, len]
