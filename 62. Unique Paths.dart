import 'dart:math';

void main(List<String> args) {
  print(Solution().uniquePaths(3, 7)); // 28
  print(Solution().uniquePaths(3, 2)); // 3
}

class Solution {
  int uniquePaths(int m, int n) {
    final distance = m + n - 2, steps = min(m, n) - 1;
    int result = 1;
    for (int i = 0; i < steps; i++) {
      result *= distance - i;
      result ~/= i + 1;
    }
    return result;
  }
}
