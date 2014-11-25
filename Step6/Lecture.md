# Higher-Order Functions

A function that takes a function or returns a function as a result

## Examples
### Map
map :: (a -> b) -> [a] -> [b]

map (+1) [1,3,5,7]
=[2,4,6,8]

Map can be defined as follows:
--Using list comprehensions
map f xs = [f x | x <- xs]

--Recursively
map f [] = []
map f (x:xs) = f x : map f xs

### Filter
filter :: (a -> Bool) -> [a] -> [a]

filter even [1..10]
=[2,4,6,8,10]

--Using list comprehensions
filter p xs = [x | x <- xs, p x]

--Recursively
filter p [] = []
filter p (x:xs)
  | p x = x : filter p xs
  | otherwise = filter p xs

# Foldr (fold from the right)
Maps empty list to some value v and any non-empty list to some function ⊕
applied to its head and f of its tail

## Concept:
f [] = v
f (x:xs) = x ⊕ f xs

### Examples
-- v = 0, ⊕ = +
sum [] = 0
sum (x:xs) = x + sum xs

-- v = 1, ⊕ = **
product [] = 1
product (x:xs) = x * product xs

-- v = True, ⊕ = &&
and [] = True
and (x:xs) = x && and xs

## Implementation
foldr f v [] = v
foldr f v (x:xs) = f x (foldr f v xs)

product [1,2,3]
 foldr (*) 1 [1,2,3]
 foldr (*) 1 (1:(2:(3:[])))
 1*(2*(3*1))

length [1,2,3]
 length (1:(2:(3:[])))
 1+(1+(1+0))

 length = foldr (λ_ n -> 1 + n) 0

 reverse [1,2,3]
  reverse (1:(2:(3:[])))
  (([] ++ [3]) ++ [2]) ++ [1]
  [3,2,1]

reverse = foldr (λx xs => xs ++ [x]) []

Note: (++ ys) = foldr (:) ys

Foldr can be simpler than recursively written individual functions.

# Function Composition

Combine two functions into another function.

The library funciton (.) returns the composition of two functions as a single function.

(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = λx -> f (g x)

## Examples
all :: (a -> Bool) -> [a] -> Bool
all p xs = and [p x | x <- xs]

all even [2,4,6,8,10]
=True

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile p []
takeWhile p (x:xs)
  | p x = x : takeWhile p xs
  | otherwise = []

takeWhile isAlpha "abc def"
="abc"




