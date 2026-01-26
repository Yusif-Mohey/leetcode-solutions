import 'dart:math';

List<List<int>> minimumAbsDifference(List<int> arr) {
  arr.sort();
  List<List<int>> output = [];
  int minDif = arr[1] - arr[0];
  for (int i = 1; i < arr.length; i++) {
    minDif = min(minDif, arr[i] - arr[i - 1]);
  }
  for (int i = 1; i < arr.length; i++) {
    if ((arr[i] - arr[i - 1]) == minDif) {
      output.add([arr[i - 1], arr[i]]);
    }
  }

  return output;
}

void main(List<String> args) {}
