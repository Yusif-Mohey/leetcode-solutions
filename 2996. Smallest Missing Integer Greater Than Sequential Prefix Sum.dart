int missingInteger(List<int> nums) {
  int temp = nums[0], val = 0;
  for (int i = 1; i < nums.length; i++) {
    val += temp;
    if (nums[i] == temp + 1)
      temp = nums[i];
    else {
      temp = 0;
      break;
    }
  }
  val += temp;
  while (true)
    if (nums.contains(val))
      val++;
    else
      return val;
}

void main(List<String> args) {
  print(missingInteger([1, 2, 3, 2, 5])); // 6
  print(missingInteger([3, 4, 5, 1, 12, 14, 13])); // 15
}
