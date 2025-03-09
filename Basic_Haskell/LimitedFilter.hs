{- 
   Function: `limitedFilter`
   Type: `(a -> Bool) -> Int -> [a] -> [a]`
   Description: 
   Filters elements from a list based on a predicate while allowing a limited 
   number of non-matching elements to be skipped before stopping.

   Question:
   Implement a function `limitedFilter` that takes a predicate, a limit, and a list. 
   The function should include elements that satisfy the predicate while skipping 
   up to a given number of non-matching elements.
-}

limitedFilter :: (a -> Bool) -> Int -> [a] -> [a]
limitedFilter _ _ [] = []
limitedFilter f 0 xs = xs
limitedFilter f limit (x:xs)
  | f x        = x : limitedFilter f limit xs
  | otherwise  = limitedFilter f (limit - 1) xs

main :: IO ()
main = do
  print (limitedFilter (> 0) 10 [-3..3])
  print (limitedFilter (> 0) 3 [-2, 2, -3, 3, -4, 4, -5, 5])
