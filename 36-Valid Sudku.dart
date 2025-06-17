bool isValidSudoku(List<List<String>> board) {
  List<Set<String>> rows = List.generate(9, (_) => <String>{});
  List<Set<String>> cols = List.generate(9, (_) => <String>{});
  List<Set<String>> boxes = List.generate(9, (_) => <String>{});
  for (int row = 0; row < 9; row++) {
    for (int col = 0; col < 9; col++) {
      String cell = board[row][col];
      if (cell == '.') {
        continue;
      }
      int boxIndex = (row ~/ 3) * 3 + col ~/ 3;
      if (!rows[row].add(cell) ||
          !cols[col].add(cell) ||
          !boxes[boxIndex].add(cell)) {
        return false;
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
