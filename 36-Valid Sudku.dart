//leetCode Solution

//bool isValidSudoku(List<List<String>> board) {
//   List<Set<String>> rows = List.generate(9, (_) => <String>{});
//   List<Set<String>> cols = List.generate(9, (_) => <String>{});
//   List<Set<String>> boxes = List.generate(9, (_) => <String>{});
//   for (int row = 0; row < 9; row++) {
//     for (int col = 0; col < 9; col++) {
//       String cell = board[row][col];
//       if (cell == '.') {
//         continue;
//       }
//       int boxIndex = (row ~/ 3) * 3 + col ~/ 3;
//       if (!rows[row].add(cell) ||
//           !cols[col].add(cell) ||
//           !boxes[boxIndex].add(cell)) {
//         return false;
//       }
//     }
//   }
//   return true;
// }

//My Solution
bool isValidSudoku(List<List<String>> board) {
  //Raws
  for (int i = 0; i < 9; i++) {
    Map<String, int> repeatedMap = {};
    for (var j = 0; j < 9; j++) {
      String element = board[i][j];
      if (element != '.') {
        repeatedMap[element] = (repeatedMap[element] ?? 0) + 1;
        if (repeatedMap[element]! > 1) {
          return false;
        }
      }
    }
  }
  //Columns
  for (int i = 0; i < 9; i++) {
    Map<String, int> repeatedMap = {};
    for (var j = 0; j < 9; j++) {
      String element = board[j][i];
      if (element != '.') {
        repeatedMap[element] = (repeatedMap[element] ?? 0) + 1;
        if (repeatedMap[element]! > 1) {
          return false;
        }
      }
    }
  }
  // 3 X 3
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      Set<String> notRepeated = {};
      for (int i = 0; i < 3; i++) {
        int nRow = row * 3 + i;
        for (int j = 0; j < 3; j++) {
          int nCol = col * 3 + j;
          if (board[nRow][nCol] != ".") {
            int len = notRepeated.length;
            notRepeated.add(board[nRow][nCol]);
            if (len == notRepeated.length) {
              return false;
            }
          }
        }
      }
    }
  }
  return true;
}

void main(List<String> args) {
  print(
    isValidSudoku([
      ["5", "3", ".", ".", "7", ".", ".", ".", "."],
      ["6", ".", ".", "1", "9", "5", ".", ".", "."],
      [".", "9", "8", ".", ".", ".", ".", "6", "."],
      ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
      ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
      ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
      [".", "6", ".", ".", ".", ".", "2", "8", "."],
      [".", ".", ".", "4", "1", "9", ".", ".", "5"],
      [".", ".", ".", ".", "8", ".", ".", "7", "9"],
    ]),
  ); // output: true
  print(
    isValidSudoku([
      ["8", "3", ".", ".", "7", ".", ".", ".", "."],
      ["6", ".", ".", "1", "9", "5", ".", ".", "."],
      [".", "9", "8", ".", ".", ".", ".", "6", "."],
      ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
      ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
      ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
      [".", "6", ".", ".", ".", ".", "2", "8", "."],
      [".", ".", ".", "4", "1", "9", ".", ".", "5"],
      [".", ".", ".", ".", "8", ".", ".", "7", "9"],
    ]),
  ); // output: false
}
