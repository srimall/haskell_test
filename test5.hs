
-- Guards
densityTell :: (Ord a, Fractional a) => a -> String
densityTell density 
    | density < 1.2 = "Less than 1.2"
    | density < 1000.0 = "Less than 1000"
    | otherwise = "You are going to float"


densityTell1 :: (Ord a, Fractional a) => a -> a -> String
densityTell1 mass volume 
    | density < 1.2 = "Less than 1.2"
    | density < 1000.0 = "Less than 1000"
    | otherwise = "Floating"
    where density = mass / volume

myCompare :: Ord a => a -> a -> Ordering
myCompare a b 
    | a > b = GT
    | a == b = EQ
    | otherwise = LT

tuple1 = [(1,2),(2,4),(4,6)]
calcDensities :: Fractional a => [(a, a)] -> [a]
calcDensities xs = [density x v | (x,v) <- xs]
    where density mass volume = mass / volume
    
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r^2
    in sideArea + 2 * topArea

myVar :: Integer
myVar = 4 * (let a = 9000 in a + 1)  + 3


myNewd :: (Ord a, Fractional a) => [(a, a)] -> [a]
myNewd xs = [density | (m,v) <- xs, let density = m / v, density < 1.2]


main :: IO ()
main = do
    print "Main loop starting"
    print (densityTell 1200)
    print (densityTell1 100 20)
    print ( 8 `myCompare` 9)
    print (calcDensities tuple1)
    print (cylinder 45 89)
    print (myVar)

    print (let square x = x * x in (square 5, square 6, square 7))
    print (let a=100; b=100;c=100 in a*b*c)