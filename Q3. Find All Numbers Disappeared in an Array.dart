// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/description/?envType=problem-list-v2&envId=dsa-linear-shoal-array-ii

List<int> findDisappearedNumbers(List<int> nums) {
  Set<int> numSet = nums.toSet();
  List<int> result = [];
  for (int i = 1; i <= nums.length; i++) {
    if (!numSet.contains(i)) {
      result.add(i);
    }
  }
  return result;
}

void main(List<String> args) {
  print(findDisappearedNumbers([4, 3, 2, 7, 8, 2, 3, 1])); // Output: [5, 6]
  print(findDisappearedNumbers([1, 1])); // Output: [2]
}
