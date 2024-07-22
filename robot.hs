robot (name, attack, hp) = \message ->
                             message (name, attack, hp)
-- helpers
name (n, _, _) = n
attack (_, a, _) = a
hp (_, _, hp) = hp

-- getters
getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

-- setters
setName aRobot newName = aRobot (\(n, a, h) ->
                                   robot (newName, a, h))
setAttack aRobot newAttack = aRobot (\(n, a, h) -> 
                                   robot (n, newAttack, h))
setAttack aRobot newHP = aRobot (\(n, a, h) -> 
                                   robot (n, a, newHP))


killerRobot = ("killer", 25, 200)

printRobot aRobot = aRobot(\(n, a, h) ->
                             n ++ 
                             " attack:" ++ (show a) ++
                             " hp:" ++ (show h))

damage aRobot attackDamage =
         aRobot (\(n, a, h) -> robot (n, a, h - attackDamage))

fight aRobot defender = damage defender attack
  where attack = if getHP aRobot > 10
        then getAttack aRobot
        else 0

oneRoundFight aRobot bRobot = if getHP aRobotCrushed > getHP bRobotCrushed
                              then aRobotCrushed
                              else bRobotCrushed
  where aRobotAttack = getAttack aRobot
        bRobotAttack = getAttack bRobot
        aRobotCrushed = damage aRobot bRobotAttack
        bRobotCrushed = damage bRobot aRobotAttack

robots = [robot("first", 10, 100), robot("second", 20, 200), robot("third", 30, 300)]
totalHP = sum (map getHP robots)
