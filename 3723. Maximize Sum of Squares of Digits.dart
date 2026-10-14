import 'dart:math';

void main(List<String> args) {
  final stopwatch = Stopwatch()..start();
  print(Solution().maxSumOfSquares(2, 3)); // 30
  stopwatch.stop();
  print('Executed in ${stopwatch.elapsedMilliseconds} ms');

  final stopwatch2 = Stopwatch()..start();
  print(Solution().maxSumOfSquares(2, 17)); // 98
  stopwatch2.stop();
  print('Executed in ${stopwatch2.elapsedMilliseconds} ms');

  final stopwatch3 = Stopwatch()..start();
  print(Solution().maxSumOfSquares(1, 10)); //
  stopwatch2.stop();
  print('Executed in ${stopwatch3.elapsedMilliseconds} ms');
}

class Solution {
  String maxSumOfSquares(int num, int sum) {
    ///  need to know the digits
    /// if digigts = 3 the summation = 40
    /// then no way to  reach from 3 numbers
    /// case the max number you can get from the 3*9 = 36 < 40
    /// so if the sum > 9 * num -> cant get number
    if (sum > 9 * num) return '';

    /// else case
    /// in f(x) = x^2 the square of large numbers usually greater than the sum of ther digdits
    /// 9^2 > (5^2 + 4^2)
    /// so we need to find the biggers numbers from the left
    String res = '';
    // while (sum > 0) { /// time limit
    //   int using = min(sum, 9);
    //   sum -= using;
    //   res += '$using';
    // }
    res += '9' * (sum ~/ 9);
    sum %= 9;
    if (sum > 0) res += '$sum';
    res += '0' * (num - res.length);
    return res;
  }
}
