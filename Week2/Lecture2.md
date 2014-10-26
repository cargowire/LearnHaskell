# Types

Types such as bool contain values (False, True).

Applying a function to one or more arguments of the wrong type is a type error.

e :: t
means expression e has the type t

Type inference calculates at compile time the type of well formed expressions.

:type expression calculates the type in GHCi without running the expression e.g. :type not False will return 'not false :: Bool' in the output.

Basic haskell types include Bool, Char, String (lists of characters), Int (fixed precision), Integer (arbitrary precicion), Float

A list is a 'polymorphic type' where each item in the list is the same type such as [Bool] for list of bool, [Char] for list of char.

A type is a sequence of values of different types e.g. (False, 'a').  Type of values is unrestricted e.g. can be lists or other tuples again etc

# Functions

Function is a mapping form values of one type to values of another type

* not :: Bool -> Bool
* isDigit :: Char -> Bool
* t1 (The domain) -> t2 (The range)

Functions with multiple arguments are also possible by returning functions as results - 'currying'.

add' :: Int -> (Int -> Int)
add x y = x+y

The arrow associates to the right. So Int -> Int -> Int -> Int is the same as Int -> (Int -> (Int -> Int))

Every function two or more arguments can be curried by returning nested functions.

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x*y*z
Means ((mult x) y) z

The benefit of currying is partial application.

Unless using explicit tuples most functions in haskell are defined in the curried form.

# Polymorphic Functions

Type contains one or more type variables (similar to open generics in c#).

e.g. length :: [a] -> Int.  In length [False,True] a = Bool
fst :: (a,b) -> a
head :: [a] -> a
take :: Int -> [a] -> [a]
zip :: [a] -> [b] -> [(a,b)]
id :: a -> a

# Overloaded Functions

One or more class constraints on a polymorphic function e.g. sum :: Num a => [a] -> a (more like interface generic constraints in C#)

Other type classes include Eq (equality types), Ord (ordered types)



