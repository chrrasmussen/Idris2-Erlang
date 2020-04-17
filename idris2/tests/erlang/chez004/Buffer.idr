import Erlang.Data.Buffer
import Erlang.System.File

main : IO ()
main
    = do buf <- newBuffer 100
         s <- rawSize buf
         printLn s

         setInt buf 1 94
         val <- getInt buf 1
         printLn val

         setDouble buf 10 94.42
         val <- getDouble buf 10
         printLn val

         setString buf 20 "Hello there!"
         val <- getString buf 20 5
         printLn val

         val <- getString buf 26 6
         printLn val

         ds <- bufferData buf
         printLn ds

         Right f <- openBinaryFile "test.buf" WriteTruncate
             | Left err => putStrLn "File error on write"
         Right _ <- writeBufferToFile f buf 100
             | Left err => do putStrLn "Buffer write fail"
                              closeFile f
         closeFile f

         Right f <- openBinaryFile "test.buf" Read
             | Left err => putStrLn "File error on read"
         buf2 <- newBuffer 100
         Right _ <- readBufferFromFile f buf2 100
             | Left err => do putStrLn "Buffer read fail"
                              closeFile f
         closeFile f

         ds <- bufferData buf2
         printLn ds

         Right f <- openBinaryFile "test.buf" Read
             | Left err => putStrLn "File error on read"
         buf3 <- newBuffer 99
         Right _ <- readBufferFromFile f buf3 100
             | Left err => do putStrLn "Buffer read fail"
                              closeFile f
         closeFile f

