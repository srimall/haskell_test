import GHC.Exts.Heap (GenClosure(FloatClosure))
tuple1 :: [(Integer, Integer)]
    tuple1 = [(1,2),(2,4),(4,6)]
-- type classes
-- Eq supports equality testing == /=
-- Ord types that has ordering GT LT EQ
-- Show can be presented as strings
-- Read invert action of Show
-- Enum sequentially ordered types succ successor pred predisessor Bool char Int Integer Float Double
-- Bounded
-- Num 

main = do
    print "String"
    print (read "123" - 1)
    print (read "1212" :: Float)

    