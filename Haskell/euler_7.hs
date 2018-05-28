-- Project Euler Question 7
-- Author: Corentin Pinato
-- Date: 24 May 2018
-----------------------------------------------------------------------------------------------
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?
-----------------------------------------------------------------------------------------------

is_prime :: Integer -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime n = do
    if n `mod` 2 == 0
        then False
        else 
            [] == (filter (\x -> n `mod` x == 0) [2..((floor.sqrt.fromIntegral) n)]) 

max_range :: Float -> Integer
max_range n = round (n * ((log n) + (log(log n))) - 1) 

euler_7 :: Float -> Integer
euler_7 n = (filter is_prime [2..(max_range n)]) !! ((round n) - 1)

main = do
    print $ euler_7 10001

