import qualified Data.Map as Map

data Organ = Heart | Brain | Kidney | Spleen | Eye
  deriving (Show, Eq, Ord)

organs :: [Organ]
organs = [Heart, Brain, Kidney, Spleen]

organCounts :: [Int]
organCounts = [10, 5, 7, 3]

organInventory :: Map.Map Organ Int
organInventory = Map.fromList organPairs
  where organPairs = zip organs organCounts
