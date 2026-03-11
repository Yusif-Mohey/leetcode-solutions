int findComplement(int n) {
  String binaryN = n.toRadixString(2);
  List<String> out = binaryN.split('');
  for (int i = 0; i < out.length; i++) {
    out[i] == '1' ? out[i] = '0' : out[i] = '1';
  }
  return int.parse(out.join(), radix: 2);
}

void main(List<String> args) {
  print(findComplement(5)); // 2
  print(findComplement(7)); // 0
  print(findComplement(10)); // 5
}
