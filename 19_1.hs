import qualified Data.Map as Map

data Organ = Heart | Brain | Kidney | Spleen deriving (Eq)

getDrawerContents :: [Int] -> Map.Map Int Organ -> [Maybe Organ]
getDrawerContents ids catalog = map getContents ids
  where getContents = \id -> Map.lookup id catalog


-- emptyDrawers :: [Maybe Organ] -> Int
-- emptyDrawers organs = length nothings
--   where nothings = filter (\maby -> maby == Nothing) organs

emptyDrawers :: [Maybe Organ] -> Int
emptyDrawers contents = (length . filter isNothing) contents
