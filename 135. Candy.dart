import 'dart:math';

int candy(List<int> ratings) {
  List<int> candies = List.filled(ratings.length, 1);
  for (int i = 1; i < ratings.length; i++)
    if (ratings[i] > ratings[i - 1]) candies[i] = candies[i - 1] + 1;

  for (int i = ratings.length - 2; i > -1; i--)
    if (ratings[i] > ratings[i + 1])
      candies[i] = max(candies[i], candies[i + 1] + 1);

  return candies.reduce((a, b) => a + b);
}

void main(List<String> args) {
  print(candy([1, 0, 2])); // 5
  print(candy([1, 2, 2])); // 4
}
