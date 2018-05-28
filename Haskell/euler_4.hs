-- Project Euler Question 4
-- Author: Corentin Pinato
-- Date: 24 May 2018
-----------------------------------------------------------------------------------------------
-- A palindromic number reads the same both ways. The largest palindrome made from the 
-- product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.
-----------------------------------------------------------------------------------------------

is_palindrome :: String -> Bool
is_palindrome x = x == reverse x

flatten :: [[Int]] -> [Int]
flatten (x:[]) = x
flatten (x:xs) = x ++ flatten xs

combinations :: Int -> Int -> [Int]
combinations start end = do
    flatten (map (\x -> zipWith (*) (replicate (end - start) x) [start..end]) [start..end])

euler_4 :: Int -> Int -> Int
euler_4 start end = do
    maximum (filter (\x -> is_palindrome (show x)) (combinations start end))

main = do
    print $ euler_4 100 1000