from typing import List

def minMoves(nums: List[int]) -> int:
    maxVal = 0;totalSum = 0
    for i in range(len(nums)):
        totalSum += nums[i]
        if nums[i] > maxVal:
            maxVal = nums[i]    
    return maxVal * len(nums) - totalSum

print(minMoves([2,1,3])) # output : 3
print(minMoves([4, 4, 5])) # output : 2
