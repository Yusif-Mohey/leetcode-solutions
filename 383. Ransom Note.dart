// form the lettCode Solutions i found it very simple
// "https://leetcode.com/problems/ransom-note/solutions/6776836/dart-solution-by-muminovsharifboy-trit/?envType=study-plan-v2&envId=top-interview-150"

//  bool canConstruct(String ransomNote, String magazine) {
//   for (int i = 0; i < magazine.length; i++)
//     ransomNote = ransomNote.replaceFirst(magazine[i], "");
//   return ransomNote.isEmpty;
// }
bool canConstruct(String ransomNote, String magazine) {
  Map<String, int> magCount = {};
  for (int i = 0; i < magazine.length; i++) {
    String char = magazine[i];
    magCount[char] = (magCount[char] ?? 0) + 1;
  }
  for (int i = 0; i < ransomNote.length; i++) {
    String char = ransomNote[i];
    if (magCount[char] == null || magCount[char]! <= 0) {
      return false;
    }
    magCount[char] = magCount[char]! - 1;
  }
  return true;
}

void main(List<String> args) {
  print(canConstruct("a", "b")); // false
  print(canConstruct("aa", "ab")); // false
  print(canConstruct("aa", "aab")); // true
  print(canConstruct("aab", "baa")); // true
}
