void main(List<String> args) {
  print(Solution().distinctSubseqII('abc')); //  7
  print(Solution().distinctSubseqII('aba')); //  6
  print(Solution().distinctSubseqII('aaa')); //  3
}

class Solution {
  int distinctSubseqII(String s) {
    int result = 0, mod = 1000000007; // (10 power of 9) + 7
    List<int> db = List.filled(26, 0);
    for (var i = 0; i < s.length; i++) {
      int currentTotal = 0,
          charIndex =
              s.codeUnitAt(i) -
              97; // for Access the lowerCase of all alphabet in str
      for (var element in db)
        currentTotal = (currentTotal + element) % mod; // count total subs

      db[charIndex] = (currentTotal + 1) % mod;
    }
    for (int count in db) {
      result = (result + count) % mod;
    }
    return result;
  }
}
