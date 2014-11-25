# Recursive Functions

Tail Call Elimination: Avoids increasing the stack dramatically by effectively translating a function call to a goto

factorial n = product [1..n]

-- Using recursion
factorial 0 = 1
factorial n = n * factorial (n-1)

This factorial function will 'diverge' (not terminate) for values negative values

Properties of functions defined using recursion can be proved using 'induction'.

## Examples
length [] = 0
length (_:xs) = 1 + length xs

reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys

drop 0 xs = xs
drop _ [] = []
drop x (_:xs) = drop (n-1) xs

-- Appending two lists
[] ++ ys = ys
(x:xs) ++ ys = (xs ++ ys)

-- Quicksort
qsort [] = []
qsort (x:xs) = 
  qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger = [b | b <- xs, b > x]

## Exercises
-- Repeat
replicate :: Int -> a -> [a]

-- Select nth item of list
(!!) ::  [a] -> Int -> a

nth (x:xs) 0 = x


-- List contains
elem :: Eq a => a -> [a] -> Bool