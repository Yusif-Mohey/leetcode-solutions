class Solution {
  int repeatedStringMatch(String a, String b) {
    int count = (b.length / a.length).ceil();
    String repeatedA = a * count;
    if (repeatedA.contains(b)) return count;
    repeatedA += a;
    if (repeatedA.contains(b)) return count + 1;
    return -1;
  }
}

void main() {
  print(Solution().repeatedStringMatch("abcd", "cdabcdab")); // Output: 3

  print(Solution().repeatedStringMatch("a", "aa")); // Output: 2
}
