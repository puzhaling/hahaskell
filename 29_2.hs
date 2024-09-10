example :: Maybe Int
example = pure (*) <*> (pure (+) <*> pure 2 <*> pure 4) <*> pure 6
