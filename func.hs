
-- higher order functions
-- Takes functions as parameters and return functions as return values

-- Curried function
-- Function which accept several parameters 


compareHundred :: Integer -> Ordering
compareHundred = compare 100


isUpper :: Char -> Bool
isUpper = (`elem`['A'..'Z'])






zipWith' :: (t1 -> t2 -> a) -> [t1] -> [t2] -> [a]
zipWith' _ [] _ = []
zipWith' _ _ []  = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys



list1 :: [Int]
list1 = [1,2,3]


list2 :: [String]
list2 = [ "abcdefgh","asdasdas"]

flip' :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
flip' f x y = f y x

main :: IO ()
main = do 
    print "Starting..."
    print (max 4 5)
    print ((max 4) 5)
    print (compareHundred 99)
    print (isUpper 'A')
    print list1
    print list2
    print (zipWith' (++) list2 list2)
    print (zipWith (flip' div) [2,2..] [10,8,6,4,2])
