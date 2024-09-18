{-# LANGUAGE OverloadedT.Texts #-}

module Lib 
( isPalindrome
) where

import qualified Data.Text as T
import Data.Char (toLower, isSpace, isPunctuation)

stripWhiteSpace :: T.Text -> T.Text
stripWhiteSpace text = filter (not . isSpace) text

stripPunctuation :: T.Text -> T.Text
stripPunctuation text = filter (not . isPunctuation) text

toLowerCase :: T.Text -> T.Text
toLowerCase text = map toLower text

preprocess :: T.Text -> T.Text
preprocess = stripWhiteSpace . stripPunctuation . toLowerCase

isPalindrome :: T.Text -> Bool
isPalindrome text = cleanText == reverse cleanText
  where cleanText = preprocess text
