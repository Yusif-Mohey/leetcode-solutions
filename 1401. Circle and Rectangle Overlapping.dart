import 'dart:math';

void main(List<String> args) {
  // print(Solution().checkOverlap(1, 0, 0, 1, -1, 3, 1)); // true
  // print(Solution().checkOverlap(1, 1, 1, 1, -3, 2, -1)); // false
  // print(Solution().checkOverlap(1, 0, 0, -1, 0, 0, 1)); // true
  print(Solution().checkOverlap(10, 10, 1, 0, 0, 100, 100)); // true
}

class Solution {
  bool checkOverlap(
    int radius,
    int xCenter,
    int yCenter,
    int x1,
    int y1,
    int x2,
    int y2,
  ) {
    final miniX = max(x1, min(x2, xCenter));
    final miniY = max(y1, min(y2, yCenter));
    final distance = sqrt(pow(miniX - xCenter, 2) + pow(miniY - yCenter, 2))
        .toInt();
    return distance <= radius;
  }
}
