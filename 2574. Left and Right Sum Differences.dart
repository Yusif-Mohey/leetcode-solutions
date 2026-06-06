class Solution {
  List<int> leftRightDifference(List<int> nums) {
    List<int> result = List.filled(nums.length, 0);
    int totalSum = nums.reduce((a, b) => a + b), lSum = 0;
    for (var i = 0; i < nums.length; i++) {
      int rSum = totalSum - lSum - nums[i];
      result[i] = (lSum - rSum).abs();
      lSum += nums[i];
    }
    return result;
  }
}

void main() {
  print(Solution().leftRightDifference([10, 4, 8, 3])); // [15,1,11,22]
  print(Solution().leftRightDifference([1])); // [0]
}
