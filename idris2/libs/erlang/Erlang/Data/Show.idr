module Erlang.Data.Show

import Erlang.Data
import Erlang.Data.Conversion
import Erlang.IO


%default total


showSep : String -> List String -> String
showSep sep [] = ""
showSep sep [x] = x
showSep sep (x :: xs) = x ++ sep ++ showSep sep xs

export
Show ErlTerm where
  show _ = "<Erlang Term>"

export
Show ErlPid where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "erlang" "pid_to_list" [x]
    pure ("#Pid" ++ str)

export
Show ErlRef where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "erlang" "ref_to_list" [x]
    pure str

export
Show ErlPort where
  show x = unsafePerformIO $ do
    MkErlCharlist str <- erlUnsafeCall ErlCharlist "erlang" "port_to_list" [x]
    pure str

export
Show ErlAtom where
  show (MkErlAtom x) = "'" ++ x ++ "'"

export
Show ErlBinary where
  show (MkErlBinary x) = "<<" ++ show x ++ ">>"

export
Show ErlCharlist where
  show (MkErlCharlist x) = show (erlUnsafeCast (List Int) x)

export
Show ErlNil where
  show [] = "[]"

export
(Show a, Show b) => Show (ErlCons a b) where
  show (x :: y) = "[" ++ show x ++ " | " ++ show y ++ "]"

export
Show (ErlList []) where
  show [] = "[]"

export
(Show x, Show (ErlList xs)) => Show (ErlList (x :: xs)) where
  show (x :: xs) = "[" ++ show x ++ " | " ++ show xs ++ "]"

export
Show ErlTuple0 where
  show MkErlTuple0 = "{}"

export
Show a => Show (ErlTuple1 a) where
  show (MkErlTuple1 x1) =
    "{" ++ showSep ", " [show x1] ++ "}"

export
(Show a, Show b) => Show (ErlTuple2 a b) where
  show (MkErlTuple2 x1 x2) =
    "{" ++ showSep ", " [show x1, show x2] ++ "}"

export
(Show a, Show b, Show c) => Show (ErlTuple3 a b c) where
  show (MkErlTuple3 x1 x2 x3) =
    "{" ++ showSep ", " [show x1, show x2, show x3] ++ "}"

export
(Show a, Show b, Show c, Show d) => Show (ErlTuple4 a b c d) where
  show (MkErlTuple4 x1 x2 x3 x4) =
    "{" ++ showSep ", " [show x1, show x2, show x3, show x4] ++ "}"

export
(Show a, Show b, Show c, Show d, Show e) => Show (ErlTuple5 a b c d e) where
  show (MkErlTuple5 x1 x2 x3 x4 x5) =
    "{" ++ showSep ", " [show x1, show x2, show x3, show x4, show x5] ++ "}"

export
Show ErlMap where
  show _ = "<Erlang Map>" -- TODO: Implement
