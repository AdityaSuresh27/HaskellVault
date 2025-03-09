{-  
   Function: `dig`  
   Type: `Char -> String`  
   Description:  
   Converts a single digit character to its English word representation.  
-}  

dig :: Char -> String  
dig a  
    | a == '0' = "zero"  
    | a == '1' = "one"  
    | a == '2' = "two"  
    | a == '3' = "three"  
    | a == '4' = "four"  
    | a == '5' = "five"  
    | a == '6' = "six"  
    | a == '7' = "seven"  
    | a == '8' = "eight"  
    | a == '9' = "nine"  
    | otherwise = "bad"  

{-  
   Function: `dig_main`  
   Type: `String -> Int -> Int -> IO ()`  
   Description:  
   Recursively prints each digit of a string as its word representation.  
-}  

dig_main :: String -> Int -> Int -> IO ()  
dig_main string n i  
    | i == n = putStrLn "Done"  
    | otherwise = do  
        putStrLn (dig (string !! i))  
        dig_main string n (i + 1)  

main :: IO ()  
main = do  
    inp <- getLine  
    let inp1 = reverse inp  
    let n = length inp  
    dig_main inp1 n 0  
