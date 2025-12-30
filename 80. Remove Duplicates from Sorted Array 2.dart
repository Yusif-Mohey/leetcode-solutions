int removeDuplicates(List<int> nums) {
  if (nums.length <= 2) return nums.length;
  int k = 2;
  for (int i = 2; i < nums.length; i++) {
    if (nums[i] != nums[k - 2]) {
      nums[k] = nums[i];
      k++;
    }
  }
  return k;
}

void main() {
  print(removeDuplicates([1, 1, 1, 2, 2, 3])); // Expected output: 5
  print(removeDuplicates([0, 0, 1, 1, 1, 1, 2, 3, 3])); // Expected output: 7
}
