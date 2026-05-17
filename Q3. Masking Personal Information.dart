//https://leetcode.com/problems/masking-personal-information/description/?envType=problem-list-v2&envId=dsa-sequence-valley-string

class Solution {
  String maskPII(String s) {
    if (s.contains('@'))
      return maskEmail(s);
    else
      return maskPhone(s);
  }

  String maskEmail(String s) {
    s = s.toLowerCase();
    List<String> parts = s.split('@');
    String name = parts[0];
    String domain = parts[1];
    String maskedName = name[0] + "*****" + name[name.length - 1];

    return "$maskedName@$domain";
  }

  String maskPhone(String s) {
    String digits = '';
    for (int i = 0; i < s.length; i++)
      if (s[i].codeUnitAt(0) >= 48 && s[i].codeUnitAt(0) <= 57) digits += s[i];
    String last4 = digits.substring(digits.length - 4);
    int countryCodeLength = digits.length - 10;
    if (countryCodeLength == 0)
      return "***-***-$last4";
    else if (countryCodeLength == 1)
      return "+*-***-***-$last4";
    else if (countryCodeLength == 2)
      return "+**-***-***-$last4";
    else
      return "+***-***-***-$last4";
  }
}

void main(List<String> args) {}
