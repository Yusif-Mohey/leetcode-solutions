int minimumCost(List<int> cost) {
  cost.sort((a, b) => b.compareTo(a));
  int result = 0;
  for (var i = 0; i < cost.length; i++) if ((i + 1) % 3 != 0) result += cost[i];
  return result;
}

void main() {
  print(minimumCost([1, 2, 3])); // 5
  print(minimumCost([6, 5, 7, 9, 2, 2])); // 23
  print(minimumCost([5, 5])); // 10
}
