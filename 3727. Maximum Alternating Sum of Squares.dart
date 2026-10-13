void main(List<String> args) {
  final stopwatch = Stopwatch()..start();
  print(Solution().maxAlternatingSum([1, 2, 3])); // 12
  stopwatch.stop();
  print('Executed in ${stopwatch.elapsedMilliseconds} ms');

  final stopwatch2 = Stopwatch()..start();
  print(Solution().maxAlternatingSum([1, -1, 2, -2, 3, -3])); // 16
  stopwatch2.stop();
  print('Executed in ${stopwatch2.elapsedMilliseconds} ms');
}

class Solution {
  int maxAlternatingSum(List<int> nums) {
    for (int i = 0; i < nums.length; i++) nums[i] *= nums[i];
    nums.sort();
    int result = 0;
    for (int i = 0; i < (nums.length / 2).toInt(); i++) result -= nums[i];
    for (int i = (nums.length / 2).toInt(); i < nums.length; i++)
      result += nums[i];

    return result;
  }
}
