import 'dart:math';

void main() {
  print(findLHS([1, 3, 2, 2, 5, 2, 3, 7])); //Output: 5
  print(findLHS([1, 2, 3, 4])); //Output: 2
  print(findLHS([1, 1, 1, 1])); //Output: 0
}

int findLHS(List<int> nums) {
  int longest = 0;
  Map<int, int> repeated = {};
  for (var element in nums) {
    repeated[element] = (repeated[element] ?? 0) + 1;
  }
  for (var element in repeated.keys) {
    if (repeated.containsKey(element + 1))
      longest = max(longest, repeated[element]! + repeated[element + 1]!);
  }
  return longest;
}
