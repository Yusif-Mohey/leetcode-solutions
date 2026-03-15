// https://leetcode.com/problems/license-key-formatting/?envType=problem-list-v2&envId=dsa-sequence-valley-string
String licenseKeyFormatting(String s, int k) {
  String cleaned = s.replaceAll('-', '').toUpperCase();
  List<String> groups = [];

  for (int i = cleaned.length; i > 0; i -= k) {
    int start = i - k;
    if (start < 0) start = 0;
    groups.add(cleaned.substring(start, i));
  }
  return groups.reversed.join('-');
}

void main(List<String> args) {
  print(licenseKeyFormatting('5F3Z-2e-9-w', 4)); // "5F3Z-2E9W"
  print(licenseKeyFormatting('2-5g-3-J', 2)); // "2-5G-3J"
}
