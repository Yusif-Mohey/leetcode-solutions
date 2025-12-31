bool canJump(List<int> nums) {
  int goal = nums.length - 1;

  for (int i = nums.length - 2; i >= 0; i--) {
    if (goal <= i + nums[i]) {
      goal = i;
    }
  }

  return goal == 0 ? true : false;
}

void main() {
  print(canJump([2, 3, 1, 1, 4])); // true
  print(canJump([3, 2, 1, 0, 4])); // false
  print(canJump([0])); // true
  print(canJump([0, 1])); // false
  print(canJump([2, 0])); // true
}
