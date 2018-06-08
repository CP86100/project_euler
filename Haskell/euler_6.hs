-- Project Euler Question 6
-- Author: Corentin Pinato
-- Date: 24 May 2018
-----------------------------------------------------------------------------------------------
-- The sum of the squares of the first ten natural numbers is, 12 + 22 + ... + 102 = 385
-- The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten natural numbers and the 
-- quare of the sum is 3025 − 385 = 2640.
-- Find the difference between the sum of the squares of the first one hundred natural numbers 
-- and the square of the sum.
-----------------------------------------------------------------------------------------------

euler_6 :: Int -> Int
euler_6 n = do
    ((sum ([1..n]))^2) - (sum (map (\x -> (x^2)) [1..n]))

main = do
    print $ euler_6 100

