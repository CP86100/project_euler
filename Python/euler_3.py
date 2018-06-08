# Project Euler Question 4
# Author: Corentin Pinato
# Date: 24 May 2018
################################################################################################
# A palindromic number reads the same both ways. The largest palindrome made from the 
# product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
################################################################################################

from functools import reduce
from math import sqrt

num = 600851475143

def first_factor(n):
    for i in range(2, int(sqrt(n))):
        if n % i == 0:
            return i
    return n

def prime_factors(n):
    factors = []
    factor = first_factor(n)

    while(factor != n):
        factors.append(factor)
        n = n / factor
        factor = first_factor(n)
    factors.append(factor)
    return factors

def euler_4(n):
    return max(prime_factors(n))

print euler_4(num)