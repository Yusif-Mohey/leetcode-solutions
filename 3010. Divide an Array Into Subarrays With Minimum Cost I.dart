int minimumCost(List<int> nums) {
  int n = nums.length;
  for (int i = 1; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (nums[i] > nums[j]) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }
  return nums[0] + nums[1] + nums[2];
}

void main(List<String> args) {
  print(minimumCost([1, 2, 3, 12])); // out : 6
  print(minimumCost([5, 4, 3])); // out : 12
  print(minimumCost([10, 1, 1, 3])); // out : 12
}
