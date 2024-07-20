toPart recipient = "Hello, " ++ recipient ++ "!\n"
bodyPart bookTitle = "Thank you for bying \""
                     ++ bookTitle ++ "\"!\n"
fromPart author = "With best wishes,\n" ++ author

createEmail recipient bookTitle author = toPart recipient ++
                                         bodyPart bookTitle ++
                                         fromPart author

main = do
    putStrLn "Who is reciever?"
    recipient <- getLine
    putStrLn "Book name:"
    title <- getLine
    putStrLn "Who is the author?"
    author <- getLine
    putStrLn (createEmail recipient title author)
