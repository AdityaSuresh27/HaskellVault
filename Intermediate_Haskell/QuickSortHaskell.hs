{-  
   Function: `sor`  
   Type: `Ord a => [a] -> [a]`  
   Description:  
   Implements the QuickSort algorithm to sort a list in ascending order.  
-}  

sor :: (Ord a) => [a] -> [a]  
sor [] = []  
sor (x:xs) =  
    let lef = filter (<= x) xs  
        rig = filter (> x) xs  
    in sor lef ++ [x] ++ sor rig  

main :: IO ()  
main = do  
    print (sor [3, 2, 1])  
