class Solution {
  final mod = 1337;
  int power(int a, int b) {
    int ans = 1;
    a %= mod;
    for (int i = 0; i < b; i++) ans = (ans * a) % mod;
    return ans;
  }

  int superPow(int a, List<int> b) {
    int ans = 1;
    for (var digit in b) ans = (power(ans, 10) * power(a, digit)) % mod;
    return ans;
  }
}

void main(List<String> args) {
  print(Solution().superPow(2, [3])); // 8
  print(Solution().superPow(2, [1, 0])); // 1024
  print(Solution().superPow(1, [4, 3, 3, 8, 5, 2])); // 8
}
