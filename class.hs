import Control.Monad (when)


data TrafficLight = Red | Yellow | Green 

instance Eq TrafficLight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False

instance Show TrafficLight where
    show Red = "Red Light"
    show Yellow = "Yellow Light"
    show Green = "Green Light"


class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _ = True

instance YesNo Bool where
    yesno = id

instance YesNo (Maybe a) where
    yesno (Just _) = True
    yesno Nothing = False


main = do
    print(Red)
    a <- return "hello"
    c <- getChar
    print (yesno $ length [])
    when (c /= ' ') $ do
        putChar c
        main
  