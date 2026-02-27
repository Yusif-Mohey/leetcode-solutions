// https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/?envType=problem-list-v2&envId=dsa-linear-shoal-array-ii
List<int> smallerNumbersThanCurrent(List<int> nums) {
  List<int> result = List.filled(nums.length, 0);
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (nums[j] < nums[i]) {
        result[i]++;
      }
    }
  }
  return result;
}
void main(List<String> args) {

  print(smallerNumbersThanCurrent([8, 1, 2, 2, 3])); // Output: [4, 0, 1, 1, 3]
  print(smallerNumbersThanCurrent([6, 5, 4, 8])); // Output: [2, 1, 0, 3]
  print(smallerNumbersThanCurrent([7, 7, 7, 7])); // Output: [0, 0, 0, 0] 
}
