// https://leetcode.com/problems/build-an-array-with-stack-operations/description/?envType=problem-list-v2&envId=dsa-linear-shoal-stack

List<String> buildArray(List<int> target, int n) {
  List<String> result = [];
  int current = 1;
  for (int i = 0; i < target.length; i++) {
    while (current < target[i]) {
      result.add("Push");
      result.add("Pop");
      current++;
    }
    result.add("Push");
    current++;
  }

  return result;
}

void main(List<String> args) {
  print(buildArray([1, 3], 3)); // output : ["Push","Push","Pop","Push"]
  print(buildArray([1, 2, 3], 3)); // output : ["Push","Push","Push"]
  print(buildArray([1, 2], 4)); // output : ["Push","Push"]
}
