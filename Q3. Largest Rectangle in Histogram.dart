int largestRectangleArea(List<int> heights) {
  int n = heights.length;
  List<MapEntry<int, int>> stk = [];
  int maxArea = 0;

  for (int i = 0; i < n; i++) {
    int height = heights[i];
    int start = i;
    while (stk.isNotEmpty && height < stk.last.key) {
      final last = stk.removeLast();
      int h = last.key;
      int j = last.value;
      int w = i - j;
      maxArea = (h * w > maxArea) ? h * w : maxArea;
      start = j;
    }
    stk.add(MapEntry(height, start));
  }
  for (final item in stk) {
    int h = item.key;
    int j = item.value;
    int w = n - j;
    maxArea = (h * w > maxArea) ? h * w : maxArea;
  }

  return maxArea;
}

void main(List<String> args) {
  print(largestRectangleArea([2, 1, 5, 6, 2, 3])); // 10
  print(largestRectangleArea([2, 4])); // 4
}
/// after 24h of trying i decicde to get some help from 
/// https://www.youtube.com/watch?v=ZGMw8Bvpwd4