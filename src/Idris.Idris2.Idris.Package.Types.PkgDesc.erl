-module('Idris.Idris2.Idris.Package.Types.PkgDesc').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.version'/1,
  'un--.sourceloc'/1,
  'un--.sourcedir'/1,
  'un--.readme'/1,
  'un--.preinstall'/1,
  'un--.preclean'/1,
  'un--.prebuild'/1,
  'un--.postinstall'/1,
  'un--.postclean'/1,
  'un--.postbuild'/1,
  'un--.outputdir'/1,
  'un--.options'/1,
  'un--.name'/1,
  'un--.modules'/1,
  'un--.maintainers'/1,
  'un--.mainmod'/1,
  'un--.license'/1,
  'un--.library'/1,
  'un--.langversion'/1,
  'un--.homepage'/1,
  'un--.executable'/1,
  'un--.depends'/1,
  'un--.builddir'/1,
  'un--.bugtracker'/1,
  'un--.brief'/1,
  'un--.authors'/1,
  'un--version'/1,
  'un--sourceloc'/1,
  'un--sourcedir'/1,
  'un--readme'/1,
  'un--preinstall'/1,
  'un--preclean'/1,
  'un--prebuild'/1,
  'un--postinstall'/1,
  'un--postclean'/1,
  'un--postbuild'/1,
  'un--outputdir'/1,
  'un--options'/1,
  'un--name'/1,
  'un--modules'/1,
  'un--maintainers'/1,
  'un--mainmod'/1,
  'un--license'/1,
  'un--library'/1,
  'un--langversion'/1,
  'un--homepage'/1,
  'un--executable'/1,
  'un--depends'/1,
  'un--builddir'/1,
  'un--bugtracker'/1,
  'un--brief'/1,
  'un--authors'/1
]).
'un--.version'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V2 end.
'un--.sourceloc'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V10 end.
'un--.sourcedir'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V18 end.
'un--.readme'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V8 end.
'un--.preinstall'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V23 end.
'un--.preclean'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V25 end.
'un--.prebuild'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V21 end.
'un--.postinstall'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V24 end.
'un--.postclean'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V26 end.
'un--.postbuild'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V22 end.
'un--.outputdir'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V20 end.
'un--.options'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V17 end.
'un--.name'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V1 end.
'un--.modules'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V13 end.
'un--.maintainers'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V5 end.
'un--.mainmod'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V14 end.
'un--.license'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V6 end.
'un--.library'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V16 end.
'un--.langversion'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V3 end.
'un--.homepage'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V9 end.
'un--.executable'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V15 end.
'un--.depends'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V12 end.
'un--.builddir'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V19 end.
'un--.bugtracker'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V11 end.
'un--.brief'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V7 end.
'un--.authors'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V4 end.
'un--version'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V2 end.
'un--sourceloc'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V10 end.
'un--sourcedir'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V18 end.
'un--readme'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V8 end.
'un--preinstall'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V23 end.
'un--preclean'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V25 end.
'un--prebuild'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V21 end.
'un--postinstall'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V24 end.
'un--postclean'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V26 end.
'un--postbuild'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V22 end.
'un--outputdir'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V20 end.
'un--options'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V17 end.
'un--name'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V1 end.
'un--modules'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V13 end.
'un--maintainers'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V5 end.
'un--mainmod'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V14 end.
'un--license'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V6 end.
'un--library'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V16 end.
'un--langversion'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V3 end.
'un--homepage'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V9 end.
'un--executable'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V15 end.
'un--depends'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V12 end.
'un--builddir'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V19 end.
'un--bugtracker'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V11 end.
'un--brief'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V7 end.
'un--authors'(V0) -> case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V4 end.
