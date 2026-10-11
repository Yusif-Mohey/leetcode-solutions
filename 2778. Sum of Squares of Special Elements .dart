void main(List<String> args) {
  print(Solution().sumOfSquares([1, 2, 3, 4])); // 21
  print(Solution().sumOfSquares([2, 7, 1, 19, 18, 3])); // 63
}

class Solution {
  int sumOfSquares(List<int> nums) {
    int summationOfSquares = 0;
    for (int i = 1; i <= nums.length; i++) {
      if (nums.length % i == 0)
        summationOfSquares += (nums[i - 1] * nums[i - 1]);
    }

    return summationOfSquares;
  }
}
