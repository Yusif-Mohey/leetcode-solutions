// https://leetcode.com/problems/rotate-string/?envType=problem-list-v2&envId=dsa-sequence-valley-string-matching
class Solution {
  bool rotateString(String s, String goal) {
    if (s.length != goal.length) return false;
    String result = s + s;
    return result.contains(goal);
  }
}

void main(List<String> args) {}
