//using =>  https://www.youtube.com/watch?v=W-WvItFiWX8&t
int numOfWays(int n) {
  const int mod = 1000000007;
  int typeA = 6, typeB = 6;
  for (int i = 2; i <= n; i++) {
    int newTypeA = (typeA * 3 + typeB * 2) % mod;
    int newTypeB = (typeA * 2 + typeB * 2) % mod;
    typeA = newTypeA;
    typeB = newTypeB;
  }
  return (typeA + typeB) % mod;
}

void main() {
  print(numOfWays(1)); // Output: 12
  print(numOfWays(5000)); // Output: 30228214
}
