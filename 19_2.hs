numOrZero :: Maybe Int -> Int
numOrZero (Just num) = num
numOrZero Nothing = 0
