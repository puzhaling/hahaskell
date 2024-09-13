import Control.Monad qualified as CM

evensGuard :: Int -> [Int]
evensGuard n = do
  value <- [1 .. n]
  CM.guard (even value)
  return value
