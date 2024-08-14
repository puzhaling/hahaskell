maybeMap :: ([Maybe a] -> [Maybe b]) -> [Maybe a] -> [Maybe b]
maybe func [] = []
maybeMap func (x:xs) = newMaybe : (maybeMap func xs)
  where newMaybe = Maybe (func x) 
