void main(List<String> args) {
  final stopwatch = Stopwatch()..start();
  print(Solution().convert('PAYPALISHIRING', 3)); // PAHNAPLSIIGYIR
  stopwatch.stop();
  print('Executed in ${stopwatch.elapsedMilliseconds} ms');

  final stopwatch2 = Stopwatch()..start();
  print(Solution().convert('PAYPALISHIRING', 3)); // PINALSIGYAHRPI
  stopwatch2.stop();
  print('Executed in ${stopwatch2.elapsedMilliseconds} ms');

  final stopwatch3 = Stopwatch()..start();
  print(Solution().convert('A', 1)); // A
  stopwatch2.stop();
  print('Executed in ${stopwatch3.elapsedMilliseconds} ms');
}

class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1 || s.length <= numRows) return s;
    List<StringBuffer> rows = List.generate(numRows, (index) => StringBuffer());
    int currentRow = 0;
    bool goingDown = false;
    for (var char in s.split('')) {
      rows[currentRow].write(char);
      if (currentRow == 0 || currentRow == numRows - 1) goingDown = !goingDown;
      currentRow += goingDown ? 1 : -1;
    }
    return rows.join();
  }
}
