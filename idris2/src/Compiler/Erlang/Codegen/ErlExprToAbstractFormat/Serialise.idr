module Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Serialise

import Compiler.Erlang.Name
import Compiler.Erlang.IR.AbstractFormat
import Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal


%default total


defaultEndianness : BitEndianness
defaultEndianness = ABBig


genSerialiseDecodeResultSuccess : Line -> Expr -> Expr
genSerialiseDecodeResultSuccess l value =
  genDataCtorExpr l (constructorName (NS serialiseCoreNS (UN (Basic "Success")))) [value]

genSerialiseDecodeResultFail : Line -> String -> Expr
genSerialiseDecodeResultFail l err =
  genDataCtorExpr l (constructorName (NS serialiseCoreNS (UN (Basic "Fail")))) [genStringLiteralExpr l err]

genSerialiseMkIteratorRes : Line -> Expr -> Expr -> Expr
genSerialiseMkIteratorRes l value it =
  genDataCtorExpr l (constructorName (NS serialiseCoreNS (UN (Basic "MkIteratorRes")))) [value, it]


-- Similar to the following Erlang code:
-- ```
-- <<Bin/binary, Value:8/integer>>.
-- ```
setGeneric : (targetTSL : TypeSpecifierList) -> (targetSize : Int) -> Line -> (builder : Expr) -> (value : Expr) -> Expr
setGeneric targetTSL targetSize l builder value =
  let binary =
        AEBitstring l
          [ MkBitSegment l builder ABSDefault                       ABBinary
          , MkBitSegment l value   (ABSInteger l (cast targetSize)) targetTSL
          ]
  in binary

-- Similar to the following Erlang code:
-- ```
-- get_byte(<<Value:8/integer, NewIt/binary>>) ->
--   {{next, Value}, NewIt};
-- get_byte(It) ->
--   {fail, It}.
-- ```
getGeneric : (targetTSL : TypeSpecifierList) -> (targetSize : Int) -> Line -> (it : Expr) -> Expr
getGeneric targetTSL targetSize l it =
  let successPattern = APBitstring l
        [ MkBitSegment l (ABPVar l "Value") (ABSInteger l (cast targetSize)) targetTSL
        , MkBitSegment l (ABPVar l "NewIt") ABSDefault                       ABBinary
        ]
      successBody =
        genSerialiseMkIteratorRes l (genSerialiseDecodeResultSuccess l (AEVar l "Value")) (AEVar l "NewIt") ::: []
      failPattern = APVar l "It"
      failBody =
        genSerialiseMkIteratorRes l (genSerialiseDecodeResultFail l "Failed to decode number") (AEVar l "It") ::: []
      funExpr = AEFun l 1
        (MkFunClause l
            [successPattern]
            []
            successBody :::
          [ MkFunClause l
              [failPattern]
              []
              failBody
          ]
        )
  in AEFunCall l funExpr [it]

export
setUnsignedInt : (size : Int) -> Line -> (builder : Expr) -> (value : Expr) -> Expr
setUnsignedInt = setGeneric (ABInteger {endianness=defaultEndianness})

export
getUnsignedInt : (size : Int) -> Line -> (it : Expr) -> Expr
getUnsignedInt = getGeneric (ABInteger {endianness=defaultEndianness})

export
setSignedInt : (size : Int) -> Line -> (builder : Expr) -> (value : Expr) -> Expr
setSignedInt = setGeneric (ABInteger {endianness=defaultEndianness})

export
getSignedInt : (size : Int) -> Line -> (it : Expr) -> Expr
getSignedInt = getGeneric (ABInteger {endianness=defaultEndianness})

export
setDouble : Line -> (builder : Expr) -> (value : Expr) -> Expr
setDouble = setGeneric (ABFloat {endianness=defaultEndianness}) 64

export
getDouble : Line -> (it : Expr) -> Expr
getDouble = getGeneric (ABFloat {endianness=defaultEndianness}) 64

-- Similar to the following Erlang code:
-- ```
-- set_binary(Bin, Value) ->
--   Size = erlang:byte_size(Value),
--   <<Bin/binary, Size:32/integer, Value/binary>>.
-- ```
export
setBinary : Line -> (builder : Expr) -> (value : Expr) -> Expr
setBinary l builder value =
  let binary =
        AEBitstring l
          [ MkBitSegment l (AEVar l "Bin")   ABSDefault        ABBinary
          , MkBitSegment l (AEVar l "Size")  (ABSInteger l 32) (ABInteger {endianness=defaultEndianness})
          , MkBitSegment l (AEVar l "Value") ABSDefault        ABBinary
          ]
      body =
        AEMatch l (APVar l "Size") (genFunCall l "erlang" "byte_size" [AEVar l "Value"]) :::
        [ binary
        ]
      funExpr = AEFun l 2
        (singleton $ MkFunClause l
          [APVar l "Bin", APVar l "Value"]
          []
          body
        )
  in AEFunCall l funExpr [builder, value]

-- Similar to the following Erlang code:
-- ```
-- get_binary(<<Size:32/integer, Value:Size/binary, NewIt/binary>>) ->
--   {{next, Value}, NewIt};
-- get_binary(It) ->
--   {fail, It}.
-- ```
export
getBinary : Line -> (it : Expr) -> Expr
getBinary l it =
  let successPattern = APBitstring l
        [ MkBitSegment l (ABPVar l "Size")  (ABSInteger l 32) (ABInteger {endianness=defaultEndianness})
        , MkBitSegment l (ABPVar l "Value") (ABSVar l "Size") ABBinary
        , MkBitSegment l (ABPVar l "NewIt") ABSDefault        ABBinary
        ]
      successBody =
        genSerialiseMkIteratorRes l (genSerialiseDecodeResultSuccess l (AEVar l "Value")) (AEVar l "NewIt") ::: []
      failPattern = APVar l "It"
      failBody =
        genSerialiseMkIteratorRes l (genSerialiseDecodeResultFail l "Failed to decode binary") (AEVar l "It") ::: []
      funExpr = AEFun l 1
        (MkFunClause l
            [successPattern]
            []
            successBody :::
          [ MkFunClause l
              [failPattern]
              []
              failBody
          ]
        )
  in AEFunCall l funExpr [it]
