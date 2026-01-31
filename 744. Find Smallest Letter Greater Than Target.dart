String nextGreatestLetter(List<String> letters, String target) {
  for (var ch in letters) {
    if (ch.compareTo(target) > 0) return ch;
  }
  return letters[0];
}

void main(List<String> args) {
  print(nextGreatestLetter(["c", "f", "j"], 'a')); // out c
  print(nextGreatestLetter(["c", "f", "j"], 'c')); // out f
  print(nextGreatestLetter(["x", "x", "y", "y"], 'z')); // out x
  print(nextGreatestLetter(["c", "f", "j"], 'd')); // out f
}
