int search(List<int> nums, int target) {
  int left = 0, right = nums.length - 1;
  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (nums[mid] == target) return mid;
    if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

void main(List<String> args) {
  print(search([-1, 0, 3, 5, 9, 12], 9)); // 4
  print(search([-1, 0, 3, 5, 9, 12], 2)); // -1
}
