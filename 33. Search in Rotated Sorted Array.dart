void main(List<String> args) {
  print(search([4, 5, 6, 7, 0, 1, 2], 0)); // 4
  print(search([4, 5, 6, 7, 0, 1, 2], 3)); // -1
  print(search([1], 0)); // -1
}

int search(List<int> nums, int target) {
  final left = 0;
  final right = nums.length - 1;
  final mid = (left + (right - left)) ~/ 2;

  print(mid);
  // iterating through first half
  var l = 0;
  var r = right;
  while (l <= r) {
    if (nums[l] == target) {
      return l;
    }
    if (nums[r] == target) {
      return r;
    }
    l++;
    r--;
  }

  return -1;
}
