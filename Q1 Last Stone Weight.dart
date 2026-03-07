int lastStoneWeight(List<int> stones) {
  while (stones.length > 1) {
    stones.sort();
    int x = stones.removeLast();
    int y = stones.removeLast();
    if (x != y) stones.add(x - y);
  }
  return stones.isEmpty ? 0 : stones[0];
}

/*
int lastStoneWeight(List<int> stones) {
  int n = stones.length;
  for (int i = n - 1; i > 0; i--) {
    stones.sort();
    if (stones[i] >= stones[i - 1]) {
      int value = stones[i] - stones[i - 1];
      stones.removeAt(i);
      stones.removeAt(i - 1);
      stones.add(value);
    }
  }
  print(stones);
  return stones[stones.length - 1];
} */
void main(List<String> args) {
  print(lastStoneWeight([2, 7, 4, 1, 8, 1])); // 1
  print(lastStoneWeight([1])); // 1
}
