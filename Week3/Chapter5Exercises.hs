import Data.Char

--1. Expression for 1^2 + 2^2 + 3^2 all the way up to 100^2

result = sum [x^2 | x <- [1..100]]

--2. Generate a list of identical items for a specified count

replicate n x = [x | x' <- [1..n]]

--3. Calculate pythagorean triples whose components are at most a given limit

pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

--4. List all perfect numbers up to a given limit. (perfect is number equal to sum of its factors excluding itself)

factors n = [x | x <- [1..n], n `mod` x == 0]
perfects n = [x | x <- [1..n], y <- [sum (factors x) - x], x == y]

--5. Show how [(x,y) | x <- [1,2,3], y <- [4,5,6]] as two comprehensions with one generator

--TODO:

--6. Redefine positions using find

positions x xs = [i | (x', i) <- zip xs [0..n], x == x']
                      where n = length xs - 1

find k t = [v | (k', v) <- t, k == k']

positions2 x xs = find x [x | x <- zip xs [0..n]]
                   where n = length xs

--7. Scalar product as a list comprehension

scalarproduct xs ys = sum [x * y | (x,y) <- zip xs ys]

--8. Modify the Caesar cipher program to also handle upper-case letters.

let2int c = ord c - ord 'a'
int2let n = chr(ord 'a' + n) 
let2intUpper c = ord c - ord 'A'
int2letUpper n = chr((ord 'A') + n) 
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
    	  | isUpper c = int2letUpper ((let2intUpper c + n) `mod` 26)
          | otherwise = c

encode n xs = [shift n x | x <- xs]