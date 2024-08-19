{-# LANGUAGE OverloadedStrings #-}

import System.IO
import System.Environment
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
  args <- getArgs
  let src = args !! 0
  let dest = args !! 1
  input <- TIO.readFile src
  TIO.writeFile dest input
  TIO.putStrLn "end"
  
  
  
