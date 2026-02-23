// From the (https://leetcode.com/quest/data-structures-and-algorithms-quest/)
List<int> getConcatenation(List<int> nums) {
  return [...nums, ...nums];
  // or
  // return nums + nums;
  // or
  // return List.from(nums)..addAll(nums);
}

void main(List<String> args) {
  print(getConcatenation([1, 2, 1])); // output: [1, 2, 1, 1, 2, 1]
  print(getConcatenation([1, 3, 2, 1])); // output: [1, 3, 2, 1, 1, 3, 2, 1 ]
}
