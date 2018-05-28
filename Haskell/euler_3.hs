-- Project Euler Question 3
-- Author: Corentin Pinato
-- Date: 24 May 2018
----------------------------------------------------------------
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
----------------------------------------------------------------

factors :: Integer -> [Integer]
factors n = filter (\x -> n `mod` x == 0) [2..((floor.sqrt.fromIntegral) n)]

prime_factors :: Integer -> [Integer]
prime_factors n = do
    if [] == facts then [n] else facts ++ prime_factors (n `div` (head facts))
    where facts = take 1 (factors n)

euler_3 :: Integer -> Integer
euler_3 n = maximum $ prime_factors n

main = do
    print $ euler_3 600851475143