void main() {
  print(findMissingElements([1, 4, 2, 5])); // [3]
  print(findMissingElements([7, 8, 6, 9])); // []
  print(findMissingElements([5, 1])); // [2, 3, 4]
}

List<int> findMissingElements(List<int> nums) {
  nums.sort();
  int minNumber = nums[0], maxxNumber = nums[nums.length - 1];
  List<int> missingNumber = [];
  for (int i = minNumber + 1; i < maxxNumber; i++) {
    int index = nums.indexOf(i);
    if (index == -1) {
      missingNumber.add(i);
    }
  }
  return missingNumber;
}
