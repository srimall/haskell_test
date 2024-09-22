
--case
describeList :: [a] -> [Char]
describeList xs = "The List is " ++ case xs of [] -> "empty. "
                                               [x] -> "a singleton list. "
                                               xs -> "a longer list"

describeList1 xs = "The List is " ++ what xs
    where what [] = "empty "
          what [x] = "A singleton list"
          what xs = " a longer list "        
a :: [Integer]
a = [1..29]

main :: IO ()
main = do
    print "Starting"
    print a
    print (describeList a)
    print (describeList1 a)
    