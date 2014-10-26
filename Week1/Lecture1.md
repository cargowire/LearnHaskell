# GHCI

5+7
=12

2+3*4
=14

head [1,2,3,4,5]
=1

tail [1,2,3,4,5]
=[2,3,4,56]

[1,2,3,4,5] !! 2
=3

take 2 [1,2,3,4,5]
=[1,2]

drop 2 [1,2,3,4,5]
=[3,4,5]

sum [1,2,3,4,5]
=15

product [1,2,3,4,5]
=120

[1,2,3] ++ [4,5]
=[1,2,3,4,5]

reverse [1,2,3,4,5]
=[5,4,3,2,1]

"Hello" ++ " " ++ "world"
="Hello World"

length "Hello"
=5

head "Hello"
=H

init "Hello"
= "Hell" (without last item)

null "Hello"
=False (list is not empty)

(1,"Hello")
=Tuple with integer as first type and string as second

fst (1, "Hello")
=1

snd (1,"Hello")
="Hello"

# Haskell

f a b + c*d
= f applied to a applied to b plus c times d
= f(a,b) + c*d in traditional languages

Function application is first in BODMAS order e.g. "f a + b" is f applied to a then plus b

Haskell scripts usually have a .hs suffix and can be loaded into ghci by running "ghci test.hs"

Backticks such as "x `f` y" is syntactic sugar for "f x y".  This converts a haskell function (f) into an infix operator (operator between the operands it applies to).

":reload" in gchi will reload the file it was loaded with and refreshing any functions that were defined within it.

Functions and parameter names must begin with lower case letters.  By conventionlist arguments usually have an s suffix such as xs, ns, nss. Types start with upper case.

Like python whitespace is significant. For example:

a = b + c
  where
    b = 1
    c = 2
d = a * 2

Provides implicit grouping of a/d and the where clause with b/c.

# GHCI Commands

* :load name (loads a script by name)
* :reload (reload the current script)
* :edit name (edit script name)
* :edit (edit current script)
* :type expr (show type of expr)
* :t expr (show the type of expr)
* :? (show all commands)
* :quit (guit GHCi)

The last evaluated value is always available for further computation under the name "it"
