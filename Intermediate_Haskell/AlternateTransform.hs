{- 
   Function: `alternateTransform`
   Type: `(a -> b) -> (a -> b) -> [a] -> [b]`
   Description: 
   Applies two functions alternately to elements of a list. The first function 
   is applied to the first element, the second function to the second element, 
   and so on.

   Question:
   Implement a function `alternateTransform` that takes two functions and a list, 
   applying the first function to odd-indexed elements (0-based) and the second 
   function to even-indexed elements. The result should be a new list with transformed values.
-}

alternateTransform :: (a -> b) -> (a -> b) -> [a] -> [b]
alternateTransform f1 f2 [] = []  -- Base case: empty list
alternateTransform f1 f2 [x] = [f1 x]  -- Single-element list case
alternateTransform f1 f2 (x:y:xs) = [f1 x, f2 y] ++ alternateTransform f1 f2 xs 

main :: IO ()
main = do
  print (alternateTransform (+10) (+100) [0,1,2,3,4])  -- Expected: [10,101,12,103,14]
  print (alternateTransform (+5) (+(-10)) [100,200,300,400,500])  -- Expected: [105,190,305,390,505]
