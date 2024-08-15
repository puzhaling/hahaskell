
fib :: Int -> Int 
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

main :: IO Int 
main = do
  n <- getLine
  return (fib (read n))

