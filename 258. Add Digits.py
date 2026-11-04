from typing import List

def addDigits( num: int) -> int:
    if num == 0 : 
        return 0 
    if num % 9 == 0 : 
        return 9 
    return num % 9

print(addDigits(38))  # output : 2
print(addDigits(0))  # output : 0
print(addDigits(8))  # output : 8