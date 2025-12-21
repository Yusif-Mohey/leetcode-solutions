int minDeletionSize(List<String> strs) {
  int ans = 0;
  int n = strs[0].length;
  List<List<int>> ls = [];
  for (int i = 0; i < strs.length; i++) {
    ls.add(strs[i].codeUnits);
  }
  for (int i = 0; i < n; i++) {
    for (int j = 1; j < ls.length; j++) {
      if (ls[j - 1][i] > ls[j][i]) {
        ans++;
        break;
      }
    }
  }
  return ans;
}

void main() {}
