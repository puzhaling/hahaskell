quotes :: [String]
quotes = ["quote1", "quote2", "quote3", "quote4",
          "quote5"]

lookupQuote :: [String] -> [String]
lookupQuote [] = []
lookupQuote ("n":xs) = []
lookupQuote (x:xs) = quote : (lookupQuote xs)
  where quote = quotes !! (read x - 1)

main :: IO ()
main = do
  userInput <- getContents
  mapM_ putStrLn (lookupQuote (lines userInput))
