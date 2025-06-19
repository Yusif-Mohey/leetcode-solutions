void main() {
  print(partitionArray([3, 6, 1, 2, 5], 2)); // Output: 2
  print(partitionArray([1, 2, 3], 1)); // Output: 2
  print(partitionArray([2, 2, 4, 5], 0)); // Output: 3
}

int partitionArray(List<int> nums, int k) {
  nums.sort();
  int count = 0, i = 0;
  while (i < nums.length) {
    int startSubClass = nums[i];
    count++;
    while (i < nums.length && nums[i] - startSubClass <= k) i++;
  }
  return count;
}
