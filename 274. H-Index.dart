int hIndex(List<int> citations) {
  citations.sort((a, b) => b.compareTo(a));
  for (int i = 0; i < citations.length; i++) if (citations[i] < i + 1) return i;
  return citations.length;
}

void main() {
  print(hIndex([3, 0, 6, 1, 5])); // Output: 3
  print(hIndex([1, 3, 1])); // Output: 1
}
