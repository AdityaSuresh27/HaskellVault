{-  
   Function: `rem1`  
   Type: `Int -> [a] -> Int -> [a]`  
   Description:  
   Removes every `n`-th element from a list, keeping track of the current index `i`.  
-}  

rem1 :: Int -> [a] -> Int -> [a]  
rem1 _ [] _ = []  
rem1 n (x:xs) i  
    | i == n = rem1 n xs 1  
    | otherwise = x : rem1 n xs (i + 1)  

main :: IO ()  
main = do  
    print (rem1 2 [1,2,3,4,5] 1)  
