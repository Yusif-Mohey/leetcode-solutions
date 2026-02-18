int reverseBits(int n) {
  int result = 0;
  for (int i = 0; i < 32; i++) {
    result = (result << 1) | (n & 1);
    n >>= 1;
  }
  return result;
}

void main(List<String> args) {
  print(reverseBits(43261596)); // Output: 964176192
  print(reverseBits(2147483644)); // Output: 1073741822
  print(reverseBits(4294967293)); // Output: 3221225471
  print(reverseBits(0)); // Output: 0
}
