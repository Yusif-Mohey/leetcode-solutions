void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4])); //Expected Output: 5
  print(maxProfit([7, 6, 4, 3, 1])); //Expected Output: 0
}

int maxProfit(List<int> prices) {
  int maxBenefits = 0;
  int minPrice = prices[0];
  for (var i = 1; i < prices.length; i++) {
    int expectedBrnrfit = prices[i] - minPrice;
    if (expectedBrnrfit > maxBenefits) maxBenefits = expectedBrnrfit;
    if (prices[i] < minPrice) minPrice = prices[i];
  }
  return maxBenefits;
}
