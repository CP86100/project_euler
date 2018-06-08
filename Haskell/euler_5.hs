-- Project Euler Question 5
-- Author: Corentin Pinato
-- Date: 24 May 2018
-----------------------------------------------------------------------------------------------
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-----------------------------------------------------------------------------------------------

gcd_ :: Int -> Int -> Int
gcd_ x 0 = x
gcd_ x y = gcd y (x `mod` y)

lcm_ :: Int -> Int -> Int
lcm_ x y = (x * y) `div` (gcd x y)

fold :: (Int -> Int -> Int) -> [Int] -> Int
fold f (x:xs) = fold_ f x xs 

fold_ :: (Int -> Int -> Int) -> Int -> [Int] -> Int
fold_ f r [] = r
fold_ f r (x:xs) =  fold_ f (f r x) xs

euler_5 :: Int -> Int
euler_5 n = fold (lcm_) [1..n]

main = do
    print $ euler_5 20

