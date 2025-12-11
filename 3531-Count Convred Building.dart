int countCoveredBuildings(int n, List<List<int>> buildings) {
  Map<int, List<int>> row = {};
  Map<int, List<int>> col = {};
  for (var p in buildings) {
    int x = p[0], y = p[1];
    row.putIfAbsent(y, () => []).add(x);
    col.putIfAbsent(x, () => []).add(y);
  }
  row.values.forEach((list) => list.sort());
  col.values.forEach((list) => list.sort());
  int res = 0;
  for (var p in buildings) {
    int x = p[0], y = p[1];
    List<int> r = row[y]!;
    List<int> c = col[x]!;
    int i = r.indexOf(x);
    int j = c.indexOf(y);
    bool hasLeft = i > 0;
    bool hasRight = i < r.length - 1;
    bool hasDown = j > 0;
    bool hasUp = j < c.length - 1;

    if (hasLeft && hasRight && hasDown && hasUp) {
      res++;
    }
  }

  return res;
}

void main() {
  print(
    countCoveredBuildings(3, [
      [1, 2], //
      [2, 2],
      [3, 2], //
      [2, 1],
      [2, 3],
    ]),
  ); // Output: 1
  print(
    countCoveredBuildings(3, [
      [1, 1], //
      [1, 2], //
      [2, 1], //
      [2, 2], //
    ]),
  ); // Output: 0
  print(
    countCoveredBuildings(4, [
      [1, 3], //
      [3, 2],
      [3, 3],
      [3, 5], //
      [5, 3], //
    ]),
  ); // Output: 1
}
