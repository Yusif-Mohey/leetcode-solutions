import 'dart:math';

int dominantIndex(List<int> nums) {
  int maxx = nums.reduce(max);
  int res = nums.indexOf(maxx);
  nums.sort();
  if (nums[nums.length - 1] >= nums[nums.length - 2] * 2) return res;
  return -1;
}

void main(List<String> args) {
  print(dominantIndex([3, 6, 1, 0])); // 1
  print(dominantIndex([1, 2, 3, 4])); // -1
}
