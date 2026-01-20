List<int> minBitwiseArray(List<int> nums) {
  List<int> res = [];
  for (int i = 0; i < nums.length; i++) {
    int prime = -1;
    for (int j = 1; j < nums[i]; j++) {
      if (j | (j + 1) == nums[i]) {
        prime = j;
        break;
      }
    }
    res.add(prime);
  }
  return res;
}

void main(List<String> args) {
  print(minBitwiseArray([2, 3, 5, 7])); // Output : [-1,1,4,3]
  print(minBitwiseArray([11, 13, 31])); // Output : [9,12,15]
}
