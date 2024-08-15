areaGivenDiameter :: Double -> Double
areaGivenDiameter size = pi * (size / 2)^2

type Pizza = (Double, Double)

costPerCm :: Pizza -> Double
costPerCm (size, cost) = cost / areaGivenDiameter size

comparePizzas :: Pizza -> Pizza -> Pizza
comparePizzas p1 p2 = if costP1 < costP2
                      then p1
                      else p2
  where costP1 = costPerCm p1
        costP2 = costPerCm p2

describePizza :: Pizza -> String
describePizza (size, cost) = "Pizza's size " ++ show size ++
                             " is cheaper for " ++ 
                             show costSqCm ++
                             " for cm^2"
  where costSqCm = costPerCm (size, cost) 

main :: IO ()
main = do
  putStrLn "First pizza's size: "
  size1 <- getLine
  putStrLn "First pizza's cost: "
  cost1 <- getLine
  putStrLn "Second pizza's size: "
  size2 <- getLine
  putStrLn "Second pizza's cost: "
  cost2 <- getLine
  let pizza1 = (read size1, read cost1)
  let pizza2 = (read size2, read cost2)
  let betterPizza = comparePizzas pizza1 pizza2
  putStrLn (describePizza betterPizza)
  
