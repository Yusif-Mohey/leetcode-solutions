int maxTwoEvents(List<List<int>> events) {
  List<List<int>> times = [];
  for (var e in events) {
    times.add([e[0], 1, e[2]]);
    times.add([e[1] + 1, 0, e[2]]);
  }
  int ans = 0, maxValue = 0;
  times.sort((a, b) {
    if (a[0] != b[0]) return a[0].compareTo(b[0]);
    if (a[1] != b[1]) return a[1].compareTo(b[1]);
    return a[2].compareTo(b[2]);
  });
  for (var timeValue in times) {
    if (timeValue[1] == 1) {
      ans = ans > timeValue[2] + maxValue ? ans : timeValue[2] + maxValue;
    } else {
      maxValue = maxValue > timeValue[2] ? maxValue : timeValue[2];
    }
  }
  return ans;
}

void main() {
  print(
    maxTwoEvents([
      [1, 3, 2],
      [4, 5, 2],
      [2, 4, 3],
    ]),
  ); // Output: 4
  print(
    maxTwoEvents([
      [1, 3, 2],
      [4, 5, 2],
      [1, 5, 5],
    ]),
  ); // Output: 5
  print(
    maxTwoEvents([
      [1, 5, 3],
      [1, 5, 1],
      [6, 6, 5],
    ]),
  ); // Output: 8
}
