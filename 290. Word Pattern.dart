bool wordPattern(String pattern, String s) {
  var patterns = pattern.split("");
  var words = s.split(" ");

  final matches = {};
  bool result = true;

  if (patterns.length != words.length) return false;
  patterns.asMap().forEach((idx, pattern) {
    if (matches.containsKey(pattern)) {
      final patternWord = matches[pattern];
      if (words[idx] != patternWord) result = false;
    } else {
      if (!matches.containsValue(words[idx]))
        matches[pattern] = words[idx];
      else
        result = false;
    }
  });
  return result;
}

void main(List<String> args) {
  print(wordPattern('abba', "dog cat cat dog")); // ture
  print(wordPattern('abba', "dog cat cat fish")); // false
  print(wordPattern('aaaa', "dog cat cat dog")); // false
}
