reversedMaybe :: Maybe String -> Maybe String
reversedMaybe (Just string) = Just (reverse string)
reversedMaybe Nothing = Nothing
