int missingMultiple(List<int> nums, int k) {
  Set<int> numbers = nums.toSet();
  int result = k;
  while (numbers.contains(result)) {
    result += k;
  }

  return result;
}

void main(List<String> args) {
  print(missingMultiple([8, 2, 3, 4, 6], 2)); // 10
  print(missingMultiple([1, 4, 7, 10, 15], 5)); // 5
}
