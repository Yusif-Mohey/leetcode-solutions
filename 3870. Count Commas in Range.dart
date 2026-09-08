void main(List<String> args) {
  print(Solution().countCommas(1002)); // 3
  print(Solution().countCommas(998)); // 0
}

/// my excution
class Solution {
  int countCommas(int n) {
    int counter = 0;
    for (int i = 1000; i <= n; i++) if (i >= 1000) counter++;
    return counter;
  }
}

/// best excution from LeetCode
// class Solution {
//   int countCommas(int n) {
//     if (n < 1000) {
//       return 0;
//     } else {
//       return n - 999;
//     }
//   }
// }
