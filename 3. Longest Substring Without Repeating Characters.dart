void main(List<String> args) {
  print(Solution().lengthOfLongestSubstring('abcabcbb')); // 3
  print(Solution().lengthOfLongestSubstring('bbbb')); // 1
  print(Solution().lengthOfLongestSubstring('pwwkew')); // 3
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    int left = 0, right = 0, reuslt = 0;
    Set<String> nonRepeated = {};
    while (right < s.length) {
      if (!nonRepeated.contains(s[right])) {
        nonRepeated.add(s[right]);
        reuslt = reuslt > nonRepeated.length ? reuslt : nonRepeated.length;
        right++;
      } else {
        nonRepeated.remove(s[left]);
        left++;
      }
    }
    return reuslt;
  }
}
