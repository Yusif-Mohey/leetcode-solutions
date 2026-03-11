int bitwiseComplement(int n) {
  String binaryN = n.toRadixString(2);
  List<String> out = binaryN.split('');
  for (int i = 0; i < out.length; i++) {
    out[i] == '1' ? out[i] = '0' : out[i] = '1';
  }
  return int.parse(out.join(), radix: 2);
}

void main(List<String> args) {
  print(bitwiseComplement(5)); // 2
  print(bitwiseComplement(7)); // 0
  print(bitwiseComplement(10)); // 5
}
