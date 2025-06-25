void main() {
  print(productExceptSelf([1, 2, 3, 4]));
  // Output: [24, 12, 8, 6]
  print(productExceptSelf([-1, 1, 0, -3, 3]));
  // Output: [-0, 0, 9, 0, 0]
  print(productExceptSelf([0, 0]));
  // Output: [0, 0]
  print(productExceptSelf([0, 1, 1]));
  // Output: [1, 0, 0]
}

List<int> productExceptSelf(List<int> nums) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    int multiple = 1;
    nums[i] != 0
        ? multiple = nums.reduce((a, b) => a * b) ~/ nums[i]
        : multiple = nums.where((n) => n != 0).fold(1, (a, b) => a * b);
    result.add(multiple);
  }
  return result;
}
