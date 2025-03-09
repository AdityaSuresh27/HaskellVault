{- 
   Function: `applyFunctions`
   Type: `[a -> b] -> a -> [b]`
   Description: 
   Given a list of functions and a single value, apply each function to the value 
   and return a list of results.

   Question:
   Implement a function `applyFunctions` that takes a list of functions and an 
   input value, then applies each function to the value and returns a list of results.
-}

applyFunctions :: [a -> b] -> a -> [b]
applyFunctions [] _ = []
applyFunctions (x:xs) a = [x a] ++ applyFunctions xs a

main :: IO ()
main = do
  print (applyFunctions [(+10), (*2)] 3)
