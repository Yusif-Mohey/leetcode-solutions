int minOperations(String s) {
  int changesForPattern0 = 0, changesForPattern1 = 0;
  for (int i = 0; i < s.length; i++)
    if (i % 2 == 0) {
      if (s[i] != '0') changesForPattern0++;
      if (s[i] != '1') changesForPattern1++;
    } else {
      if (s[i] != '1') changesForPattern0++;
      if (s[i] != '0') changesForPattern1++;
    }

  return changesForPattern0 < changesForPattern1
      ? changesForPattern0
      : changesForPattern1;
}

void main(List<String> args) {
  print(minOperations('0100')); // 1
  print(minOperations('10')); // 0
  print(minOperations('1111')); // 2
}
/*
2--- 1
 */