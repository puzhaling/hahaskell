elem' x list = if length (filter (\i -> i == x) list) > 0
               then True
               else False 
