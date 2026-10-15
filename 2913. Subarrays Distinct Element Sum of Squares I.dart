void main(List<String> args) {
  final stopwatch = Stopwatch()..start();
  print(Solution().sumCounts([1, 2, 1])); // 15
  // print(Solution().printSubarrays([1, 2, 1])); // 15
  stopwatch.stop();
  print('Executed in ${stopwatch.elapsedMilliseconds} ms');

  final stopwatch2 = Stopwatch()..start();
  print(Solution().sumCounts([1, 1])); // 3
  stopwatch2.stop();
  print('Executed in ${stopwatch2.elapsedMilliseconds} ms');
}

class Solution {
  int sumCounts(List<int> nums) {
    int sumOfSquares = 0;
    for (int i = 0; i < nums.length; i++) {
      Set<int> s = {};
      for (int j = i; j < nums.length; j++) {
        s.add(nums[j]);
        int count = s.length;
        sumOfSquares += count * count;
      }
    }
    return sumOfSquares;
  }
}
