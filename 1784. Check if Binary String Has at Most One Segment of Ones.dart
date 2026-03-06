bool checkOnesSegment(String s) {
  bool seenZero = false;
  for (int i = 0; i < s.length; i++)
    if (s[i] == '0')
      seenZero = true;
    else if (seenZero)
      return false;

  return true;
}
///// AI Suggestions
// bool checkOnesSegment(String s) {
//   return !s.contains('01');
// }

void main(List<String> args) {
  print(checkOnesSegment('1001')); // false
  print(checkOnesSegment('110')); // true
  print(checkOnesSegment('10')); // true
}
