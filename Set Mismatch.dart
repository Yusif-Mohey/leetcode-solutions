// 645. Set Mismatch
// https://leetcode.com/problems/set-mismatch/?envType=problem-list-v2&envId=dsa-linear-shoal-array-ii

List<int> findErrorNums(List<int> nums) {
  List<int> count = List.filled(nums.length + 1, 0);
  for (int num in nums) count[num]++;
  int duplicate = -1, missing = -1;
  for (int i = 1; i <= nums.length; i++) {
    if (count[i] == 2)
      duplicate = i;
    else if (count[i] == 0)
      missing = i;
  }
  return [duplicate, missing];
}

void main(List<String> args) {
  print(findErrorNums([1, 2, 2, 4])); // Output: [2,3]
  print(findErrorNums([1, 1])); // Output: [1,2]
  print(findErrorNums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10])); // Output: [10,11]
  print(findErrorNums([2, 2])); // Output: [2,3]
}
