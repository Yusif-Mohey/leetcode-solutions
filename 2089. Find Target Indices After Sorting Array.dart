class Solution {
  List<int> targetIndices(List<int> nums, int target) {
    nums.sort();
    List<int> res = [];
    for (var i = 0; i < nums.length; i++) if (nums[i] == target) res.add(i);
    return res;
  }
}

void main(List<String> args) {
  print(Solution().targetIndices([1, 2, 5, 2, 3], 2)); // [1, 2]
  print(Solution().targetIndices([1, 2, 5, 2, 3], 3)); // [3]
  print(Solution().targetIndices([1, 2, 5, 2, 3], 5)); // [4]
}
