import 'dart:math';

int maxArea(List<int> height) {
  int reusltArea = 0, left = 0, right = height.length - 1;
  while (left < right) {
    int currentArea = (right - left) * min(height[right], height[left]);
    reusltArea = max(currentArea, reusltArea);
    if (height[left] < height[right])
      left++;
    else
      right--;
  }
  return reusltArea;
}

void main(List<String> args) {
  print(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])); // 49
  print(maxArea([1, 1])); // 1
}
