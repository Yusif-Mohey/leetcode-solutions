int numTrees(int n) {
  int result = 0;
  if (n <= 1) return 1;
  for (int i = 1; i <= n; i++) result += numTrees(i - 1) * numTrees(n - i);
  return result;
}

void main(List<String> args) {
  print(numTrees(3)); // 5
  print(numTrees(4)); // 14
  print(numTrees(5)); // 42
  print(numTrees(1)); // 1
}
