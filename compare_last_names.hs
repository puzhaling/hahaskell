compareLastNames name1 name2 = if lastName1 /= lastName2
                               then compare lastName1 lastName2
                               else compare firstName1 firstName2
  where lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2
