List<int> sortArray(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i; j < nums.length; j++) {
      if (nums[j] < nums[i]) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }

  return nums;
}

//it gived time complexity of O(n^2) and space complexity of O(1)
// This is a simple implementation of bubble sort to sort an array of integers.
//so i use{class Solution {
//   List<int> sortArray(List<int> nums) {
//     nums.sort();
//     return nums;
//   }
// }
// }
//add it works good
void main(List<String> args) {
  print(sortArray([5, 2, 3, 1])); // Output: [1, 2, 3, 5]
  print(sortArray([5, 1, 1, 2, 0, 0])); // Output: [0, 0, 1, 1, 2, 5]
}
