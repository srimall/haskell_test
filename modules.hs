-- module is like a package all in one
-- perlude module imported by default
import qualified Data.Set as Set 
import Distribution.Simple (Bound)
import Control.Arrow (ArrowChoice(right))


text1 :: String
text1 = "I just had an anime dream. Anime... Reality... Are they so different?"  
text2 :: String
text2 = "The old man left his garbage can out and now his trash is all over my lawn!"  

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

data Person = Person { firstName :: String
,lastName :: String
,age :: Int
,height :: Float
,phoneNumber :: String} deriving (Show)


type PhoneNumber = String

data Dat = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday 
    deriving (Eq, Ord, Show, Read, Bounded, Enum)

--binary tree
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)


singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a = Node a (treeInsert x  left) right
    | x > a = Node a left (treeInsert x right)


    
surface :: Shape -> Float
surface (Circle  _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2-x1) * (abs $ y2-y1)

set1 :: Set.Set Char
set1 = Set.fromList text1

set2 = Set.fromList text2

main = do 
    print "Starting the script..."
    print set1
    print set2
    print (Set.intersection set1 set2)
    print (Set.union set1 set2)
    print (surface $ (Circle (Point 10 20) 10))
    print (map (Circle (Point 10 20)) [4,5,6,7])
    
