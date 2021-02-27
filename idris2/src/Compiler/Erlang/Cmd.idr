module Compiler.Erlang.Cmd

import Data.Strings


%default total


escapeCmd : List String -> String
escapeCmd components = unwords (map escapeComponent components)
  where
    escapeChar : Char -> String
    escapeChar '\'' = "'\"'\"'"
    escapeChar c    = cast c
    escapeComponent : String -> String
    escapeComponent component = "'" ++ concat (map escapeChar (unpack component)) ++ "'"

evalErlangSourceCmd : (erl : String) -> (code : String) -> String
evalErlangSourceCmd erl code =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-eval", code]

pmapErlFun : String
pmapErlFun =
  """
  Collect = fun
    Collect([]) -> [];
    Collect([{Pid, MRef} | Next]) ->
      receive
        {Pid, Res} ->
          erlang:demonitor(MRef, [flush]),
          [{ok, Res} | Collect(Next)];
        {'DOWN', MRef, process, Pid, Reason} ->
          [{error, Reason} | Collect(Next)]
      end
    end,
    Pmap = fun(F, Es) ->
    Parent = self(),
    Running = [
      spawn_monitor(fun() -> Parent ! {self(), F(E)} end)
        || E <- Es],
    Collect(Running)
  end
  """


export
executeBeamCmd : (erl : String) -> (outputDir : String) -> (modName : String) -> String
executeBeamCmd erl outputDir modName =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-pa", outputDir, "-run", modName]

export
compileErlToBeamCmd : (erlc : String) -> (srcFiles : List String) -> (outputDir : String) -> String
compileErlToBeamCmd erlc srcFiles outputDir =
  escapeCmd $ [erlc, "-W0", "-o", outputDir] ++ srcFiles

erlShowPath : String -> String
erlShowPath = show -- The Show implementation is close enought to Erlang syntax

erlShowPaths : List String -> String
erlShowPaths = show -- The Show implementation is close enought to Erlang syntax

export
compileAbstrToBeamCmd : (erl : String) -> (srcFiles : List String) -> (outputDir : String) -> String
compileAbstrToBeamCmd erl srcFiles outputDir =
  let code =
        """
        \{pmapErlFun},
        CompileAbstr = fun(File, OutputDir) ->
          {ok, Forms} = file:consult(File),
          {ok, ModuleName, BinaryOrCode} = compile:noenv_forms(Forms, []),
          OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ ".beam"),
          file:write_file(OutputFile, BinaryOrCode)
        end,
        Pmap(fun(File) -> CompileAbstr(File, \{erlShowPath outputDir}) end, \{erlShowPaths srcFiles}),
        halt(0)
        """
  in evalErlangSourceCmd erl code

export
compileAbstrToErlCmd : (isMinified : Bool) -> (erl : String) -> (srcFiles : List String) -> (outputDir : String) -> String
compileAbstrToErlCmd isMinified erl srcFiles outputDir =
  let columnWidth : Int =
        if isMinified
          then 10000
          else 120
      prettyOpts =
        "[{paper, \{show columnWidth}}, {ribbon, \{show columnWidth}}]"
      code =
        """
        \{pmapErlFun},
        ModuleNameFromForms = fun(Forms) ->
          lists:foldl(
            fun
              ({attribute, _, module, ModuleName}, _Acc) -> {ok, ModuleName};
              (_, Acc) -> Acc
            end, not_found, Forms)
        end,
        GenerateErl = fun(File, OutputDir) ->
          {ok, Forms} = file:consult(File),
          {ok, ModuleName} = ModuleNameFromForms(Forms),
          OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ ".erl"),
          ErlangSource = erl_prettypr:format(erl_syntax:form_list(Forms), \{prettyOpts}),
          file:write_file(OutputFile, ErlangSource)
        end,
        Pmap(fun(File) -> GenerateErl(File, \{erlShowPath outputDir}) end, \{erlShowPaths srcFiles}),
        halt(0)
        """
  in evalErlangSourceCmd erl code
