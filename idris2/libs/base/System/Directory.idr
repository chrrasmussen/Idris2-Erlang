module System.Directory

import public System.File

DirPtr : Type
DirPtr = AnyPtr

support : String -> String
support fn = "C:" ++ fn ++ ", libidris2_support"

%foreign support "idris2_fileErrno"
prim_fileErrno : PrimIO Int

returnError : IO (Either FileError a)
returnError
    = do err <- primIO prim_fileErrno
         case err of
              0 => pure $ Left FileReadError
              1 => pure $ Left FileWriteError
              2 => pure $ Left FileNotFound
              3 => pure $ Left PermissionDenied
              4 => pure $ Left FileExists
              _ => pure $ Left (GenericFileError (err-5))

ok : a -> IO (Either FileError a)
ok x = pure (Right x)

%foreign support "idris2_currentDirectory"
prim_currentDir : PrimIO (Ptr String)

%foreign support "idris2_changeDir"
prim_changeDir : String -> PrimIO Int

%foreign support "idris2_createDir"
prim_createDir : String -> PrimIO Int

%foreign support "idris2_openDir"
prim_openDir : String -> PrimIO DirPtr

%foreign support "idris2_closeDir"
prim_closeDir : DirPtr -> PrimIO ()

%foreign support "idris2_removeDir"
prim_removeDir : String -> PrimIO ()

%foreign support "idris2_nextDirEntry"
prim_dirEntry : DirPtr -> PrimIO (Ptr String)

data Directory : Type where
     MkDir : DirPtr -> Directory

export
createDir : String -> IO (Either FileError ())
createDir dir
    = do res <- primIO (prim_createDir dir)
         if res == 0
            then ok ()
            else returnError

export
changeDir : String -> IO Bool
changeDir dir
    = do ok <- primIO (prim_changeDir dir)
         pure (ok == 0)

export
currentDir : IO (Maybe String)
currentDir
    = do res <- primIO prim_currentDir
         if prim__nullPtr res /= 0
            then pure Nothing
            else pure (Just (prim__getString res))

export
removeDir : String -> IO ()
removeDir dirName = primIO (prim_removeDir dirName)

openDir : String -> IO (Either FileError Directory)
openDir d
    = do res <- primIO (prim_openDir d)
         if prim__nullAnyPtr res /= 0
            then returnError
            else ok (MkDir res)

closeDir : Directory -> IO ()
closeDir (MkDir d) = primIO (prim_closeDir d)

dirEntry : Directory -> IO (Either FileError String)
dirEntry (MkDir d)
    = do res <- primIO (prim_dirEntry d)
         if prim__nullPtr res /= 0
            then returnError
            else ok (prim__getString res)

getEntries : Directory -> IO (List String)
getEntries d
    = do Right f <- dirEntry d
             | Left err => pure []
         ds <- assert_total $ getEntries d
         pure (f :: ds)

export
dirEntries : String -> IO (Either FileError (List String))
dirEntries dir
    = do Right d <- openDir dir
             | Left err => pure (Left err)
         ds <- getEntries d
         closeDir d
         pure (Right ds)

export
dirExists : String -> IO Bool
dirExists dir = do Right d <- openDir dir
                       | Left _ => pure False
                   closeDir d
                   pure True
