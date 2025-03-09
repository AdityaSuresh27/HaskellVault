{-  
   Function: `prime`  
   Type: `Int -> Int -> Int`  
   Description:  
   Recursively checks if a number `x` is prime by testing divisibility  
   from `a` down to 1. Returns `1` if prime, `0` otherwise.  
-}  

prime :: Int -> Int -> Int  
prime x a  
    | a == 1 = 1  
    | x `mod` a == 0 = 0  
    | otherwise = prime x (a - 1)  

main :: IO ()  
main = do  
    if prime 2 1 == 1 then putStrLn "Prime number"  
    else return ()  

    print (prime 4 3)  
    print (prime 1117 1116)  
