void main() {
  print(
    fourSum([1, 0, -1, 0, -2, 2], 0),
  ); // expected output [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
  print(fourSum([2, 2, 2, 2, 2], 8)); // expected output [[2,2,2,2]]
}

List<List<int>> fourSum(List<int> nums, int target) {
  if (nums.length < 4) return [];
  List<List<int>> reslut = [];
  nums.sort();
  for (int i = 0; i < nums.length - 3; i++) {
    if (i > 0 && nums[i] == nums[i - 1]) continue;
    for (int j = i + 1; j < nums.length - 2; j++) {
      if (j > i + 1 && nums[j] == nums[j - 1]) continue;
      int left = j + 1, right = nums.length - 1;
      while (left < right) {
        int sum = nums[left] + nums[right] + nums[i] + nums[j];
        if (sum == target) {
          reslut.add([nums[i], nums[j], nums[left], nums[right]]);
          while (left < right && nums[left] == nums[left + 1]) left++;
          while (left < right && nums[right] == nums[right - 1]) right--;
          left++;
          right--;
        } else if (sum < target)
          left++;
        else
          right--;
      }
    }
  }
  return reslut;
}
