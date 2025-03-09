{- 
   Function: `leaveUntil`
   Type: `(a -> Bool) -> [a] -> [a]`
   Description: 
   Drops elements from the list until a condition is met, then returns the remaining list.

   Question:
   Implement a function `leaveUntil` that takes a predicate and a list. 
   The function should remove elements from the front of the list until it finds 
   an element that satisfies the predicate, then return the rest of the list.
-}

leaveUntil :: (a -> Bool) -> [a] -> [a]
leaveUntil _ [] = []
leaveUntil f (x:xs)
  | f x       = x : xs
  | otherwise = leaveUntil f xs

main :: IO ()
main = do
  print (leaveUntil (< 5) [10, 7, 4, 1])         
  print (leaveUntil (\x -> x `rem` 2 == 0) [1..10]) 
  print (leaveUntil (== 0) [])                    
