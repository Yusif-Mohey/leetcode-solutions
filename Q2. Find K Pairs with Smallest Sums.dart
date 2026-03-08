// https://leetcode.com/problems/find-k-pairs-with-smallest-sums/description/?envType=problem-list-v2&envId=dsa-sequence-valley-heap
import 'dart:collection';

/// using Youtube
/// using Youtube
/// using Youtube
/// using Youtube
/// using Youtube
/// using Youtube

List<List<int>> kSmallestPairs(List<int> nums1, List<int> nums2, int k) {
  List<List<int>> result = [];
  var pq = PriorityQueue<(int, int, int)>(
    (a, b) => (a.$1 + a.$2).compareTo(b.$1 + b.$2),
  );
  nums1.forEach((n) => pq.add((n, nums2.first, 0)));

  while (k-- > 0 && pq.isNotEmpty) {
    final (n1, n2, i) = pq.removeFirst();
    result.add([n1, n2]);
    if (i + 1 < nums2.length) {
      pq.add((n1, nums2[i + 1], i + 1));
    }
  }
  return result;
}

void main(List<String> args) {
  print(kSmallestPairs([1, 7, 11], [2, 4, 6], 3)); // [[1,2],[1,4],[1,6]]
  print(kSmallestPairs([1, 1, 2], [1, 2, 3], 2)); // [[1,1],[1,1]]
}
