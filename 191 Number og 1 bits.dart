void main() {
  print(hammingWeight(11)); // Output: 3
  print(hammingWeight(128)); // Output: 1
  print(hammingWeight(2147483645)); // Output: 30
}

int hammingWeight(int n) {
  int count = 0;
  while (n > 0) {
    count += n & 1;
    n >>= 1;
  }
  return count;
}
