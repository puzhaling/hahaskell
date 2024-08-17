{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T

tlines :: T.Text -> [T.Text]
tlines text = T.splitOn "\n" text

tunlines :: [T.Text] -> T.Text
tunlines text = T.intercalate "\n"
