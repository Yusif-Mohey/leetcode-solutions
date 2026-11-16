import 'dart:math';

// class Solution {
String digitSum(String s, int k) {
  while (s.length > k) {
    String temp = "";
    for (var i = 0; i < s.length; i += k) {
      int val = 0;
      for (var j = i; j < min(i + k, s.length); ++j) {
        val += s.codeUnitAt(j) - '0'.codeUnitAt(0);
      }
      temp += '$val';
    }
    s = temp;
  }
  return s;
}

// }
void main(List<String> args) {
  String s = "11111222223";
  int k = 3;
  print('sssssssssssssssssssssssssss ');
  print(digitSum(s, k));
  print('sssssssssssssssssssssssssss ');
}
