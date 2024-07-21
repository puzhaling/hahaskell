getRequestUrl host apiKey resource id =
  host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

genHostRequestBuilder host = (\apikey resource id -> 
                               getRequestUrl host apikey resource id)
                              -- clause host ^^^^, no needs to write it
                              -- again on next calls, it is already
                              -- determined
 
exampleUrlBuilder = genHostRequestBuilder "https://example.com"
genApiRequestBuilder hostBuilder apiKey resource = 
              (\id -> hostBuilder apiKey resource id)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll" "book" 
