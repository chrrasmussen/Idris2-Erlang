-module('Idris.Idris2.Idris.Syntax.Builtin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--pairname'/0,
  'un--nilName'/0,
  'un--mkpairname'/0,
  'un--mkdpairname'/0,
  'un--interpolateName'/0,
  'un--heqName'/0,
  'un--eqName'/0,
  'un--dpairname'/0,
  'un--consName'/0
]).
'un--pairname'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--builtinNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"Pair"/utf8>>}}}.
'un--nilName'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--preludeNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"Nil"/utf8>>}}}.
'un--mkpairname'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--builtinNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"MkPair"/utf8>>}}}.
'un--mkdpairname'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--dpairNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"MkDPair"/utf8>>}}}.
'un--interpolateName'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--preludeNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"interpolate"/utf8>>}}}.
'un--heqName'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--builtinNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"~=~"/utf8>>}}}.
'un--eqName'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--builtinNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"==="/utf8>>}}}.
'un--dpairname'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--dpairNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"DPair"/utf8>>}}}.
'un--consName'() -> {'Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--preludeNS'()), {'Core.Name.UN', {'Core.Name.Basic', <<"::"/utf8>>}}}.
