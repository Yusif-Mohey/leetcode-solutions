void main(List<String> args) {
  print(Solution().countCommas(1002)); // 3
  print(Solution().countCommas(998)); // 0
  print(Solution().countCommas(3077)); // 2070
}

class Solution {
  int countCommas(int n) {
    int result = 0, increaseCommma = 1000, currentCommas = 1000;
    while (currentCommas <= n) {
      result += (n - currentCommas + 1);
      currentCommas *= increaseCommma;
    }
    return result;
  }
}
