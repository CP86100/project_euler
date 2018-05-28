# Project Euler Question 7
# Author: Corentin Pinato
# Date: 24 May 2018
#######################################################################################################
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
#######################################################################################################

from math import sqrt
from math import log

def is_prime(num):
    if num == 1:
        return False
    elif num == 2:
        return True
    else:
        if num % 2 == 0:
            return False
        else:
            return len([x for x in range(2, int(sqrt(num))+1) if num % x == 0]) == 0

def max_range(n):
    return int(n * (log(n) + log(log(n)) + 1))

def euler_7(n):
    primes = [x for x in range(2, max_range(n)) if is_prime(x)]
    return primes[n-1]

print euler_7(10001)
