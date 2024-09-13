data Name = Name { firstName :: String
                 , lastName :: String }

instance Show Name where
  show (Name first last) = mconcat [first, " ", last]

data GradeLevel = Freshman
                | Sophmore
                | Junior
                | Senior deriving (Eq, Ord, Enum, Show)

data Student = Student
    { studentId :: Int
    , gradeLevel :: GradeLevel
    , studentName :: Name } deriving Show

students :: [Student]
students = [(Student 1 Senior (Name "Odri" "Lord"))
           ,(Student 2 Junior (Name "Lesly" "Silko"))
           ,(Student 3 Junior (Name "Judit" "Batler"))
           ,(Student 4 Junior (Name "Lesly" "Silko"))
           ,(Student 5 Junior (Name "Lesly" "Silko"))
           ,(Student 6 Junior (Name "Lesly" "Silko"))]

_select :: (a -> b) -> [a] -> [b]
_select prop vals = do
  val <- vals
  return (prop val)

_where :: (a -> Bool) -> [a] -> [a]
_where test vals = do
  val <- vals
  guard (test val)
  return val

startsWith :: Char -> String -> Bool
startsWith char string = char == (head string)

data Teacher = Teacher
  { teacherId :: Int
  , teacherName :: Name } deriving Show

teachers :: [Teacher]
teachers = [Teacher 100 (Name "Simona" "De Bovuar"
           ,Teacher 200 (Name "Susen" "Zontag")]

data Course = Course { courseId :: Int
                     , courseTitle :: String
                     , teacher :: Int } deriving Show

courses :: [Course]
courses = [Course 101 "French" 100
          ,Course 201 "English" 200]

_join :: Eq c => [a] -> [b] -> (a -> c) -> (b -> c) -> [(a, b)]
_join data1 data2 prop1 prop2 = do
  d1 <- data1
  d2 <- data2
  let dpairs = (d1, d2)
  guard ((prop1 (fst dpairs)) == (prop2 (snd dpairs)))
  return dpairs
