data AuthorName = AuthorName {
       name    :: String
     , surname :: String}

data Book = Book {
       author :: AuthorName
     , isbn   :: String
     , title  :: String
     , year   :: Int
     , price  :: Double} 
