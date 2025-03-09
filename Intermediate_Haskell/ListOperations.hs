{-  
   Function: `map1`  
   Type: `(a -> b) -> [a] -> [b]`  
   Description:  
   A custom implementation of `map` that applies a function to each element in a list.  
-}  

map1 :: (a -> b) -> [a] -> [b]  
map1 f [] = []  
map1 f (x:xs) = f x : map1 f xs  

{-  
   Function: `filter1`  
   Type: `(a -> Bool) -> [a] -> [a]`  
   Description:  
   A custom implementation of `filter` that selects elements satisfying a predicate.  
-}  

filter1 :: (a -> Bool) -> [a] -> [a]  
filter1 p [] = []  
filter1 p (x:xs) = if p x then x : filter1 p xs else filter1 p xs  

{-  
   Function: `mymap`  
   Type: `(a -> b) -> [a] -> [b]`  
   Description:  
   Another version of `map` using list comprehensions.  
-}  

mymap :: (a -> b) -> [a] -> [b]  
mymap f xs = [f x | x <- xs]  

{-  
   Function: `filter`  
   Type: `(a -> Bool) -> [a] -> [a]`  
   Description:  
   A list comprehension version of `filter`.  
-}  

filter :: (a -> Bool) -> [a] -> [a]  
filter p xs = [x | x <- xs, p x]  

{-  
   Function: `myconcat`  
   Type: `[[a]] -> [a]`  
   Description:  
   Concatenates a list of lists into a single list using list comprehension.  
-}  

myconcat :: [[a]] -> [a]  
myconcat xss = [x | xs <- xss, x <- xs]  

{-  
   Function: `triads`  
   Type: `Int -> [(Int, Int, Int)]`  
   Description:  
   Generates all Pythagorean triplets (x, y, z) such that `x^2 + y^2 = z^2`,  
   for numbers up to `n`.  
-}  

triads :: Int -> [(Int, Int, Int)]  
triads n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x*x + y*y == z*z]  

main :: IO ()  
main = do  
    print (map1 (*2) [1, 2, 3, 4])  
    print (filter1 even [1..10])  
    print (mymap show [1, 2, 3, 4])  
    print (filter (>2) [1, 2, 3, 4, 5])  
    print (myconcat [[1,2,3], [4,5], [6]])  
    print (triads 20)  
