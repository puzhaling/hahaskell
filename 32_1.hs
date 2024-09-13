numWithItsSquare :: Int -> [(Int, Int)]
numWithItsSquare n = do
  value <- [1 .. n]
  return (value, value^2)
