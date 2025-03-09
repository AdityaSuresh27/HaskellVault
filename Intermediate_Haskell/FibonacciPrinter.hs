{-  
   Function: `fib`  
   Type: `Int -> Int`  
   Description:  
   Computes the Fibonacci sequence recursively.  
-}  

fib :: Int -> Int  
fib x  
    | x == 0 = 1  
    | x == 1 = 1  
    | otherwise = fib (x - 1) + fib (x - 2)  

{-  
   Function: `arr`  
   Type: `Int -> Int -> IO ()`  
   Description:  
   Recursively prints the Fibonacci sequence up to `n` terms, starting from `y`.  
-}  

arr :: Int -> Int -> IO ()  
arr n y = do  
    if y == n then  
        return ()  
    else do  
        print (fib y)  
        arr n (y + 1)  

main :: IO ()  
main = do  
    arr 5 0  
