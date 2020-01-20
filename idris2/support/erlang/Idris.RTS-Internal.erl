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
-export([file_open/3, file_close/1, file_read_line/1, file_write_line/2, file_eof/1]).
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


% Either
% TODO: Hard-coded data constructor
% Must match the behavior of `Compiler.Erlang.Common.genConstructor` and `Compiler.Erlang.Common.genName`

-type idris_either(Left, Right) :: {'Idris.Prelude.Left', erased, erased, Left} | {'Idris.Prelude.Right', erased, erased, Right}.

-spec idris_either_left(any()) -> idris_either(any(), any()).
idris_either_left(X) -> {'Idris.Prelude.Left', erased, erased, X}.

-spec idris_either_right(any()) -> idris_either(any(), any()).
idris_either_right(X) -> {'Idris.Prelude.Right', erased, erased, X}.


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


% Files

% Relevant docs: http://erlang.org/doc/man/file.html

-type idris_handle() :: file:io_device() | undefined.

% TODO: Support more error codes
% Relevant implementation details:
% - https://github.com/edwinb/Idris2/blob/4e019d80937a2209cc920bb651fd088b12406463/libs/base/System/File.idr#L48-L53
% - https://github.com/edwinb/Idris2/blob/4e019d80937a2209cc920bb651fd088b12406463/support/chez/support.ss#L99-L107
-define(IDRIS_ERROR_CODE_UNKNOWN, 256).
-type idris_error_code() :: ?IDRIS_ERROR_CODE_UNKNOWN.


-spec file_mode_flags(iolist()) -> [file:mode()].
file_mode_flags(Mode) ->
  case unicode:characters_to_binary(Mode) of
    <<"r">> -> [read];
    <<"w">> -> [write];
    <<"a">> -> [append];
    <<"r+">> -> [read, write];
    _ -> []
  end.

-spec file_bin_flags(idris_bool()) -> [file:mode()].
file_bin_flags(Bin) ->
  case Bin of
    ?IDRIS_TRUE -> [binary];
    _ -> []
  end.

-spec file_open(file:name_all(), iolist(), idris_bool()) -> idris_either(idris_error_code(), idris_handle()).
file_open(File, Mode, Bin) ->
  Flags = file_mode_flags(Mode) ++ file_bin_flags(Bin),
  case file:open(File, Flags) of
    {ok, Pid} -> idris_either_right(Pid);
    _ -> idris_either_left(?IDRIS_ERROR_CODE_UNKNOWN)
  end.

-spec file_close(idris_handle()) -> idris_unit().
file_close(Pid) ->
  file:close(Pid),
  ?IDRIS_UNIT.

-spec file_read_line(idris_handle()) -> idris_either(idris_error_code(), binary()).
file_read_line(Pid) ->
  case file:read_line(Pid) of
    {ok, Line} -> idris_either_right(Line);
    eof -> idris_either_right(<<>>);
    _ -> idris_either_left(?IDRIS_ERROR_CODE_UNKNOWN)
  end.

-spec file_write_line(idris_handle(), binary()) -> idris_either(idris_error_code(), idris_unit()).
file_write_line(Pid, Bytes) ->
  case file:write(Pid, Bytes) of
    ok -> idris_either_right(?IDRIS_UNIT);
    _ -> idris_either_left(?IDRIS_ERROR_CODE_UNKNOWN)
  end.

% COPIED FROM: https://github.com/lenary/idris-erlang/blob/master/irts/idris_erlang_rts.erl
-spec file_eof(idris_handle()) -> idris_bool().
file_eof(undefined) ->
  ?IDRIS_TRUE;
file_eof(Handle) ->
  case file:read(Handle, 1) of
    eof -> ?IDRIS_TRUE;
    {ok, _} ->
      case file:position(Handle, {cur, -1}) of
        {ok, _} -> ?IDRIS_FALSE;
        {error, _} -> ?IDRIS_TRUE % Error Scanning Back => EOF
      end;
    {error, _} -> ?IDRIS_TRUE % Error => EOF
  end.


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
