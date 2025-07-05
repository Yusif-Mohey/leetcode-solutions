void main() {
  print(findLucky([2, 2, 3, 4])); // Output: 2
  print(findLucky([1, 2, 2, 3, 3])); // Output: 3
  print(findLucky([2, 2, 2, 3, 3])); // Output: -1
  print(findLucky([5, 5, 5, 5, 5])); // Output: 5
}

int findLucky(List<int> arr) {
  int result = -1;
  for (int i = 0; i < arr.length; i++) {
    int count = 0;
    for (int j = 0; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }
    if (result < arr[i] && arr[i] == count) {
      result = arr[i];
    }
  }
  return result;
}
