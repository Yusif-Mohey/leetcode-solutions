bool checkDivisibility(int n) {
  int digit_sum = n.toString().split('').map(int.parse).reduce((a, b) => a + b);
  int digit_product = n
      .toString()
      .split('')
      .map(int.parse)
      .reduce((a, b) => a * b);

  return n % (digit_sum + digit_product) == 0;
}

void main(List<String> args) {
  print(checkDivisibility(99)); // true
  print(checkDivisibility(23)); // false
}
