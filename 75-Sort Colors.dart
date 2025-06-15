void sortColors(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i; j < nums.length; j++) {
      if (nums[j] < nums[i]) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }
}

void main(List<String> args) {
  List<int> nums = [2, 0, 2, 1, 1, 0];
  sortColors(nums);
  print(nums); // Output: [0, 0, 1, 1, 2, 2]
  nums = [2, 0, 1];
  sortColors(nums);
  print(nums); // Output: [0, 1, 2]
}
