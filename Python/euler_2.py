# Project Euler Question 2
# Author: Corentin Pinato
# Date: 24 May 2018
################################################################################################
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.
################################################################################################

max = 4000000

A = 1
B = 2
result = 0

while(B < max):
    if(B % 2 == 0):
        result = result + B
    temp = B
    B = A + B
    A = temp

print result