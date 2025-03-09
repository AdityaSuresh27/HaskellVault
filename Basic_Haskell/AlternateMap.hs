{-  
   Function: `otherMap`  
   Type: `(a -> b) -> (a -> b) -> [a] -> [b]`  
   Description:  
   A custom mapping function that alternates between two functions when transforming  
   elements of a list. The first function is applied to the first element,  
   the second function to the next, and this pattern continues.  
-}  

otherMap :: (a -> b) -> (a -> b) -> [a] -> [b]  
otherMap _ _ [] = []  
otherMap f1 _ (x:[]) = [f1 x]  
otherMap f1 f2 (x:y:xs) = (f1 x) : (f2 y) : (otherMap f1 f2 xs)  

main :: IO ()  
main = do  
  print (otherMap (*2) (*3) [1, 2, 3, 4, 5])  
  print (otherMap show (\x -> "(" ++ show x ++ ")") [1, 2, 3, 4, 5, 6])  
