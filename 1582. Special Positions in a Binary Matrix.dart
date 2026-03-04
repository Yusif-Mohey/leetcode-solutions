int numSpecial(List<List<int>> mat) {
  int specialCount = 0;
  List<int> rowCount = List.filled(mat.length, 0),
      colCount = List.filled(mat[0].length, 0);

  for (int i = 0; i < mat.length; i++) {
    for (int j = 0; j < mat[0].length; j++) {
      rowCount[i] += mat[i][j];
      colCount[j] += mat[i][j];
    }
  }
  for (int i = 0; i < mat.length; i++) {
    for (int j = 0; j < mat[0].length; j++) {
      if (mat[i][j] == 1 && rowCount[i] == 1 && colCount[j] == 1)
        specialCount++;
    }
  }
  return specialCount;
}

//
void main(List<String> args) {
  print(
    numSpecial([
      [1, 0, 0],
      [0, 0, 1],
      [1, 0, 0],
    ]),
  ); // 1
  print(
    numSpecial([
      [1, 0, 0],
      [0, 1, 0],
      [0, 0, 1],
    ]),
  ); // 3

  List<int> myList = [1, 2, 3, 4];
  if (!myList.contains(0)) {
    print("List does not contain 0"); // This will print
  }
}
