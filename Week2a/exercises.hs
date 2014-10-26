{-
halve1 xs = (take n xs, drop n xs)
  where n = length xs / 2
-}

-- Correct
halve2 xs = splitAt (length xs `div` 2) xs

-- Correct
halve3 xs = (take (n `div` 2) xs, drop (n `div ` 2) xs)
  where n = length xs

halve4 xs = splitAt (length xs `div` 2)

halve5 xs = (take n xs, drop (n + 1) xs)
  where n = length xs `div` 2

-- Correct
halve6 xs = splitAt (div (length xs) 2) xs

{-
halve7 xs = splitAt (length xs / 2) xs
-}

-- Correct
halve8 xs = (take n xs, drop n xs)
  where n = length xs `div` 2

-- Correct
safetail1 xs = if null xs then [] else tail xs

-- Correct
safetail2 [] = []
safetail2 (_ : xs) = xs

safetail3 (_ : xs)
  | null xs = []
  | otherwise = tail xs

-- Correct
safetail4 xs
  | null xs = []
  | otherwise = tail xs

safetail5 xs = tail xs
safetail5 [] = []

-- Correct
safetail6 [] = []
safetail6 xs = tail xs

safetail7 [x] = [x]
safetail7 (_ : xs) = xs

-- Correct
safetail8
 = \ xs ->
     case xs of
        [] -> []
        (_ : xs) -> xs

-- OR Functions (using ~~ to avoid hiding the || operator)
{-Correct
False ~~ False = False
_ ~~ _ = True
-}

{-Correct
False ~~ b = b
True ~~ _ = True
-}

{-Fails
b ~~ c
  | b == c = True
  | otherwise = False
-}

{-Correct
b ~~ c
  | b == c = b
  | otherwise = True
-}

{-Correct
b ~~ False = b
_ ~~ True = True
-}

{-Correct
b ~~ c
  | b == c = c
  | otherwise = True
-}

{-Fails
b ~~ True = b
_ ~~ True = True
-}

--And functions (using ~~ to avoid hiding the && operator)
--a ~~ b = if a then if b then True else False else False
--a ~~ b = if not (a) then not (b) else True
--a ~~ b = if a then b
--a ~~ b = if a then if b then False else True else False
--a ~~ b = if a then b else False
--a ~~ b = if b then a else False

remove n xs = take n xs ++ drop (n + 1) xs
