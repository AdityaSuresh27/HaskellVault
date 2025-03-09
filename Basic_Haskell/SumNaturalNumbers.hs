
{-  
   Function: `nat`  
   Type: `Int -> Int -> Int`  
   Description:  
   Computes the sum of natural numbers from `x` to `n` using recursion.  
  (P.S. I know the formula, n*(n+1)/2, is easier, I am doing this to show and practice recursion)
-}  

nat :: Int -> Int -> Int  
nat n x  
    | n == x = x  
    | otherwise = x + nat n (x + 1)  

main :: IO ()  
main = do  
    inp <- getLine  
    let inp1 = read inp :: Int  
    print (nat inp1 1)  
