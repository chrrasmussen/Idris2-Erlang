-module('Idris.Idris2.System.File.Virtual').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--stdout'/0,
  'un--stdin'/0,
  'un--stderr'/0,
  'un--prim__stdout'/0,
  'un--prim__stdin'/0,
  'un--prim__stderr'/0
]).
'un--stdout'() -> ('un--prim__stdout'()).
'un--stdin'() -> ('un--prim__stdin'()).
'un--stderr'() -> ('un--prim__stderr'()).
'un--prim__stdout'() -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Virtual.prim__stdout"/utf8>>})).
'un--prim__stdin'() -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Virtual.prim__stdin"/utf8>>})).
'un--prim__stderr'() -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Virtual.prim__stderr"/utf8>>})).
