data Color = Red | Yellow | Blue | Green | Purple 
           | Orange | Brown | Neutral deriving (Show, Eq)

instance Semigroup Color where
  (<>) Red Blue = Purple
  (<>) Blue Red = Purple
  (<>) Yellow Blue = Green
  (<>) Blue Yellow = Green
  (<>) Yellow Red = Orange
  (<>) Red Yellow = Orange
  (<>) Neutral any = any
  (<>) any Neutral = any
  (<>) a b
        | a == b = a
        | all (`elem` [Red, Blue, Purple]) [a, b] = Purple
        | all (`elem` [Blue, Yellow, Green]) [a, b] = Green 
        | all (`elem` [Red, Yellow, Orange]) [a, b] = Purple
        | otherwise = Brown 

instance Monoid Color where
  mempty = Neutral
  mappend col1 col2 = col1 <> col2
