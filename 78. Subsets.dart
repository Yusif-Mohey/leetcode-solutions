List<List<int>> subsets(List<int> nums) {
  List<List<int>> result = [[]];
  for (var i in nums) {
    int current_length = result.length;
    for (var j = 0; j < current_length; j++) {
      result.add(List.from(result[j])..add(i));
    }
  }
  return result;
}

main() {
  print(subsets([1, 2, 3])); // [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
  print(subsets([0])); // [[], [0]]
}
