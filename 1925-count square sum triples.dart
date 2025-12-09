int countTriples(int n) {
  int res = 0;
  for (var i = 3; i <= n; i++) {
    for (var j = i + 1; j <= n; j++)
      for (var k = j + 1; k <= n; k++)
        if ((j * j) + (i * i) == (k * k))
          res += 2;
        else
          continue;
  }
  return res;
}

main() {
  print(countTriples(5)); // Output: 2
  print(countTriples(10)); // Output: 4
  print(countTriples(18)); // Output: 10
}
