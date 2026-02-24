// From the (https://leetcode.com/problems/max-consecutive-ones/?envType=problem-list-v2&envId=dsa-linear-shoal-array-i)
int findMaxConsecutiveOnes(List<int> nums) {
  int maxCount = 0;
  int count = 0;

  for (int num in nums) {
    if (num == 1) {
      count++;
      maxCount = count > maxCount ? count : maxCount;
    } else {
      count = 0;
    }
  }

  return maxCount;
}

void main(List<String> args) {
  print(findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1])); // Output: 3
  print(findMaxConsecutiveOnes([1, 0, 1, 1, 0, 1])); // Output: 2
}
