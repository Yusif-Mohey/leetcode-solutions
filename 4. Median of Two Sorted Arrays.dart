void main(List<String> args) {
  final stopwatch = Stopwatch()..start();
  print(Solution().findMedianSortedArrays([1, 3], [2])); // 2.00000
  stopwatch.stop();
  print('Executed in ${stopwatch.elapsedMilliseconds}ms');

  final stopwatch2 = Stopwatch()..start();
  print(Solution().findMedianSortedArrays([1, 2], [3, 4])); // 2.50000
  stopwatch2.stop();
  print('Executed in ${stopwatch2.elapsedMilliseconds}ms');
}

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> totalNumbersList = [...nums1, ...nums2];
    print(totalNumbersList);
    if (totalNumbersList.length == 1) {
      return totalNumbersList[0].toDouble();
    } else if (totalNumbersList.length % 2 == 0) {
      totalNumbersList.sort();
      return (totalNumbersList[(totalNumbersList.length / 2).toInt()] +
                  totalNumbersList[((totalNumbersList.length) / 2).toInt() - 1])
              .toDouble() /
          2;
    } else if (totalNumbersList.length % 2 != 0) {
      totalNumbersList.sort();
      return totalNumbersList[(totalNumbersList.length / 2).toInt()].toDouble();
    }
    return 0.0;
  }
}
