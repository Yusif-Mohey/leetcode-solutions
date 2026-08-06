void main() {
  print(isHappy(19)); // ture
  print(isHappy(2)); // false
}

bool isHappy(int n) {
  // first we need to get the digits of the number.
  /// in the case of the "2" or any case that smaller that the 10
  /// its we be loop how did we know that ?
  /// by using the Floyd`s Cycle finding Algorithm
  /// so 9 > n is thefirst condition
  while (9 < n) {
    int sum = 0, temp = n;

    /// in this point we should call each digit int the number to square and summ
    while (temp > 0) {
      int digit = temp % 10;
      sum += digit * digit;
      temp ~/= 10;
    }
    n = sum;
  }
  return n == 1 || n == 7;
}
