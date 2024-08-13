madeBy :: StoreItem -> String
madeby (BookItem book) = show (author book)
madeby (RecordItem record) = show (atrist record)
madeBy _ = "unknown"
