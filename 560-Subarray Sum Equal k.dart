void main() {
  print(subarraySum([1, 1, 1], 2)); // Output: 2
  print(subarraySum([1, 2, 3], 3)); // Output: 2
}

int subarraySum(List<int> nums, int k) {
  int counter = 0;
  // for (int i = 0; i < nums.length; i++) {
  //   for (int j = i; j < nums.length; j++) {
  //     List<int> subarray = nums.sublist(i, j + 1);
  //     int sum = subarray.reduce((a, b) => a + b);
  //     if (sum == k) counter++;
  //   }
  // }
  for (int i = 0; i < nums.length; i++) {
    int sum = 0;
    for (int j = i; j < nums.length; j++) {
      sum += nums[j];
      if (sum == k) counter++;
    }
  }
  return counter;
}
