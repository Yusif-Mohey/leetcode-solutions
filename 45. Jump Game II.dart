import 'dart:math';

int jump(List<int> nums) {
  int jumps = 0;
  int currentEnd = 0;
  int farthest = 0;

  for (int i = 0; i < nums.length - 1; i++) {
    farthest = max(farthest, i + nums[i]);
    if (i == currentEnd) {
      jumps++;
      currentEnd = farthest;
    }
  }

  return jumps;
}

void main() {
  print(jump([2, 3, 1, 1, 4])); // Output: 2
  print(jump([2, 3, 0, 1, 4])); // Output: 2
}
