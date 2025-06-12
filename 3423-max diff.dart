import 'dart:math';

int maxAdjacentDistance(List<int> nums) {
  // nums.sort((a, b) => b.abs().compareTo(a.abs()));
  // return (nums[0] - nums[nums.length - 1]).abs();
  int maximum = (nums[0] - nums[nums.length - 1]).abs();
  for (int i = 0; i < nums.length - 1; i++)
    maximum = max(maximum, (nums[i] - nums[i + 1]).abs());
  return maximum;
}

main() {
  print(maxAdjacentDistance([1, 2, 4])); // Output: 3
  print(maxAdjacentDistance([-5, -10, -5])); // Output: 5
  print(maxAdjacentDistance([9, 2, -4])); // Output: 13
  print(maxAdjacentDistance([3, 2, -5, -3])); // Output:  7
}
