inFirstHalf x list = x `elem` (firstHalf)
  where firstHalf = take (length list `div` 2) list
