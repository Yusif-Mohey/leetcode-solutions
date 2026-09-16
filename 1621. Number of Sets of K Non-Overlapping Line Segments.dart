main() {
  print(Solution().numberOfSets(4, 2)); // 5
  print(Solution().numberOfSets(3, 1)); // 3
  print(Solution().numberOfSets(30, 7)); // 796297179
}

class Solution {
  int numberOfSets(int n, int k) {
    const int mod = 1000000007;

    List<int> dp = List.filled(n, 0), prefixSums = List.filled(n + 1, 0);
    for (int j = 0; j < n; j++) {
      dp[j] = 1;
      prefixSums[j + 1] = (prefixSums[j] + dp[j]) % mod;
    }
    for (int i = 1; i <= k; i++) {
      dp[0] = 0;
      for (int j = 1; j < n; j++) {
        dp[j] = (dp[j - 1] + prefixSums[j]) % mod;
      }
      for (int j = 0; j < n; j++) {
        prefixSums[j + 1] = (prefixSums[j] + dp[j]) % mod;
      }
    }
    return dp[n - 1];
  }
}
