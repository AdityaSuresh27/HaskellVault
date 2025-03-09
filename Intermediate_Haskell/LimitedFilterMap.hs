{- 
   Question: 
   Write a Haskell function `limitedFilterMap` that takes a filtering function, 
   a transformation function, a limit, and a list. The function should apply the 
   filter and transformation while reducing the limit for non-matching elements.
   Once the limit reaches zero, non-matching elements should be ignored.
-}

limitedFilterMap :: (Num t1, Eq t1, Eq t2) => (t2 -> Bool) -> (t2 -> a) -> t1 -> [t2] -> [a]
limitedFilterMap f1 f2 0 (x:xs) = [f2 x] ++ limitedFilterMap f1 f2 0 xs
limitedFilterMap _ _ _ [] = []

limitedFilterMap f1 f2 lim (x:xs)
  | xs == [] = if f1 x then [f2 x] else []
  | f1 x = [f2 x] ++ limitedFilterMap f1 f2 lim xs
  | otherwise = limitedFilterMap f1 f2 (lim - 1) xs

main :: IO ()
main = do
  print (limitedFilterMap (>0) (*2) 2 [-3, -2, 0, 1, 2, 3])
  print (limitedFilterMap odd negate 3 [1, 2, 3, 4, 5])
