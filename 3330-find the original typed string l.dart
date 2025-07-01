void main() {
  print(possibleStringCount('abbcccc')); // Output:5
  print(possibleStringCount('abcd')); // Output: 1
  print(possibleStringCount('aaaa')); // Output: 4
}

int possibleStringCount(String word) {
  int counter = 1;
  for (int i = 0; i < word.length - 1; i++) {
    // if (word.codeUnitAt(i) == word.codeUnitAt(i + 1)) {
    if (word[i] == word[i + 1]) counter++;
    // }
  }
  return counter;
}
