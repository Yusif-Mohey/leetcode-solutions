int minimumDifference(List<int> nums, int k) {
  if (nums.length == 1) return 0;
  nums.sort();
  int minDiff = double.maxFinite.toInt();
  for (int i = 0; i + k - 1 < nums.length; i++) {
    minDiff = minDiff < (nums[i + k - 1] - nums[i])
        ? minDiff
        : (nums[i + k - 1] - nums[i]);
  }
  return minDiff;
}

void main(List<String> args) {
  print(minimumDifference([90], 1)); // 0
  print(minimumDifference([9, 4, 1, 7], 2)); // 2
}
