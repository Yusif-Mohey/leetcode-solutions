void main() {
  rotate([1, 2, 3, 4, 5, 6, 7], 3); // [5, 6, 7, 1, 2, 3, 4]
  rotate([-1, -100, 3, 99], 2); // [3, 99, -1, -100]
}

void rotate(List<int> nums, int k) {
  k = k % nums.length;
  List<int> rotated = [
    ...nums.sublist(nums.length - k),
    ...nums.sublist(0, nums.length - k),
  ];
  for (int i = 0; i < nums.length; i++) {
    nums[i] = rotated[i];
  }
  print(nums);
}
