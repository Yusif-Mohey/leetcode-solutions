void reverseString(List<String> s) {
  int l = 0;
  int r = s.length - 1;
  while (l < r) {
    String tmp = s[l];
    s[l] = s[r];
    s[r] = tmp;
    l++;
    r--;
  }
}

void main(List<String> args) {
  reverseString(["h", "e", "l", "l", "o"]);
}
