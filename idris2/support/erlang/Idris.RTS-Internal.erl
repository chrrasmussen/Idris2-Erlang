-module('Idris.RTS-Internal').

-export([int_add/3, int_sub/3, int_mult/3, int_div/3]).
-export([unicode_string_lt/2, unicode_string_lte/2, unicode_string_eq/2, unicode_string_gte/2, unicode_string_gt/2]).
-export([unicode_string_length/1, unicode_string_head/1, unicode_string_tail/1, unicode_string_index/2, unicode_string_cons/2, unicode_string_append/2, unicode_string_reverse/1, unicode_string_substr/3]).
-export([integer_to_int/1, integer_to_double/1, integer_to_string/1]).
-export([int_to_integer/1, int_to_double/1, int_to_char/1, int_to_string/1]).
-export([double_to_integer/1, double_to_int/1, double_to_string/1]).
-export([char_to_integer/1, char_to_int/1, char_to_string/1]).
-export([string_to_integer/1, string_to_int/1, string_to_double/1]).
-export([io_unicode_put_str/1, io_unicode_get_str/1]).
-export([buffer_new/1, buffer_set_byte/3, buffer_get_byte/2, buffer_set_int/3, buffer_get_int/2, buffer_set_double/3, buffer_get_double/2, buffer_set_string/3, buffer_get_string/3]).


% Unit

-define(IDRIS_UNIT, {}).

-type idris_unit() :: ?IDRIS_UNIT.


% Booleans

-define(IDRIS_TRUE, 1).
-define(IDRIS_FALSE, 0).

-type idris_bool() :: ?IDRIS_TRUE | ?IDRIS_FALSE.

-spec bool_to_idris_bool(boolean()) -> idris_bool().
bool_to_idris_bool(false) -> ?IDRIS_FALSE;
bool_to_idris_bool(_) -> ?IDRIS_TRUE.


% Arithmetic

-spec int_pow(integer(), integer()) -> integer().
int_pow(N, M) -> int_pow(N, M, 1).

-spec int_pow(integer(), integer(), integer()) -> integer().
int_pow(_, 0, R) -> R;
int_pow(N, M, R) -> int_pow(N, M - 1, R * N).

int_add(X, Y, Bits) -> (X + Y) rem int_pow(2, Bits).
int_sub(X, Y, Bits) -> (X - Y) rem int_pow(2, Bits).
int_mult(X, Y, Bits) -> (X * Y) rem int_pow(2, Bits).
int_div(X, Y, Bits) -> (X div Y) rem int_pow(2, Bits).


% Strings

unicode_string_lt(X, Y) -> bool_to_idris_bool(unicode:characters_to_binary(X) < unicode:characters_to_binary(Y)).
unicode_string_lte(X, Y) -> bool_to_idris_bool(unicode:characters_to_binary(X) =< unicode:characters_to_binary(Y)).
unicode_string_eq(X, Y) -> bool_to_idris_bool(unicode:characters_to_binary(X) =:= unicode:characters_to_binary(Y)).
unicode_string_gte(X, Y) -> bool_to_idris_bool(unicode:characters_to_binary(X) >= unicode:characters_to_binary(Y)).
unicode_string_gt(X, Y) -> bool_to_idris_bool(unicode:characters_to_binary(X) > unicode:characters_to_binary(Y)).


% NOTE: Must be total
unicode_string_length(Str) ->
  string:length(Str).

% NOTE: Is allowed to be partial
unicode_string_head(Str) ->
  [Hd | _] = string:next_grapheme(Str),
  Hd.

% NOTE: Is allowed to be partial
unicode_string_tail(Str) ->
  [_ | Tl] = string:next_grapheme(Str),
  Tl.

% NOTE: Is allowed to be partial
unicode_string_index(Str, Index) ->
  CharStr = string:slice(Str, Index, 1),
  [Hd | _] = string:next_grapheme(CharStr),
  Hd.

% NOTE: Must be total
unicode_string_cons(Char, Str) -> [Char | Str].

% NOTE: Must be total
unicode_string_append(Str1, Str2) -> [Str1 | Str2].

% NOTE: Must be total
unicode_string_reverse(Str) -> string:reverse(Str).

% NOTE: Must be total
unicode_string_substr(Start, Len, Str) -> string:substr(Str, Start, Len).


% Casts

integer_to_int(Integer) -> Integer.
integer_to_double(Integer) -> float(Integer).
integer_to_string(Integer) -> integer_to_binary(Integer).

int_to_integer(Int) -> Int.
int_to_double(Int) -> float(Int).
int_to_char(Char) -> Char. % NOTE: Char is an integer
int_to_string(Int) -> integer_to_binary(Int).

double_to_integer(Double) -> trunc(Double).
double_to_int(Double) -> trunc(Double).
double_to_string(Double) -> float_to_binary(Double, [{decimals, 10}, compact]).

% A codepoint is represented by an integer between 0x0 and 0x10FFFF.
% Return "replacement character" (0xFFFD) if character is not recognized.
% https://en.wikipedia.org/wiki/Specials_(Unicode_block)
char_to_integer(Char) when is_integer(Char) andalso Char >= 0 andalso Char =< 1114111 -> Char;
char_to_integer(_) -> 65533.
char_to_int(Char) -> char_to_integer(Char).
char_to_string(Char) -> [Char].

string_to_integer(Str) ->
  case string:to_integer(Str) of
    {error, no_integer} ->
      0;
    {Num, StrRest} ->
      case string:next_grapheme(StrRest) of
        [] -> Num;
        _ -> 0
      end
  end.
string_to_int(Str) -> string_to_integer(Str). % TODO: Should `Int` be capped at a certain precision?
string_to_double(Str) ->
  case string:to_float(Str) of
    {error, no_float} ->
      Integer = string_to_integer(Str),
      float(Integer);
    {Num, StrRest} ->
      case string:next_grapheme(StrRest) of
        [] -> Num;
        _ -> 0.0
      end
  end.


% IO

io_unicode_put_str(Str) ->
  io:format("~ts", [Str]).

io_unicode_get_str(Prompt) ->
  Line = io:get_line(Prompt),
  string:trim(Line, trailing, "\n").


% Buffer

buffer_new(Size) ->
  binary:copy(<<0>>, Size).

buffer_set_byte(Bin, Loc, Value) ->
  <<Start:Loc/binary, _:8/integer, End/binary>> = Bin,
  <<Start/binary, Value:8/integer, End/binary>>.

buffer_get_byte(Bin, Loc) ->
  <<_Start:Loc/binary, Value:8/integer, _End/binary>> = Bin,
  Value.

buffer_set_int(Bin, Loc, Value) ->
  <<Start:Loc/binary, _:64/native-integer, End/binary>> = Bin,
  <<Start/binary, Value:64/native-integer, End/binary>>.

buffer_get_int(Bin, Loc) ->
  <<_Start:Loc/binary, Value:64/native-integer, _End/binary>> = Bin,
  Value.

buffer_set_double(Bin, Loc, Value) ->
  <<Start:Loc/binary, _:64/native-float, End/binary>> = Bin,
  <<Start/binary, Value:64/native-float, End/binary>>.

buffer_get_double(Bin, Loc) ->
  <<_Start:Loc/binary, Value:64/native-float, _End/binary>> = Bin,
  Value.

buffer_set_string(Bin, Loc, Value) ->
  ValueAsBin = if
    is_binary(Value) -> Value;
    true -> unicode:characters_to_binary(Value)
  end,
  Size = byte_size(ValueAsBin),
  <<Start:Loc/binary, _:Size/binary, End/binary>> = Bin,
  <<Start/binary, ValueAsBin/binary, End/binary>>.

buffer_get_string(Bin, Loc, Len) ->
  <<_Start:Loc/binary, Value:Len/binary, _End/binary>> = Bin,
  Value.
