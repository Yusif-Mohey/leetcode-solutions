void main() {
  print(kthCharacter(5)); // Output: b
  print(kthCharacter(10)); // Output: c
  //   List<int> x = 'z'.codeUnits;
  //   print(String.fromCharCode(x[0]));
}

//97 ---> 122
String kthCharacter(int k) {
  String init = 'a';
  while (init.length < k) {
    String changedString = '';
    for (int i = 0; i < init.length; i++) {
      int x = init.codeUnitAt(i) + 1;
      changedString += String.fromCharCode(x);
    }
    init += changedString;
  }
  return init[k - 1];
}
