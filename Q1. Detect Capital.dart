// https://leetcode.com/problems/detect-capital/description/?envType=problem-list-v2&envId=dsa-sequence-valley-string

bool detectCapitalUse(String word) {
  String up = word.toUpperCase(),
      low = word.toLowerCase(),
      fUp = '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';

  return (word == up || word == low || word == fUp) ? true : false;
}

void main(List<String> args) {
  print(detectCapitalUse('USA')); // true
  print(detectCapitalUse('FlaG')); // false
}
