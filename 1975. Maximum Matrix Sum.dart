class Solution {
  int maxMatrixSum(List<List<int>> matrix) {
    int sum = 0, min = -100000;
    bool isOdd = false;
    for (List<int> i in matrix) {
      for (int j in i) {
        if (j < 0) {
          isOdd = !isOdd;
          if (j > min && j != 0) min = j;
          sum += (j * -1);
        } else if (j == 0 && isOdd)
          isOdd = false;
        else {
          sum += j;
          if ((j * -1) > min) min = j * -1;
        }
      }
    }
    return isOdd ? sum + (min * 2) : sum;
  }
}
