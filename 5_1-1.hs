ifEven f x = if even x
             then f x
             else x

inc x = x+1
double x = x*2
square x = x^2

ifEvenInc = ifEven inc
ifEvenDouble = ifEven double
ifEvenSquare = ifEven square 
