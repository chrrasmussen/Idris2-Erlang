module Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Buffer

import Compiler.Erlang.IR.AbstractFormat
import Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal
import Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Binary


%default total


export
new : Line -> (size : Expr) -> Expr
new l size =
  AETuple l [Binary.empty l, size]

export
resize : Line -> (buf : Expr) -> (newSize : Expr) -> Expr
resize l buf newSize =
  let extendedBody =
        singleton $ AETuple l [AEVar l "Bin", AEVar l "NewSize"]
      shrinkedBinary = genFunCall l "binary" "part" [AEVar l "Bin", AELiteral (ALInteger l 0), AEVar l "NewSize"]
      shrinkedBody =
        singleton $ AETuple l [shrinkedBinary, AEVar l "NewSize"]
      funExpr = AEFun l 2
        ( MkFunClause l
            [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "NewSize"]
            [MkGuardAlt (singleton $ AGOp l "=<" (AGFunCall l "byte_size" [AGVar l "Bin"]) (AGVar l "NewSize"))]
            extendedBody :::
          [ MkFunClause l
              [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "NewSize"]
              []
              shrinkedBody
          ]
        )
  in AEFunCall l funExpr [buf, newSize]

export
flatten : Line -> (buf : Expr) -> (maxbytes : Expr) -> Expr
flatten l buf maxbytes =
  let paddingSize = AEOp l "-" (AEVar l "MaxBytes") (genFunCall l "erlang" "byte_size" [AEVar l "Bin"])
      paddedBinaryValue = AEBitstring l
        [ MkBitSegment l (AEVar l "Bin")     ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Padding") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      extendedBody =
        ( AEMatch l (APVar l "Padding") (Binary.zeroPadded l paddingSize) :::
          [ AETuple l [paddedBinaryValue, AEVar l "BufSize"]
          ]
        )
      shrinkedBinary = genFunCall l "binary" "part" [AEVar l "Bin", AELiteral (ALInteger l 0), AEVar l "BufSize"]
      shrinkedBody =
        singleton $ AETuple l [shrinkedBinary, AEVar l "BufSize"]
      funExpr = AEFun l 2
        ( MkFunClause l
            [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "MaxBytes"]
            [MkGuardAlt (singleton $ AGOp l "=<" (AGFunCall l "byte_size" [AGVar l "Bin"]) (AGVar l "MaxBytes"))]
            extendedBody :::
          [ MkFunClause l
              [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "MaxBytes"]
              []
              shrinkedBody
          ]
        )
  in AEFunCall l funExpr [buf, maxbytes]

-- Similar to the following Erlang code:
-- ```
-- buffer_set_byte(Bin, Loc, Value) when byte_size(Bin) =< Loc ->
--   Padding = binary:copy(<<0>>, Loc - byte_size(Bin)),
--   <<Bin/binary, Padding/binary, Value:8/integer>>;
-- buffer_set_byte(Bin, Loc, Value) ->
--   Padding = binary:copy(<<0>>, 1),
--   <<Start:Loc/binary, _:8/integer, End/binary>> = <<Bin/binary, Padding/binary>>,
--   <<Start/binary, Value:8/integer, End/binary>>.
-- ```
setGeneric : (targetTSL : TypeSpecifierList) -> (targetSize : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
setGeneric targetTSL targetSize l buf loc value =
  let binaryWithExtraPadding = AEBitstring l
        [ MkBitSegment l (AEVar l "Bin")     ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Padding") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      mutatedBinaryPattern = APBitstring l
        [ MkBitSegment l (ABPVar l "Start") (ABSVar l "Loc")                 (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPUniversal l)   (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (ABPVar l "End")   ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      mutatedBinaryValue = AEBitstring l
        [ MkBitSegment l (AEVar l "Start") ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Value") (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (AEVar l "End")   ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      targetSizeInBytes = AEOp l "div" (AELiteral (ALInteger l (cast targetSize))) (AELiteral (ALInteger l 8))
      mutatedBody =
        ( AEMatch l (APVar l "Padding") (Binary.zeroPadded l targetSizeInBytes) :::
          [ AEMatch l mutatedBinaryPattern binaryWithExtraPadding
          , AETuple l [mutatedBinaryValue, AEVar l "BufSize"]
          ]
        )
      paddingSize = AEOp l "-" (AEVar l "Loc") (genFunCall l "erlang" "byte_size" [AEVar l "Bin"])
      extendedBinaryValue =
        AEBitstring l
          [ MkBitSegment l (AEVar l "Bin")     ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          , MkBitSegment l (AEVar l "Padding") ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          , MkBitSegment l (AEVar l "Value")   (ABSInteger l (cast targetSize)) targetTSL
          ]
      extendedBody =
        ( AEMatch l (APVar l "Padding") (Binary.zeroPadded l paddingSize) :::
          [ AETuple l [extendedBinaryValue, AEVar l "BufSize"]
          ]
        )
      funExpr = AEFun l 3
        ( MkFunClause l
            [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Value"]
            [MkGuardAlt (singleton $ AGOp l "=<" (AGFunCall l "byte_size" [AGVar l "Bin"]) (AGVar l "Loc"))]
            extendedBody :::
          [ MkFunClause l
              [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Value"]
              []
              mutatedBody
          ]
        )
  in AEFunCall l funExpr [buf, loc, value]

-- Similar to the following Erlang code:
-- ```
-- buffer_get_byte(Bin, Loc) when Loc + 1 =< byte_size(Bin) ->
--   <<_Start:Loc/binary, Value:8/integer, _End/binary>> = Bin,
--   Value.
-- buffer_get_byte(Bin, Loc) ->
--   0.
-- ```
getGeneric : (targetTSL : TypeSpecifierList) -> (targetSize : Int) -> (defaultValue : Expr) -> Line -> (buf : Expr) -> (loc : Expr) -> Expr
getGeneric targetTSL targetSize defaultValue l buf loc =
  let binaryPattern = APBitstring l
        [ MkBitSegment l (ABPUniversal l)   (ABSVar l "Loc")                 (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPVar l "Value") (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (ABPUniversal l)   ABSDefault                       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      body =
        ( AEMatch l binaryPattern (AEVar l "Bin") :::
          [ AEVar l "Value"
          ]
        )
      targetSizeInBytes = AGOp l "div" (AGLiteral (ALInteger l (cast targetSize))) (AGLiteral (ALInteger l 8))
      funExpr = AEFun l 2
        ( MkFunClause l
            [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc"]
            [MkGuardAlt (singleton $ AGOp l "=<" (AGOp l "+" (AGVar l "Loc") targetSizeInBytes) (AGFunCall l "byte_size" [AGVar l "Bin"]))]
            body :::
          [ MkFunClause l
              [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc"]
              []
              (singleton defaultValue)
          ]
        )
  in AEFunCall l funExpr [buf, loc]

export
setUnsignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
setUnsignedInt = setGeneric (MkTSL (Just ABUnsigned) (Just ABNative) (Just ABInteger) Nothing)

export
getUnsignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> Expr
getUnsignedInt size l = getGeneric (MkTSL (Just ABUnsigned) (Just ABNative) (Just ABInteger) Nothing) size (AELiteral (ALInteger l 0)) l

export
setSignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
setSignedInt = setGeneric (MkTSL (Just ABSigned) (Just ABNative) (Just ABInteger) Nothing)

export
getSignedInt : (size : Int) -> Line -> (buf : Expr) -> (loc : Expr) -> Expr
getSignedInt size l = getGeneric (MkTSL (Just ABSigned) (Just ABNative) (Just ABInteger) Nothing) size (AELiteral (ALInteger l 0)) l

export
setDouble : Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
setDouble = setGeneric (MkTSL Nothing (Just ABNative) (Just ABFloat) Nothing) 64

export
getDouble : Line -> (buf : Expr) -> (loc : Expr) -> Expr
getDouble l = getGeneric (MkTSL Nothing (Just ABNative) (Just ABFloat) Nothing) 64 (AELiteral (ALFloat l 0)) l

-- Similar to the following Erlang code:
-- ```
-- buffer_set_string(Bin, Loc, Value) when byte_size(Bin) =< Loc ->
--   Padding = binary:copy(<<0>>, Loc - byte_size(Bin)),
--   <<Bin/binary, Padding/binary, Value/binary>>;
-- buffer_set_string(Bin, Loc, Value) ->
--   Size = erlang:byte_size(Value),
--   Padding = binary:copy(<<0>>, Size),
--   <<Start:Loc/binary, _:Size/binary, End/binary>> = <<Bin/binary, Padding/binary>>,
--   <<Start/binary, Value/binary, End/binary>>.
-- ```
export
setString : Line -> (buf : Expr) -> (loc : Expr) -> (value : Expr) -> Expr
setString l buf loc value =
  let binaryWithExtraPadding = AEBitstring l
        [ MkBitSegment l (AEVar l "Bin")     ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Padding") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      mutatedBinaryPattern = APBitstring l
        [ MkBitSegment l (ABPVar l "Start") (ABSVar l "Loc")  (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPUniversal l)   (ABSVar l "Size") (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPVar l "End")   ABSDefault        (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      mutatedBinaryValue = AEBitstring l
        [ MkBitSegment l (AEVar l "Start") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "Value") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (AEVar l "End")   ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      mutatedBody =
        ( AEMatch l (APVar l "Size") (genFunCall l "erlang" "byte_size" [AEVar l "Value"]) :::
          [ AEMatch l (APVar l "Padding") (Binary.zeroPadded l (AEVar l "Size"))
          , AEMatch l mutatedBinaryPattern binaryWithExtraPadding
          , AETuple l [mutatedBinaryValue, AEVar l "BufSize"]
          ]
        )
      paddingSize = AEOp l "-" (AEVar l "Loc") (genFunCall l "erlang" "byte_size" [AEVar l "Bin"])
      extendedBinaryValue =
        AEBitstring l
          [ MkBitSegment l (AEVar l "Bin")     ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          , MkBitSegment l (AEVar l "Padding") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          , MkBitSegment l (AEVar l "Value")   ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          ]
      extendedBody =
        ( AEMatch l (APVar l "Padding") (Binary.zeroPadded l paddingSize) :::
          [ AETuple l [extendedBinaryValue, AEVar l "BufSize"]
          ]
        )
      funExpr = AEFun l 3
        ( MkFunClause l
            [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Value"]
            [MkGuardAlt (singleton $ AGOp l "=<" (AGFunCall l "byte_size" [AGVar l "Bin"]) (AGVar l "Loc"))]
            extendedBody :::
          [ MkFunClause l
              [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Value"]
              []
              mutatedBody
          ]
        )
  in AEFunCall l funExpr [buf, loc, value]

-- Similar to the following Erlang code:
-- ```
-- buffer_get_string(Bin, Loc, Len) when Loc + Len =< byte_size(Bin) ->
--   <<_Start:Loc/binary, Value:Len/binary, _End/binary>> = Bin,
--   Value.
-- buffer_get_string(Bin, Loc, Len) ->
--   binary:copy(<<0>>, Len).
-- ```
export
getString : Line -> (buf : Expr) -> (loc : Expr) -> (len : Expr) -> Expr
getString l buf loc len =
  let binaryPattern = APBitstring l
        [ MkBitSegment l (ABPUniversal l)   (ABSVar l "Loc") (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPVar l "Value") (ABSVar l "Len") (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        , MkBitSegment l (ABPUniversal l)   ABSDefault       (MkTSL Nothing Nothing (Just ABBinary) Nothing)
        ]
      body =
        ( AEMatch l binaryPattern (AEVar l "Bin") :::
          [ AEVar l "Value"
          ]
        )
      defaultBody =
        singleton $ Binary.zeroPadded l (AEVar l "Len")
      funExpr = AEFun l 3
        ( MkFunClause l
            [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Len"]
            [MkGuardAlt (singleton $ AGOp l "=<" (AGOp l "+" (AGVar l "Loc") (AGVar l "Len")) (AGFunCall l "byte_size" [AGVar l "Bin"]))]
            body :::
          [ MkFunClause l
              [APTuple l [APVar l "Bin", APVar l "BufSize"], APVar l "Loc", APVar l "Len"]
              []
              defaultBody
          ]
        )
  in AEFunCall l funExpr [buf, loc, len]
