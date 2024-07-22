-- constructor
cup ml = \message -> message ml

-- getter
getMl aCup = aCup (\ml -> ml)

-- pseudo-method
drink aCup mlDrank = if mlDiff >= 0 
                     then cup mlDiff
                     else cup 0
  where ml = getMl aCup
        mlDiff = ml - mlDrank

isEmpty aCup = getMl aCup == 0

