{- 
   Function: `filter1`
   Type: `(a -> Bool) -> [a] -> [a]`
   Description: 
   A custom implementation of the standard `filter` function in Haskell. 
   It takes a predicate function and a list, then returns a new list containing 
   only the elements that satisfy the predicate.

   Question:
   Implement a function `filter1` that mimics Haskell’s built-in `filter` function. 
   It should take a predicate function and a list, returning only the elements 
   that satisfy the predicate.
-}

filter1 :: (a -> Bool) -> [a] -> [a]
filter1 _ [] = []
filter1 f (x:xs) = if f x then x : filter1 f xs else filter1 f xs

main :: IO ()
main = do
  print (filter1 (>0) [-3, -2, 0, 1, 2, 3]) -- Should return [1,2,3]
  print (filter1 odd [1, 2, 3, 4, 5]) -- Should return [1,3,5]
