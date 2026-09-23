void main(List<String> args) {
  print(Solution().minOperations([1, 1, 4, 2, 3], 5)); // 2
  print(Solution().minOperations([5, 6, 7, 8, 9], 4)); // -1
  print(Solution().minOperations([3, 2, 20, 1, 1, 3], 10)); // 10
}

class Solution {
  int minOperations(List<int> nums, int x) {
    int total = nums.reduce((a, b) => a + b), target = total - x;
    if (target < 0) return -1;
    if (target == 0) return nums.length;
    int maxLenght = -1, currentSum = 0, left = 0;
    for (int right = 0; right < nums.length; right++) {
      currentSum += nums[right];
      while (currentSum > target && left <= right) {
        currentSum -= nums[left];
        left++;
      }
      if (currentSum == target) {
        int windowLenght = right - left + 1;
        if (windowLenght > maxLenght) {
          maxLenght = windowLenght;
        }
      }
    }
    return maxLenght != -1 ? nums.length - maxLenght : -1;
  }
}
