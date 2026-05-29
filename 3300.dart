class Solution {
  int SummationOfDiditsNumbers(int num) {
    int res = 0;
    while (num > 0) {
      res += num % 10;
      num ~/= 10;
    }
    return res;
  }

  int minElement(List<int> nums) {
    List<int> newModifiedNums = nums
        .map((num) => SummationOfDiditsNumbers(num))
        .toList();
    return newModifiedNums.reduce((a, b) => a < b ? a : b);
  }
}

void main(List<String> args) {
  print(Solution().minElement([10, 12, 13, 14])); // 1
  print(Solution().minElement([1, 2, 3, 4])); // 1
  print(Solution().minElement([999, 19, 199])); // 10
  print(Solution().minElement([96, 89])); // 15
}
