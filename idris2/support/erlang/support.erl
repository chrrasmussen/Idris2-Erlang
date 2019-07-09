% Unit

-define(IDRIS_RTS_UNIT, {}).

-type idris_rts_unit() :: ?IDRIS_RTS_UNIT.


% Booleans

-define(IDRIS_RTS_TRUE, 1).
-define(IDRIS_RTS_FALSE, 0).

-type idris_rts_bool() :: ?IDRIS_RTS_TRUE | ?IDRIS_RTS_FALSE.

-spec idris_rts_bool_to_int(boolean()) -> idris_rts_bool().
idris_rts_bool_to_int(false) -> ?IDRIS_RTS_FALSE;
idris_rts_bool_to_int(_) -> ?IDRIS_RTS_TRUE.


% Either
% TODO: Hard-coded data constructor
% Must match the behavior of `Compiler.Erlang.Common.genConstructor` and `Compiler.Erlang.Common.genName`

-type idris_rts_either(Left, Right) :: {'Idris.Prelude.Left', erased, erased, Left} | {'Idris.Prelude.Right', erased, erased, Right}.

-spec idris_rts_either_left(any()) -> idris_rts_either(any(), any()).
idris_rts_either_left(X) -> {'Idris.Prelude.Left', erased, erased, X}.

-spec idris_rts_either_right(any()) -> idris_rts_either(any(), any()).
idris_rts_either_right(X) -> {'Idris.Prelude.Right', erased, erased, X}.


% Arithmetic

-spec idris_rts_int_pow(integer(), integer()) -> integer().
idris_rts_int_pow(N, M) -> idris_rts_int_pow(N, M, 1).

-spec idris_rts_int_pow(integer(), integer(), integer()) -> integer().
idris_rts_int_pow(_, 0, R) -> R;
idris_rts_int_pow(N, M, R) -> idris_rts_int_pow(N, M - 1, R * N).

idris_rts_int_add(X, Y, Bits) -> (X + Y) rem idris_rts_int_pow(2, Bits).
idris_rts_int_sub(X, Y, Bits) -> (X - Y) rem idris_rts_int_pow(2, Bits).
idris_rts_int_mult(X, Y, Bits) -> (X * Y) rem idris_rts_int_pow(2, Bits).
idris_rts_int_div(X, Y, Bits) -> (X div Y) rem idris_rts_int_pow(2, Bits).


% Strings

idris_rts_unicode_string_lt(X, Y) -> idris_rts_bool_to_int(unicode:characters_to_binary(X) < unicode:characters_to_binary(Y)).
idris_rts_unicode_string_lte(X, Y) -> idris_rts_bool_to_int(unicode:characters_to_binary(X) =< unicode:characters_to_binary(Y)).
idris_rts_unicode_string_eq(X, Y) -> idris_rts_bool_to_int(unicode:characters_to_binary(X) =:= unicode:characters_to_binary(Y)).
idris_rts_unicode_string_gte(X, Y) -> idris_rts_bool_to_int(unicode:characters_to_binary(X) >= unicode:characters_to_binary(Y)).
idris_rts_unicode_string_gt(X, Y) -> idris_rts_bool_to_int(unicode:characters_to_binary(X) > unicode:characters_to_binary(Y)).


% NOTE: Must be total
idris_rts_unicode_string_length(Str) -> string:length(Str).

% NOTE: Is allowed to be partial
idris_rts_unicode_string_head(Str) ->
  [Hd | _] = string:next_grapheme(Str),
  Hd.

% NOTE: Is allowed to be partial
idris_rts_unicode_string_tail(Str) ->
  [_ | Tl] = string:next_grapheme(Str),
  Tl.

% NOTE: Is allowed to be partial
idris_rts_unicode_string_index(Str, Index) ->
  CharStr = string:slice(Str, Index, 1),
  [Hd | _] = string:next_grapheme(CharStr),
  Hd.

% NOTE: Must be total
idris_rts_unicode_string_cons(Char, Str) -> [Char | Str].

% NOTE: Must be total
idris_rts_unicode_string_append(Str1, Str2) -> [Str1 | Str2].

% NOTE: Must be total
idris_rts_unicode_string_reverse(Str) -> string:reverse(Str).

% NOTE: Must be total
idris_rts_unicode_string_substr(Start, Len, Str) -> string:substr(Str, Start, Len).


% Casts

idris_rts_integer_to_int(Integer) -> Integer.
idris_rts_integer_to_double(Integer) -> float(Integer).
idris_rts_integer_to_string(Integer) -> integer_to_binary(Integer).

idris_rts_int_to_integer(Int) -> Int.
idris_rts_int_to_double(Int) -> float(Int).
idris_rts_int_to_char(Char) -> Char. % NOTE: Char is an integer
idris_rts_int_to_string(Int) -> integer_to_binary(Int).

idris_rts_double_to_integer(Double) -> trunc(Double).
idris_rts_double_to_int(Double) -> trunc(Double).
idris_rts_double_to_string(Double) -> float_to_binary(Double, [{decimals, 10}, compact]).

% A codepoint is represented by an integer between 0x0 and 0x10FFFF.
% Return "replacement character" (0xFFFD) if character is not recognized.
% https://en.wikipedia.org/wiki/Specials_(Unicode_block)
idris_rts_char_to_integer(Char) when is_integer(Char) andalso Char >= 0 andalso Char =< 1114111 -> Char;
idris_rts_char_to_integer(_) -> 65533.
idris_rts_char_to_int(Char) -> idris_rts_char_to_integer(Char).
idris_rts_char_to_string(Char) -> [Char].

idris_rts_string_to_integer(Str) ->
  case string:to_integer(Str) of
    {error, no_integer} ->
      0;
    {Num, StrRest} ->
      case string:next_grapheme(StrRest) of
        [] -> Num;
        _ -> 0
      end
  end.
idris_rts_string_to_int(Str) -> idris_rts_string_to_integer(Str). % TODO: Should `Int` be capped at a certain precision?
idris_rts_string_to_double(Str) ->
  case string:to_float(Str) of
    {error, no_float} ->
      Integer = idris_rts_string_to_integer(Str),
      float(Integer);
    {Num, StrRest} ->
      case string:next_grapheme(StrRest) of
        [] -> Num;
        _ -> 0.0
      end
  end.


% IO

idris_rts_io_unicode_put_str(Str) ->
  io:format("~ts", [Str]).

idris_rts_io_unicode_get_str(Prompt) ->
  Line = io:get_line(Prompt),
  string:trim(Line, trailing, "\n").


% Files

% Relevant docs: http://erlang.org/doc/man/file.html

-type idris_rts_handle() :: file:io_device() | undefined.

% TODO: Support more error codes
% Relevant implementation details:
% - https://github.com/edwinb/Idris2/blob/4e019d80937a2209cc920bb651fd088b12406463/libs/base/System/File.idr#L48-L53
% - https://github.com/edwinb/Idris2/blob/4e019d80937a2209cc920bb651fd088b12406463/support/chez/support.ss#L99-L107
-define(IDRIS_RTS_ERROR_CODE_UNKNOWN, 256).
-type idris_rts_error_code() :: ?IDRIS_RTS_ERROR_CODE_UNKNOWN.


-spec idris_rts_file_mode_flags(iolist()) -> [file:mode()].
idris_rts_file_mode_flags(Mode) ->
  case unicode:characters_to_binary(Mode) of
    <<"r">> -> [read];
    <<"w">> -> [write];
    <<"a">> -> [append];
    <<"r+">> -> [read, write];
    _ -> []
  end.

-spec idris_rts_file_bin_flags(idris_rts_bool()) -> [file:mode()].
idris_rts_file_bin_flags(Bin) ->
  case Bin of
    ?IDRIS_RTS_TRUE -> [binary];
    _ -> []
  end.

-spec idris_rts_file_open(file:name_all(), iolist(), idris_rts_bool()) -> idris_rts_either(idris_rts_error_code(), idris_rts_handle()).
idris_rts_file_open(File, Mode, Bin) ->
  Flags = idris_rts_file_mode_flags(Mode) ++ idris_rts_file_bin_flags(Bin),
  case file:open(File, Flags) of
    {ok, Pid} -> idris_rts_either_right(Pid);
    _ -> idris_rts_either_left(?IDRIS_RTS_ERROR_CODE_UNKNOWN)
  end.

-spec idris_rts_file_close(idris_rts_handle()) -> idris_rts_unit().
idris_rts_file_close(Pid) ->
  file:close(Pid),
  ?IDRIS_RTS_UNIT.

-spec idris_rts_file_read_line(idris_rts_handle()) -> idris_rts_either(idris_rts_error_code(), binary()).
idris_rts_file_read_line(Pid) ->
  case file:read_line(Pid) of
    {ok, Line} -> idris_rts_either_right(Line);
    eof -> idris_rts_either_right(<<>>);
    _ -> idris_rts_either_left(?IDRIS_RTS_ERROR_CODE_UNKNOWN)
  end.

-spec idris_rts_file_write_line(idris_rts_handle(), binary()) -> idris_rts_either(idris_rts_error_code(), idris_rts_unit()).
idris_rts_file_write_line(Pid, Bytes) ->
  case file:write(Pid, Bytes) of
    ok -> idris_rts_either_right(?IDRIS_RTS_UNIT);
    _ -> idris_rts_either_left(?IDRIS_RTS_ERROR_CODE_UNKNOWN)
  end.

% COPIED FROM: https://github.com/lenary/idris-erlang/blob/master/irts/idris_erlang_rts.erl
-spec idris_rts_file_eof(idris_rts_handle()) -> idris_rts_bool().
idris_rts_file_eof(undefined) ->
  ?IDRIS_RTS_TRUE;
idris_rts_file_eof(Handle) ->
  case file:read(Handle, 1) of
    eof -> ?IDRIS_RTS_TRUE;
    {ok, _} ->
      case file:position(Handle, {cur, -1}) of
        {ok, _} -> ?IDRIS_RTS_FALSE;
        {error, _} -> ?IDRIS_RTS_TRUE % Error Scanning Back => EOF
      end;
    {error, _} -> ?IDRIS_RTS_TRUE % Error => EOF
  end.
