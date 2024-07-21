ifEven f x = if even x
             then f x
             else x

genIfEvenX x = (\f -> ifEven f x) 
