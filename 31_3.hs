monadMain :: Monad m => m Double -> m Double -> 
                        m Double -> m Double -> 
                        m String
monadMain s1 c1 s2 c2 = do
  let pizza1 = (s1, c1)
  let pizza2 = (s2, c2)
  let betterPizza = comparePizzas pizza1 pizza2
  return (describePizza betterPizza)
