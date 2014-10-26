# Conditional expressions

abs :: Int -> Int
abs n = if n >= 0 then n else -n

Conditionals are expressions (effectively ternary operations) so you always need an else part.

# Guarded Equations

An alternative to conditionals:

abs n | n >= 0 = n
      | otherwise = -n

In place of functions that start with a conditional. Otherwise is an alias for 'true' to act as a default option.

signum n | n < 0     = -1
         | n == 0    = 0
         | otherwise = 1

Typically use these instead of if then else

# Pattern Matching

Many functions have a clear definition using pattern matching on their arguments

not :: Bool -> Bool
not False = True
not True = False

Is a 'not' function defined with patterns explicitly.

_ can be used as an 'anything/ignore this' part of a pattern match.  For example:

True && True = True
_ && _ = False

To avoid the checking of both sides of the pattern the following is prefered by haskell users:

True && b = b
False && _ = False

Patterns cannot duplicate variables e.g. b == b = True is invalid because b is duplicated.

# List patterns

The : operator 'cons' (constructs) adds an element to the start of a list.  This operator can be used inside a pattern match such as:

head :: [a] -> a
head (x:_) = x

tail :: [a] -> [a]
tail (_:xs) = xs

Note: Patterns like x:xs only match non-empty lists.

# Lambda Expressions

\x -> x + x

Better for expressing intent when currying. e.g.

add x y = x + y
add = \x -> (\y -> x + y)

Other uses include avoiding inventing names e.g.

odds n = map f [0..n-1]
         where
           f x = x*2 + 1

can be simplified using a lambda to:

odds n = map (\x -> x*2 + 1) [0..n-1]



