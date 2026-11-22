class Solution {
  bool checkString(String s) {
    if (s.contains('ba')) return false;
    return true;
  }
}

main() {
  print(Solution().checkString('aaabbb'));
  print(Solution().checkString('abab'));
  print(Solution().checkString('bbb'));
}
