import Data.Char

sum100 = sum [x ^ 2 | x <- [1..100]]

-- Repeat
replicate n a = [a | _ <- [1..n]]

ex4 = [(x, y) | x <- [1, 2, 3], y <- [4, 5, 6]]
ex4equiv = concat [[(x,y) | y <- [4,5,6]] | x <- [1,2,3]]

-- Positions using zip
find k t = [v | (k', v) <- t, k == k']
positions x xs = find x (zip xs [0..n])
  where n = length xs - 1

-- Caesar cipher with gaps
let2int c = ord c - ord 'a'
int2let n = chr(ord 'a' + n) 
let2intUpper c = ord c - ord 'A'
int2letUpper n = chr((ord 'A') + n) 
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
    	  | isUpper c = int2letUpper ((let2intUpper c + n) `mod` 26)
          | otherwise = c

encode n xs = [shift n x | x <- xs]

-- Leads to [1,2,3,4...]
xs = 1 : [x + 1 | x <- xs]

-- Riffle
riffle xs ys = concat [[x, y] | (x,y) <- xs `zip` ys]

-- Divisors
divides x y = x `mod` y == 0
divisors x = [d | d <- [1..x], x `divides` d]