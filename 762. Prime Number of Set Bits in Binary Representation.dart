int countPrimeSetBits(int left, int right) {
  int count = 0;

  for (int i = left; i <= right; i++) {
    int setBits = countSetBits(i);
    if (isPrime(setBits)) {
      count++;
    }
  }

  return count;
}

int countSetBits(int i) {
  int count = 0;
  while (i > 0) {
    count += i & 1;
    i >>= 1;
  }
  return count;
}

bool isPrime(int setBits) {
  if (setBits < 2) return false;
  if (setBits == 2) return true;
  if (setBits % 2 == 0) return false;

  for (int i = 3; i * i <= setBits; i += 2) {
    if (setBits % i == 0) {
      return false;
    }
  }
  return true;
}

void main(List<String> args) {
  print(countPrimeSetBits(6, 10)); // Expected output: 4
  print(countPrimeSetBits(10, 15)); // Expected output: 5
}
