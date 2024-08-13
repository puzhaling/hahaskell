head' :: [a] -> a
head' [] = error "empty list"
head' (x:_) = x
