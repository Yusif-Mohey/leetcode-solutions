void main() {
  print(isPalindrome("A man, a plan, a canal: Panama")); //Output: true
  print(isPalindrome("race a car")); //Output: false
}

bool isPalindrome(String s) {
  String reversed = "";
  s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  for (var i = s.length - 1; i >= 0; i--) reversed = reversed + s[i];
  if (s == reversed) return true;
  return false;
}
