int maximumHappinessSum(List<int> happiness, int k) {
  happiness.sort((a, b) => b.compareTo(a));
  int ans = 0, i = 0;
  while (k > 0) {
    final maxi = happiness[i] - i;
    if (maxi < 0) {
      ans += 0;
    } else {
      ans += maxi;
    }
    i += 1;
    k -= 1;
  }
  return ans;
}

void main() {
  print(maximumHappinessSum([1, 2, 3], 2)); // Output: 4
  print(maximumHappinessSum([1, 1, 1, 1], 2)); // Output: 1
  print(maximumHappinessSum([2, 3, 4, 5], 1)); // Output: 5
}
