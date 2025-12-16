int countPartitions(List<int> nums) {
  int ans = 0, sum = 0, leftSum = 0;
  for (int i = 0; i < nums.length; i++) sum += nums[i];
  for (int i = 0; i < nums.length - 1; i++) {
    leftSum += nums[i];
    sum -= nums[i];
    if ((leftSum - sum) % 2 == 0) ans++;
  }
  return ans;
}

void main() {
  print(countPartitions([10, 10, 3, 7, 6])); // Output: 4
  print(countPartitions([1, 2, 2])); // Output: 0
  print(countPartitions([2, 4, 6, 8])); // Output: 3
}
