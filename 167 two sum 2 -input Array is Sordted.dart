void main() {
  print(twoSum([2, 7, 11, 15], 9)); //expected output: [1, 2]
  print(twoSum([2, 3, 4], 6)); //expected output: [1, 3]
  print(twoSum([-1, 0], -1)); //expected output: [1, 2]
}

List<int> twoSum(List<int> numbers, int target) {
  List<int> result = [];
  int left = 0, right = numbers.length - 1;
  while (left < right) {
    int sum = numbers[left] + numbers[right];
    if (sum == target) {
      result.add(left + 1);
      result.add(right + 1);
      return result;
    } else if (sum < target)
      left++;
    else
      right--;
  }

  return result;
}
