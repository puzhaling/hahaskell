main :: IO ()
main = putStrLn "Enter 1'st pizza size" >>
       getLine >>= 
       (\size1 ->
          (putStrLn "Enter 1'st pizza cost" >>
           getLine >>=
           (\cost1 ->
              (putStrLn "Enter 2'nd pizza size" >>
               getLine >>=
               (\size2 -> 
                  (putStrLn "Enter 2'nd pizza cost" >>
                   getLine >>=
                   (\cost2 -> 
                      (\pizza1 ->
                        (\pizza2 ->
                          (\betterPizza ->
                            putStrLn (describePizza betterPizza)
                          ) (comparePizzas pizza1 pizza2)
                        ) (read size1, cost1)
                      ) (read size2, cost2)
                   )))))))
