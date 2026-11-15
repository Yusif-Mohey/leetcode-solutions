class Solution {
  // int numOfSubarrays(List<int> arr) {
  //   int oddCounter = 0;
  //   const int MOD = 1000000007;
  //   /// or you can use this in double cases "const MOD = 1e9 + 7;"
  //   for (int i = 0; i < arr.length; i++) {
  //     int currentSummation = 0;
  //     for (int j = i; j < arr.length; j++) {
  //       currentSummation += arr[j];
  //       if (currentSummation % 2 != 0) oddCounter++;
  //     }
  //   }
  //   return oddCounter % MOD;
  // }

  int numOfSubarrays(List<int> arr) {
    const int MOD = 1000000007;

    int ans = 0, evenConter = 1, oddCounter = 0, prefix = 0;
    for (var element in arr) {
      prefix += element;
      if (prefix % 2 != 0) {
        ans = (ans + evenConter) % MOD;
        oddCounter++;
      } else {
        ans = (ans + oddCounter) % MOD;
        evenConter++;
      }
    }

    return ans;
  }
}

void main(List<String> args) {
  print(Solution().numOfSubarrays([1, 3, 5])); // 4
  print(Solution().numOfSubarrays([2, 4, 6])); // 0
  print(Solution().numOfSubarrays([1, 2, 3, 4, 5, 6, 7])); // 4
}
