void main(List<String> args) {
  print(Solution().sortPermutation([0, 3, 2, 1])); // 1
  print(Solution().sortPermutation([0, 1, 3, 2])); // 2
  print(Solution().sortPermutation([3, 2, 1, 0])); // 0
}

class Solution {
  int sortPermutation(List<int> nums) {
    final n = nums.length;
    final sorted = [...nums]..sort();
    int? res;
    for (int i = 0; i < n; i++) {
      if (nums[i] != sorted[i]) {
        if (res == null) {
          res = nums[i];
        } else {
          res &= nums[i];
        }
      }
    }
    return res ?? 0;
  }
}
