void main(List<String> args) {
  final stopwatch = Stopwatch()..start();
  print(Solution().threeSumClosest([-1, 2, 1, -4], 1)); // 2
  stopwatch.stop();
  print('Executed in ${stopwatch.elapsedMilliseconds} ms');

  final stopwatch2 = Stopwatch()..start();
  print(Solution().threeSumClosest([0, 0, 0], 1)); // 0
  stopwatch2.stop();
  print('Executed in ${stopwatch2.elapsedMilliseconds} ms');
}

class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    int closestSum = nums[0] + nums[1] + nums[2];
    for (int i = 0; i < nums.length - 2; i++) {
      int left = i + 1;
      int right = nums.length - 1;
      while (left < right) {
        int currentSum = nums[i] + nums[left] + nums[right];
        if (currentSum == target) {
          return currentSum;
        }
        if ((currentSum - target).abs() < (closestSum - target).abs()) {
          closestSum = currentSum;
        }
        if (currentSum < target) {
          left++;
        } else {
          right--;
        }
      }
    }
    return closestSum;
  }
}
