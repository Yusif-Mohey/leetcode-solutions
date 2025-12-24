int minimumBoxes(List<int> apple, List<int> capacity) {
  capacity.sort();
  int totalApples = apple.reduce((a, b) => a + b);
  int boxesUsed = 0;
  int currentCapacity = 0;

  for (int i = capacity.length - 1; i >= 0; i--) {
    currentCapacity += capacity[i];
    boxesUsed++;
    if (currentCapacity >= totalApples) {
      break;
    }
  }

  return boxesUsed;
}

void main() {
  print(minimumBoxes([1, 3, 2], [4, 3, 1, 5, 2])); // Output: 2
  print(minimumBoxes([5, 5, 5], [2, 4, 2, 7])); // Output: 4
}
