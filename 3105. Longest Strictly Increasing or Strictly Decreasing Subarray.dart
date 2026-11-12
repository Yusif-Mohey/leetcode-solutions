class Solution {
  int longestMonotonicSubarray(List<int> nums) {
    int maxIncLength = 1,
        maxDecLength = 1,
        currentIncLength = 1,
        currentDecLength = 1;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] > nums[i - 1]) {
        currentIncLength++;
        currentDecLength = 1;
      } else if (nums[i] < nums[i - 1]) {
        currentDecLength++;
        currentIncLength = 1;
      } else {
        currentIncLength = 1;
        currentDecLength = 1;
      }
      if (currentIncLength > maxIncLength) maxIncLength = currentIncLength;

      if (currentDecLength > maxDecLength) maxDecLength = currentDecLength;
    }

    return maxIncLength > maxDecLength ? maxIncLength : maxDecLength;
  }
}

main() {
  List<int> nums = <int>[1, 4, 3, 3, 2];
  print(Solution().longestMonotonicSubarray(nums)); // 2

  List<int> nums2 = <int>[3, 3, 3, 3];
  print(Solution().longestMonotonicSubarray(nums2)); // 1

  List<int> nums3 = <int>[3, 2, 1];
  print(Solution().longestMonotonicSubarray(nums3)); // 3
}
