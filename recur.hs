

 -- edge condition
 -- no while loop and for loop in haskell

list1 :: [Integer]
list1 = [2,4..100]


maximum' [] = error "Maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

reverse' :: [a] -> [a]
reverse' [] =[]
reverse' (x:xs) = reverse' xs ++ [x]


elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = a `elem'` xs



quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a |  a <-xs , a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

main = do  
    print "Starting"
    print (maximum list1)
    print (maximum' list1)
    print (reverse' list1)
    print (elem' 200 list1)
    print (quicksort "he quick brown fox jumps over the lazy dog")
 