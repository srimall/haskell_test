
l1 :: [Integer]
l1 = take 10 [2,4..] --infinite list. but only take 10 elements

l2 :: [Integer]
l2 = [x*x-x | x <- [1..10], x*x-x >= 20]

--boomBangs :: p -> [s]
boomBangs :: Integral a => [a] -> [String]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

newMulList = [ x*y | x <- l1, y <-l2, x*y < 120]

length' :: Num a => [t] -> a
length' xs = sum [1 | _ <- xs]

l4 = [[1,2,3,4,5,6],[1,2,3,4,5,6],[1,2,3,4,5,6]]

funcNew xxs = [[x | x <- xs, even x] | xs <-xxs]

tuple1 = [(1,2),(2,4),(4,6)]

tuple2 = zip [1..5] ["one","two","three","four","five"]


triangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c==24]

main :: IO ()
main = do
    print "Starting"
    print l1
    print l2
    print (boomBangs [7..13])
    print newMulList
    print (length' l1)
    print (funcNew l4)
    print (fst (tuple1 !! 1))
    print (snd (tuple1 !! 2))
    print tuple2
    print triangles