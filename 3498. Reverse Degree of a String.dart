void main(List<String> args) {
  print(Solution().reverseDegree('abc')); // 148
  print(Solution().reverseDegree('zaza')); // 160
  print(Solution().reverseDegree('zzzzz')); //
}

// class Solution {
//   int reverseDegree(String s) {
//     int result = 0;
//     for (int j = 0; j < s.length; j++) {
//       final int reverseValue = 26 - (s.codeUnitAt(j) - 'a'.codeUnitAt(0));
//       result += reverseValue * (j + 1);
//     }
//     return result;
//   }
// }

/// My Solution
class Solution {
  int reverseDegree(String s) {
    final Map<String, int> reverseAlphabetMap = {
      'a': 26,
      'b': 25,
      'c': 24,
      'd': 23,
      'e': 22,
      'f': 21,
      'g': 20,
      'h': 19,
      'i': 18,
      'j': 17,
      'k': 16,
      'l': 15,
      'm': 14,
      'n': 13,
      'o': 12,
      'p': 11,
      'q': 10,
      'r': 9,
      's': 8,
      't': 7,
      'u': 6,
      'v': 5,
      'w': 4,
      'x': 3,
      'y': 2,
      'z': 1,
    };

    int result = 0;
    for (int i = 0; i < s.length; i++) {
      String char = s[i].toLowerCase();
      if (reverseAlphabetMap.containsKey(char)) {
        result += (reverseAlphabetMap[char]! * (i + 1));
      }
    }

    return result;
  }
}
