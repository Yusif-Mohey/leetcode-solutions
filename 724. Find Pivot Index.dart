int pivotIndex(List<int> nums) {
  int sum = 0, temp = 0;
  for (int i = 0; i < nums.length; i++) sum += nums[i];

  for (int i = 0; i < nums.length; i++) {
    if ((sum - temp) - nums[i] == temp) return i;
    temp = temp + nums[i];
  }

  return -1;
}

void main(List<String> args) {
  print(pivotIndex([2, 3, -1, 8, 4])); // 3
  print(pivotIndex([1, -1, 4])); // 2
  print(pivotIndex([1, 7, 3, 6, 5, 6])); // 3
  print(pivotIndex([1, 2, 3])); // -1
  print(pivotIndex([2, 1, -1])); // -0
}
