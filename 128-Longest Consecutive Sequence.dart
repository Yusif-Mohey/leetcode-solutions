void main() {
  print(longestConsecutive([100, 4, 200, 1, 3, 2])); //Output : 4
  print(longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])); //Output : 9
  print(longestConsecutive([1, 2, 0, 1])); //Output : 3
}

int longestConsecutive(List<int> nums) {
  nums.sort();
  Set<int> n = nums.toSet();
  int count = 0;
  while (n.isNotEmpty) {
    int current = n.first;
    n.remove(current);
    int currentCount = 1;
    while (n.contains(current + 1)) {
      current++;
      n.remove(current);
      currentCount++;
    }
    count = currentCount > count ? currentCount : count;
  }
  return count;
}
