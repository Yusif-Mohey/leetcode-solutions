void main(List<String> args) {
  print(Solution().numDistinct('rabbbit', 'rabbit')); // 3
  print(Solution().numDistinct('babgbag', 'bag')); // 5
  print(Solution().numDistinct("", "")); // 1 (empty t from empty s)
  print(Solution().numDistinct("abc", "")); // 1 (empty t from non-empty s)
  print(Solution().numDistinct("", "abc")); // 0 (non-empty t from empty s)
  print(Solution().numDistinct("aaa", "aa")); // 3 (choose which 'a' to skip)
}

class Solution {
  int numDistinct(String s, String t) {
    List<int> dp = List<int>.filled(t.length + 1, 0);
    dp[0] = 1;
    for (int i = 1; i <= s.length; i++)
      for (int j = t.length; j >= 1; j--)
        if (s[i - 1] == t[j - 1]) dp[j] += dp[j - 1];

    return dp[t.length];
  }
}
