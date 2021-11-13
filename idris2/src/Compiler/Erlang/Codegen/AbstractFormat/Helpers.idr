module Compiler.Erlang.Codegen.AbstractFormat.Helpers

import Compiler.Erlang.IR.AbstractFormat


export
showBitType : TypeSpecifierList -> String
showBitType tsl =
  case tsl of
    ABInteger => "integer"
    ABFloat => "float"
    ABBinary => "binary"
    ABBitstring => "bitstring"
    ABUtf8 => "utf8"
    ABUtf16 => "utf16"
    ABUtf32 => "utf32"

export
showBitSignedness : BitSignedness -> String
showBitSignedness signedness =
  case signedness of
    ABUnsigned => "unsigned"
    ABSigned => "signed"

export
showBitEndianness : BitEndianness -> String
showBitEndianness endianness =
  case endianness of
    ABBig => "big"
    ABLittle => "little"
    ABNative => "native"


export
isAllowedToSpecifyBitUnit : BitSize -> Bool
isAllowedToSpecifyBitUnit ABSDefault = False
isAllowedToSpecifyBitUnit (ABSInteger _ _) = True
isAllowedToSpecifyBitUnit (ABSVar _ _) = True
