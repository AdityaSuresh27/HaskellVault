import Data.Char (isDigit)

{-  
   Function: `separate`  
   Type: `String -> String -> String -> (String, String)`  
   Description:  
   Separates digits and non-digit characters from a string,  
   accumulating digits in `numb` and letters in `wor`.  
-}  

separate :: String -> String -> String -> (String, String)  
separate "" numb wor = (numb, wor)  
separate (s:sx) numb wor  
    | isDigit s = separate sx (numb ++ [s]) wor  
    | otherwise = separate sx numb (wor ++ [s])  

main :: IO ()  
main = do  
    print (separate "abc123def456" "" "")  
