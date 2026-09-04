class Solution {
  int specialArray(List<int> nums) {
    nums.sort();
    for (int x = 1; x <= nums.length; x++) {
      int count = 0;
      for (int num in nums) {
        if (num >= x) count++;
      }
      if (count == x) return x;
    }
    return -1;
  }
}

void main(List<String> args) {
  print(Solution().specialArray([3, 5])); // 2
  print(Solution().specialArray([0, 0])); // -1
  print(Solution().specialArray([0, 4, 3, 0, 4])); // 3
  print(Solution().specialArray([3, 6, 7, 7, 0])); // -1
}
