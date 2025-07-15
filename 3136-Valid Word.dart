void main() {
  print(isValid('234Adas')); //Expected output: true
  print(isValid('b3')); //Expected output: false
  print(isValid("a3\#e")); //Expected output: false
  print(isValid('3pp')); //Expected output: false
  print(isValid('UuE6')); //Expected output: false
  print(isValid('IMG')); //Expected output: false
}

bool isValid(String word) {
  if (word.length < 3 || word.length > 20) return false;
  if (!RegExp(r'[aeiou]', caseSensitive: false).hasMatch(word)) return false;
  if (!RegExp(r'[bcdfghjklmnpqrstvwxyz]', caseSensitive: false).hasMatch(word))
    return false;
  if (!RegExp(r'[0-9]').hasMatch(word)) return false;
  if (RegExp(r'[^a-zA-Z0-9]').hasMatch(word)) return false;
  return true;
}
