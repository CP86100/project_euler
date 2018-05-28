# Project Euler Question 5
# Author: Corentin Pinato
# Date: 24 May 2018
####################################################################################################
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
####################################################################################################

def gcd(x, y):
    if y == 0:
        return x
    else:
        return gcd(y, (x % y))

def lcm(x, y):
    return (x * y) / gcd(x, y)

def euler_5(num):
    return reduce(lcm, range(1, num))

print euler_5(20)