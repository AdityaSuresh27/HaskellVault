{-  
   Function: `div1`  
   Type: `Int -> Int`  
   Description:  
   Performs integer division of a number by 10.  
-}  

div1 :: Int -> Int  
div1 n = n `div` 10  

{-  
   Function: `rem_add`  
   Type: `Int -> Int -> Int`  
   Description:  
   Adds the last digit of `n` to `y`.  
-}  

rem_add :: Int -> Int -> Int  
rem_add y n = y + (n `mod` 10)  

{-  
   Function: `div_main`  
   Type: `Int -> Int -> Int`  
   Description:  
   Recursively sums the digits of a number until a single-digit result is obtained.  
   If `n` reduces to 0 but `y` is greater than 9, the process repeats with `y`.  
-}  

div_main :: Int -> Int -> Int  
div_main y n  
    | n == 0 && y <= 9 = y  
    | y > 9 && n == 0 = div_main 0 y  
    | otherwise = div_main (rem_add y n) (div1 n)  

main :: IO ()  
main = do  
    putStrLn "Input1"  
    inp <- getLine  
    let inp1 = read inp :: Int  
    print (div_main 0 inp1)  
