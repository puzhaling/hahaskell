maybeMain :: [String]
maybeMain = do
  size1 <- [1,2,3]
  cost1 <- [1,2,3]
  let pizza1 = (size1, cost1)
  let pizza2 = (size2, cost2)
  let betterPizza = comparePizzas pizza1 pizza2
  return (describePizza betterPizza)
