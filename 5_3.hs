getRequestUrl host apiKey resource id =
  host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

genExampleUrl = getRequestUrl "https://example.com" "1337hAsk3ll" "book"
 
