class Solution {
  int firstStableIndex(List<int> nums, int k) {
    int smallestIndex = 9007199254740991, biggestIndex = 0;
    if (nums.length == 1) return biggestIndex;
    List<int> minIndexList = [...nums];
    for (int i = nums.length - 1; i >= 0; i--) {
      if (nums[i] < smallestIndex && smallestIndex != -1)
        smallestIndex = nums[i];
      minIndexList[i] = smallestIndex;
    }
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > biggestIndex) biggestIndex = nums[i];
      if (biggestIndex - minIndexList[i] <= k) return i;
    }
    return -1;
  }
}

void main(List<String> args) {
  print(Solution().firstStableIndex([5, 0, 1, 4], 3)); // 3
  print(Solution().firstStableIndex([3, 2, 1], 1)); // -1
  print(Solution().firstStableIndex([0], 0)); // 0
}
