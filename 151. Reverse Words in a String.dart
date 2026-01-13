String reverseWords(String s) {
  List<String> revSplit = s.trim().split(RegExp('\\s+'));
  String result = '';
  for (int i = revSplit.length - 1; i >= 0; i--) result += revSplit[i] + " ";
  return result.trim();
}

void main(List<String> args) {}
