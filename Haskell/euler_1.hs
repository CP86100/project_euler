-- Project Euler Question 1
-- Author: Corentin Pinato
-- Date: 24 May 2018
----------------------------------------------------------------
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
----------------------------------------------------------------

euler_1 :: Integer -> Integer
euler_1 n = sum $ filter (\x -> (x `mod` 3 == 0) || (x `mod` 5 == 0)) [1..n]

main = do
  print $ euler_1 1000
