void main() {
  print(containsNearbyDuplicate([1, 2, 3, 1], 3)); //Expected Output: true
  print(containsNearbyDuplicate([1, 0, 1, 1], 1)); //Expected Output: true
  print(
    containsNearbyDuplicate([1, 2, 3, 1, 2, 3], 2),
  ); //Expected Output: false
}

bool containsNearbyDuplicate(List<int> nums, int k) {
  for (var i = 0; i < nums.length - 1; i++) {
    for (var j = i + 1; j < nums.length && (i - j).abs() <= k; j++)
      if (nums[i] == nums[j]) return true;
  }
  return false;
}
