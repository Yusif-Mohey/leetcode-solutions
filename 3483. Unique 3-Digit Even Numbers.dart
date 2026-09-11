void main(List<String> args) {
  print(Solution().totalNumbers([1, 2, 3, 4])); // 12
  print(Solution().totalNumbers([0, 2, 2])); // 2
  print(Solution().totalNumbers([6, 6, 6])); // 1
  print(Solution().totalNumbers([1, 3, 5])); // 0
}

class Solution {
  /////  more complex to understand
  int totalNumbers1(List<int> digits) {
    int n = digits.length, ans = 0;
    List<bool> vis = List.filled(999, false);
    for (int i = 0; i < n; ++i) {
      if (digits[i] == 0) continue;
      for (int j = 0; j < n; ++j) {
        if (j == i) continue;
        for (int k = 0; k < n; ++k) {
          if (k == i || k == j || digits[k] % 2 != 0) continue;
          int x = digits[i] * 100 + digits[j] * 10 + digits[k];
          if (!vis[x]) {
            vis[x] = true;
            ++ans;
          }
        }
      }
    }
    return ans;
  }

  /// more simplest
  int totalNumbers(List<int> digits) {
    Set<String> evenCollector = {};
    String number = '';
    for (var i = 0; i < digits.length; i++) {
      // for handrads
      for (var j = 0; j < digits.length; j++) {
        // for tens
        for (var l = 0; l < digits.length; l++) {
          // for once
          if (digits[i] != 0 &&
              digits[l] % 2 == 0 &&
              j != i &&
              j != l &&
              i != l) {
            number = '${digits[i]}${digits[j]}${digits[l]}';
            evenCollector.add(number);
          }
        }
      }
    }
    return evenCollector.length;
  }
}
