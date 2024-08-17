toInts :: String -> [Int]
toInts list = map read (lines list)

main :: IO () 
main = do
  inputs <- getContents
  let ints = toInts inputs
  let squares = map (^2) ints
  print (sum squares)
