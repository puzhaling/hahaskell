{-# LANGUAGE OverloadedStrings #-}

import System.IO
import System.Environment
import qualified Data.Text as T

getCounts :: String -> (Int, Int, Int)
getCounts input = (charCount, wordCount, lineCount)
  where charCount = length input
        wordCount = (length . words) input
        lineCount = (length . lines) input

countText :: (Int, Int, Int) -> String
countText (cc, wc, lc) = unwords ["symbols: "
                                 , show cc
                                 , " words: "
                                 , show wc
                                 , " lines: "
                                 , show lc]

main :: IO ()
main = do
  args <- getArgs
  let filename = head args
  input <- TI.readFile filename
  let summary = (countText . getCounts) input
  TI.appendFile "qtats.dat"
                (mconcat [(T.pack filename),
                 " ", summary, "\n"])
  TI.putStrLn
