

-- pattern matching
lucky :: (Eq a, Num a) => a -> String
lucky 7 = "Lucky Number Seven"
lucky x = "Sorry not a number 7"


sayMe 1 = "One"
sayMe 2 = "two"
sayMe 3 = "three"
sayMe x = "Not between one and three"


-- recursive function
factorial :: (Eq t, Num t) => t -> t
factorial 0 = 1
factorial n = n * factorial (n -1)


addVectors :: (Num t1, Num (t1 -> t2)) => (t1 -> t2, t1) -> (t1 -> t2, t1) -> t2
addVectors (x1,y1)(x2,y2) = (x1+x2) (y1+y2)

head' :: [a] -> a
head' [] = error "empty list"
head' (x:_) = x


list1 :: [Integer]
list1 = [1..199]

tell1 :: Show a => [a] -> String
tell1 [] = "The list is empty"
tell1 [x] = "The list has one element" ++ show x
tell1 [x, y] = "The list has two elements" ++ show x ++ "and" ++ show y
tell1 (x:y:_) = "THe list is long " ++ show x ++ " and " ++ show y


length' :: Num a1 => [a2] -> a1
length' [] = 0
length' (_:xs) = 1 + length' xs

main :: IO ()
main = do
    print "String"
    print (lucky 7)
    print (lucky 9)
    print (sayMe 5)
    print (factorial 13)
    --print (addVectors (1 2) (5 8))
    print (head' list1)
    print (tell1 list1)
    print (length' list1)