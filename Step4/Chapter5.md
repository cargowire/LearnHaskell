# List Comprehensions

## Generators

[ x^2 | x <- [1..5]]
=[1,4,9,16,25]

* | "such that"
* <- "is drawn from"
* x <- [1..5] is a generator


## Guards

List comprehensions can also use guards to filter values from the lists.

factors n = [ x | x <- [1..n], n `mod` x == 0]

isPrime n = factors n == [1,n]

allPrimesTo n = [ x | x <- [2..x], prime x ]

find :: Eq a => a -> [(a, b)] -> [b]
find k t = [ v | (k', v) <- t, k == k'] returns values for specified key from list of tuples

Remember strings are just lists of characters so:

lowerCaseLetters xs = length [x | x <- xs, isLower x]

countLetters x xs = length [x' | x' <- xs, x == x']