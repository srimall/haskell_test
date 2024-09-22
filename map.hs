import qualified Data.ByteString as sum


-- Map takes a fucntion and list then applies that funciton to all elements of the list
-- Filter takes a predicate and return all values which satiasfy the predicate
-- Lambda functions. No name function lies inline with expression.
-- Folds
-- function application with $
-- function composition with dot

list1 = [1,2..45]


quicksort [] =[]
quicksort (x:xs) =
    let smallerSorted = quicksort ( filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted


largestDiv = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0


sumOfOddSquares :: Integer
sumOfOddSquares = sum (takeWhile (< 10000 ) (filter odd (map (^2)[1..])))

sumOfOddSquares' = sum.takeWhile(<1000) .filter.odd.map (^2) $ [1..]

calcChain :: Integral a => a -> [a]
calcChain 1 = [1]
calcChain x
    | even x = x:calcChain (x `div` 2)
    | odd x = x:calcChain (x*3 +1)


greateThan15 :: [[Integer]]
greateThan15 = filter (\x -> length x > 15) (map calcChain [1..100])
    --where p x = length x > 15

sum' xs = foldl (\acc x -> acc + x) 0 xs

sum'sum :: [Integer] -> Integer
sum'sum = foldl (+) 0







sqrtNum :: Int
sqrtNum = length $ takeWhile (<10000) ( scanl1 (+) (map sqrt [1..])) 

cei :: Double -> Integer
cei = ceiling.negate.tan.cos.max 50
main :: IO ()
main = do
    print "Starting Map and Filters"
    --print (map (+33) list1)
    --print (map (replicate 4) list1)
    --print (filter (>3) list1)
    --print largestDiv
    print sumOfOddSquares
    print (calcChain 30)
    print (length greateThan15)
    print (sum' (calcChain 30))
    print (sum'sum (calcChain 30))
    print (sqrtNum)

    print (map (negate.abs) (calcChain 30) )
    print (map (negate.sum.tail) [[1..5], [5..122], [2..8]])
    print ( cei 23)
