int largestAltitude(List<int> gain) {
  List<int> result = [0];
  for (var i = 1; i < gain.length + 1; i++)
    result.add(result[i - 1] + gain[i - 1]);
  result.sort();
  return result[result.length - 1];
}

void main(List<String> args) {
  print(largestAltitude([-5, 1, 5, 0, -7])); // 1
  print(largestAltitude([-4, -3, -2, -1, 4, 3, 2])); // 0
}
