bool hasAlternatingBits(int n) {
  return (n ^ (n >> 1)) & ((n ^ (n >> 1)) + 1) == 0;
}

void main(List<String> args) {
  print(hasAlternatingBits(5)); // true
  print(hasAlternatingBits(7)); // false
  print(hasAlternatingBits(11)); // false
  /*
  [7,6,4,4]
[1,4,8,9]
[1,2,3]
[1,2,1]
   */
}
