{-  
   Function: `sum1`  
   Type: `Int -> Int -> IO ()`  
   Description:  
   Takes two integers and prints their sum.  
-}  

sum1 :: Int -> Int -> IO ()  
sum1 x y = do  
    print (x + y)  

main :: IO ()  
main = do  
    putStrLn "Input:"  
    in1 <- getLine  
    in2 <- getLine  
    let inp1 = read in1 :: Int  
        inp2 = read in2 :: Int  
    sum1 inp1 inp2  
