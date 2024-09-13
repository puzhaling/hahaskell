guardFilter :: (a -> Bool) -> [a] -> [a]
guardFilter pred list = do
  value <- list
  guard (pred value)
  return value
