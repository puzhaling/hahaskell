{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib
import Data.Text as T
import Data.Text.IO as TIO

main :: IO ()
main = do
  TIO.putStrLn "Enter word to detect palindrome"

  text <- TIO.getLine
  let response = if isPalindrome text
                 then "Yes"
                 else "No"
  TIO.putStrLn response
