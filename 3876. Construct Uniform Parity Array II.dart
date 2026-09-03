class Solution {
  bool uniformArray(List<int> nums1) {
    int minNumber = nums1[0];
    bool res = false;
    for (var element in nums1) {
      if (element < minNumber) minNumber = element;
      if (element % 2 != 0) res = true;
    }
    return !res || minNumber % 2 != 0;
  }
}

void main(List<String> args) {
  print(Solution().uniformArray([1, 4, 7])); // true
  print(Solution().uniformArray([2, 3])); // false
  print(Solution().uniformArray([4, 6])); // true
}
