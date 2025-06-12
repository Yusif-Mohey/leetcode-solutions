int majorityElement(List<int> nums) {
  Map<int, int> countMap = {};
  for (int num in nums) {
    if (!countMap.containsKey(num)) countMap[num] = 0;
    countMap[num] = countMap[num]! + 1;
  }
  for (int num in nums) if (countMap[num]! > nums.length ~/ 2) return num;
  return -1;
}

void main(List<String> args) {
  print(majorityElement([3, 2, 3])); // Output: 3
  print(majorityElement([2, 2, 1, 1, 1, 2, 2])); // Output: 2
  print(majorityElement([1])); // Output: 1
}
