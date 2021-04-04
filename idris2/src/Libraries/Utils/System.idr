module Libraries.Utils.System

import Erlang
import Erlang.System


export
softExitAtom : ErlAtom
softExitAtom = MkAtom "$idris_rts_exit"

exit : HasIO io => Int -> io a
exit code = do
  MkRaw x <- pure $ erlUnsafeCall (Raw a) "erlang" "exit" [MkTuple2 softExitAtom code]
  pure x

export partial
softExitWith : HasIO io => ExitCode -> io a
softExitWith ExitSuccess = exit 0
softExitWith (ExitFailure code) = exit code
