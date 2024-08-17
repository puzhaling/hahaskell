import qualified Data.Text as T

firstWord :: String
firstWord = "word"

secondWord :: T.Text
secondWord = T.pack firstWord

thirdWord :: String
thirdWord = T.unpack secondWord

fourthWord :: String
fourthWord = T.pack thirdWord
