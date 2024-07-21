subseq start end list = take newListLength (drop leftDrop list) 
  where leftDrop = start
        newListLength = end - start
