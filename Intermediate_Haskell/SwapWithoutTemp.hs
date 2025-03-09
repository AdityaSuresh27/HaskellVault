{-  
   Function: `mainSwapNoTemp`  
   Type: `IO ()`  
   Description:  
   Reads two numbers from the user and swaps them without using a temporary variable.  
   It utilizes arithmetic operations (addition and subtraction) to perform the swap.  
-}  

mainSwapNoTemp :: IO ()  
mainSwapNoTemp = do  
    putStrLn "Enter the first number:"  
    x <- readLn :: IO Int  
    putStrLn "Enter the second number:"  
    y <- readLn :: IO Int  
    let x' = x + y       -- Step 1: Add x and y, store in x'  
        y' = x' - y      -- Step 2: Subtract y from x', giving the original value of x, store in y'  
        x'' = x' - y'    -- Step 3: Subtract the new y' (original x) from x', giving the original value of y, store in x''  
    putStrLn $ "After swapping: x = " ++ show x'' ++ ", y = " ++ show y'  

main :: IO ()  
main = mainSwapNoTemp  
