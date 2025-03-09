{-  
   Function: `factorial`  
   Type: `Int -> Int`  
   Description:  
   Computes the factorial of a given non-negative integer using recursion.  
-}  

factorial :: Int -> Int  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

main :: IO ()  
main = do  
    putStrLn ("Hello " ++ show 2)  
    inp <- getLine  
    let inp1 = read inp :: Int  
    print (factorial inp1)  
