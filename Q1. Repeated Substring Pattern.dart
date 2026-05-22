//https://leetcode.com/problems/masking-personal-information/description/?envType=problem-list-v2&envId=dsa-sequence-valley-string

bool repeatedSubstringPattern(String s) {
  int n = s.length;
  List<int> lps = List.filled(n, 0);
  int len = 0, i = 1;
  while (i < n) {
    if (s[i] == s[len]) {
      len++;
      lps[i] = len;
      i++;
    } else {
      if (len != 0) {
        len = lps[len - 1];
      } else {
        lps[i] = 0;
        i++;
      }
    }
  }
  int lastLps = lps[n - 1];
  return lastLps > 0 && n % (n - lastLps) == 0;
}

void main(List<String> args) {}
