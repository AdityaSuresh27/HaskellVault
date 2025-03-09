{-  
   Function: `map1`  
   Type: `(a -> b) -> [a] -> [b]`  
   Description:  
   Implements a custom version of the `map` function, applying a given function to  
   each element of a list and returning a new list with the transformed elements.  
-}  

map1 :: (a -> b) -> [a] -> [b]  
map1 _ [] = []  
map1 f (x:xs) = f x : map1 f xs  

main :: IO ()  
main = do  
  print (map1 (*2) [1, 2, 3, 4])  
  print (map1 show [1, 2, 3, 4])  
