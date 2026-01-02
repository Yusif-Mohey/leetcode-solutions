int repeatedNTimes(List<int> nums) {
  return nums.firstWhere((num) => nums.where((n) => n == num).length > 1);
}

void main() {
  print(repeatedNTimes([1, 2, 3, 3])); // Output: 3
  print(repeatedNTimes([2, 1, 2, 5, 3, 2])); // Output: 2
  print(repeatedNTimes([5, 1, 5, 2, 5, 3, 5, 4])); // Output: 5
}
