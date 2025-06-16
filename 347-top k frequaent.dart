List<int> topKFrequent(List<int> nums, int k) {
  Map<int, int> frequency = {};
  List<int> output = [];
  for (int i in nums) frequency[i] = (frequency[i] ?? 0) + 1;
  output = frequency.keys.toList();
  output.sort((a, b) => frequency[b]! - frequency[a]!);
  return output.sublist(0, k);
}
void main(List<String> args) {
  print(topKFrequent([1, 1, 1, 2, 2, 3], 2)); // Expected output: [1, 2]
  print(topKFrequent([1, 2], 2)); // Expected output: [1, 2]
  print(topKFrequent([4, 1, -1, 2, -1, 2, 3], 2)); // Expected output: [-1, 2]
  print(topKFrequent([5, 3, 1, 1, 1, 3, 73, 1], 1)); // Expected output: [1]
}
