import Data.Char (digitToInt)

{-
In this lab, you will implement a validation algorithm for credit cards. The algorithm follows these steps:

* Double the value of every second digit beginning with the rightmost.
* Add the digits of the doubled values and the undoubled digits from the original number.
* Calculate the modulus of the sum divided by 10.

If the result equals 0, then the number is valid.
-}

{-
Here is an example of the results of each step on the number 4012888888881881.

In order to start with the rightmost digit, we produce a reversed list of digits. Then, we double every second digit. 
Result: [1,16,8,2,8,16,8,16,8,16,8,16,2,2,0,8].

We sum all of the digits of the resulting list above. Note that we must again split the elements of the list into their
digits (e.g. 16 becomes [1, 6]).

Result: 90.

Finally, we calculate the modulus of 90 over 10.

Result: 0.

Since the final value is 0, we know that the above number is a valid credit card number. If we make a mistake in typing 
the credit card number and instead provide 4012888888881891, then the result of the last step is 2, proving that the 
number is invalid.
-}

eval xs = foldl (\x y -> y + (10 * x)) 0 xs
evalRev xs = foldr (\x y -> x + (10 * y)) 0 xs

--toDigits :: Integer -> [Integer]
--eval (toDigits n) == n
toDigits n = [digitToInt x | x <- show n]

--toDigitsRev :: Integer -> [Integer]
--evalRev xs = foldr (\x y -> x + (10 * y)) 0 xs
toDigitsRev n = reverse (toDigits n)

--doubleSecond :: [Integer] -> [Integer]
doubleSecond xs = [x * y | (x,y) <- xs `zip` cycle [1,2]]

--sumDigits :: [Integer] -> Integer
sumDigits xs = foldr (+) 0 (concat [toDigits x | x <- xs])

--isValid :: Integer -> Bool
isValid n = sumDigits (doubleSecond (toDigitsRev n)) `mod` 10 == 0