import 'dart:math';

class Solution {
  int minimumDeletions(List<int> nums) {
    if (nums.length == 1) return 1;
    int maxNumber = nums.reduce(max),
        minNumber = nums.reduce(min),
        maxIndex = nums.indexOf(maxNumber),
        minIndex = nums.indexOf(minNumber),
        n = nums.length,
        leftIndex = min(maxIndex, minIndex),
        rightIndex = max(maxIndex, minIndex);
    return min(
      leftIndex + 1 + n - rightIndex,
      min(rightIndex + 1, n - leftIndex),
    );
  }
}

void main(List<String> args) {
  print(Solution().minimumDeletions([2, 10, 7, 5, 4, 1, 8, 6])); // 5
  print(Solution().minimumDeletions([0, -4, 19, 1, 8, -2, -3, 6])); // 3
  print(Solution().minimumDeletions([101])); // 1
  print(
    Solution().minimumDeletions([
      -1,
      -53,
      93,
      -42,
      37,
      94,
      97,
      82,
      46,
      42,
      -99,
      56,
      -76,
      -66,
      -67,
      -13,
      10,
      66,
      85,
      -28,
    ]),
  ); // 11
}
