
def is_palindrome(string):
    if string == string[::-1]:
        return True
    else:
        return False

start = 100
end = 999

palindromes = []

for a in range(start, end+1):
    for b in range(a, end+1):
        string = str(a * b)
        if is_palindrome(string):
            palindromes.append(string)
            
palindromes = [int(x) for x in palindromes]
print max(palindromes)