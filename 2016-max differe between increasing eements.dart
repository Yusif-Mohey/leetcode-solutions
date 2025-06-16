int maximumDifference(List<int> nums) {
  int maxDiff = -1;
  for (int i = 0; i < nums.length - 1; i++) {
    // if (nums[i] < nums[i + 1] && maxDiff < nums[i + 1] - nums[i])
    for (int j = i + 1; j <= nums.length - 1; j++) {
      if (nums[j] > nums[i] && maxDiff < nums[j] - nums[i])
        maxDiff = nums[j] - nums[i];
    }
  }
  return maxDiff;
}

void main(List<String> args) {
  print(maximumDifference([7, 1, 5, 4])); // Output: 4
  print(maximumDifference([9, 4, 3, 2])); // Output: -1
  print(maximumDifference([1, 5, 2, 10])); // Output: 9
}
