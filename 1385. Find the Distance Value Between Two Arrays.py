
import bisect

def findTheDistanceValue( arr1: list[int], arr2: list[int], d: int) -> int:
    arr2.sort()
    counter =0 
    for i in arr1 :
        p = bisect.bisect_left(arr2,i)
        if p == len(arr2) or abs(i - arr2[p]) > d :
            if p == 0 or abs (i - arr2[p-1]) > d:
                counter+=1
    return counter

print(findTheDistanceValue([4,5,8],[10,9,1,8],2)) # 2 
print(findTheDistanceValue([1,4,2,3],[-4,-3,6,10,20,30],3)) # 2 
print(findTheDistanceValue([2,1,100,3],[-5,-2,10,-3,7],6)) # 1 