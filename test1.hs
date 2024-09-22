doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

mylist :: [Integer]
mylist = [1..100]

mylist2 :: [Integer]
mylist2= [100,101,192, 93,495,523]

mylist3 :: [Char]
mylist3 = ['a'..'z']
mylist4 :: [Char]
mylist4 = ['e','f','e','s','a','s','s']
mylist5 :: [a]
mylist5 = []
main :: IO ()
main = do 
    putStrLn "Starting"
    print (doubleMe 10)
    print (doubleUs 20 20)
    print (doubleSmallNumber 101)
    print (doubleSmallNumber 99)
    print (mylist ++ mylist2)
    print (mylist3 ++ "  " ++ mylist4)
    --print (A:[mylist3])
    print (mylist3 !! 3)

    print "Basic functions with Lists"
    print (head mylist3)
    print (tail mylist3)
    print (last mylist3)
    print (init mylist3)
    print (length mylist)
    print (null mylist5)
    print (reverse mylist)
    print (take 3 mylist)
    print (maximum mylist)
    print (sum mylist)
    print (product mylist)
    print ( 'h' `elem` mylist3)
    print (take 24 [13,26..])
    print (take 10 (cycle [1,2,3]))
    print (take 4 (repeat  5))
    print (replicate 4 5)
