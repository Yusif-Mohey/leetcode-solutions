int countPermutations(List<int> complexity) {
  Map<int, int> tester = {};
  int res = 1, minOfList = complexity.reduce((a, b) => a < b ? a : b);
  for (var i = 0; i < complexity.length; i++)
    tester[complexity[i]] = (tester[complexity[i]] ?? 0) + 1;
  if (minOfList != complexity[0] || tester[minOfList]! >= 2)
    return 0;
  else {
    for (int i = 2; i < complexity.length; i++) {
      res = (res * i) % (1000000007);
    }
  }
  return res;
}

void main() {
  print(countPermutations([1, 2, 3])); //Output: 2
  print(countPermutations([3, 3, 3, 4, 4, 4])); //Output: 0
  print(countPermutations([58, 288, 52])); //Output: 0
  print(countPermutations([2, 68, 61])); //Output: 2
  print(countPermutations([2, 79, 2, 24, 15, 80, 94, 31])); //Output: 0
}
