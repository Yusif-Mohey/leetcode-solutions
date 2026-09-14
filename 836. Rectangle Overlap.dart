class Solution {
  bool isRectangleOverlap(List<int> rec1, List<int> rec2) =>
      (rec1[0] >= rec2[2] ||
          rec1[2] <= rec2[0] ||
          rec1[1] >= rec2[3] ||
          rec1[3] <= rec2[1])
      ? false
      : true;
}

main() {
  print(Solution().isRectangleOverlap([0, 0, 2, 2], [1, 1, 3, 3])); // true
  print(Solution().isRectangleOverlap([0, 0, 1, 1], [1, 0, 2, 1])); // false
  print(Solution().isRectangleOverlap([0, 0, 1, 1], [2, 2, 3, 3])); // false
}
