int minTimeToVisitAllPoints(List<List<int>> points) {
  int totalTime = 0;
  for (int i = 1; i < points.length; i++) {
    int dx = (points[i][0] - points[i - 1][0]).abs();
    int dy = (points[i][1] - points[i - 1][1]).abs();
    totalTime += dx > dy ? dx : dy;
  }
  return totalTime;
}

void main(List<String> args) {
  print(
    minTimeToVisitAllPoints([
      [1, 1],
      [3, 4],
      [-1, 0],
    ]),
  ); // Output: 7
  print(
    minTimeToVisitAllPoints([
      [3, 2],
      [-2, 2],
    ]),
  ); // Output: 5
}
