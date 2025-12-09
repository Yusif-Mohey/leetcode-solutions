int specialTriplets(List<int> nums) {
  int res = 0;
  Map<int, int> rightMap = {}, leftMap = {};
  for (var n in nums) rightMap[n] = (rightMap[n] ?? 0) + 1;
  for (var j = 0; j < nums.length; j++) {
    int currentVal = nums[j];
    rightMap[currentVal] = (rightMap[currentVal] ?? 0) - 1;
    int target = currentVal * 2;
    int leftCount = leftMap[target] ?? 0;
    int rightCount = rightMap[target] ?? 0;
    if (leftCount > 0 && rightCount > 0) res += leftCount * rightCount;
    leftMap[currentVal] = (leftMap[currentVal] ?? 0) + 1;
  }
  return res;
}

main() {
  print(specialTriplets([6, 3, 6])); //Output: 1
  print(specialTriplets([0, 1, 0, 0])); //Output: 1
  print(specialTriplets([8, 4, 2, 8, 4])); //Output: 2
}
