richTell :: (RealFloat a) => a -> String
richTell salary
    | salary >= lowSalary && salary < mediumSalary = "You're a fool"
    | salary >= mediumSalary && salary < highSalary = "You're not that bad"
    | salary >= highSalary = "I want child from you"
    | otherwise = "How do you still alive? fool.."
    where lowSalary = 1000
          mediumSalary = 4000
          highSalary = 10000
