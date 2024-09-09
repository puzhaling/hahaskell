data Box a = Box a 
    deriving Show

myBox :: Box Int
myBox = Box 1

unwrap :: Box a -> a
unwrap (Box a) = a

wrap :: a -> Box a
wrap a = Box a

instance Functor Box where
  fmap func (Box a) = Box (func a)
