import Prelude hiding ((^))

-- Exponentiation
--m ^ 0 = 1
--m ^ n = m * m ^ (n - 1)

m ^ 0 = 1
m ^ n = m * (^) m (n - 1)

-- Replication
replicate5 0 _ = []
replicate5 n x = x : replicate5 (n-1) x

-- Get Nth Value
--(x : _) !! 0 = x
--(_ : xs) !! n = xs !! (n - 1)

-- List 'and'
and2 [] = True
and2 (b : bs) = b && and2 bs

and3 [] = True
and3 (b : bs)
  | b = and3 bs
  | otherwise = False

and4 [] = True
and4 (b : bs)
  | b == False = False
  | otherwise = and4 bs

and5 [] = True
and5 (b : bs) = and5 bs && b

and6 [] = True
and6 (b : bs)
  | b = b
  | otherwise = and6 bs

-- List contains
elem2 _ [] = False
elem2 x (y : ys)
  | x == y = True
  | otherwise = elem2 x ys

-- Merge Sort
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  = if x <= y then x : merge xs (y : ys) else y : merge (x : xs) ys

halve xs = splitAt(length xs `div` 2) xs

msort [] = []
msort [x] = [x]
msort xs = merge (msort zs) (msort ys)
  where (ys, zs) = halve xs