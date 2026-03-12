// https://leetcode.com/problems/construct-target-array-with-multiple-sums/description/?envType=problem-list-v2&envId=dsa-sequence-valley-heap

//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek
//Using deepseek

class Solution {
  bool isPossible(List<int> target) {
    if (target.length == 1) return target[0] == 1;
    int sum = target.fold(0, (prev, num) => prev + num); // target summation
    List<int> heap = List.from(target);
    _buildMaxHeap(heap);
    while (true) {
      int maxVal = heap[0];
      if (maxVal == 1) return true;
      int restSum = sum - maxVal;
      if (restSum == 1) return true;
      if (maxVal <= restSum) return false;
      int prev = maxVal % restSum;
      if (prev == 0) return false;
      sum = restSum + prev;
      heap[0] = prev;
      _heapifyDown(heap, 0);
    }
  }

  void _buildMaxHeap(List<int> heap) {
    for (int i = (heap.length ~/ 2) - 1; i >= 0; i--) {
      _heapifyDown(heap, i);
    }
  }

  void _heapifyDown(List<int> heap, int index) {
    int largest = index,
        left = 2 * index + 1,
        right = 2 * index + 2,
        n = heap.length;
    if (left < n && heap[left] > heap[largest]) largest = left;
    if (right < n && heap[right] > heap[largest]) largest = right;
    if (largest != index) {
      _swap(heap, index, largest);
      _heapifyDown(heap, largest);
    }
  }

  void _swap(List<int> heap, int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}

void main(List<String> args) {
  print(Solution().isPossible([9, 3, 5])); // true
  print(Solution().isPossible([1, 1, 2])); // false
}
