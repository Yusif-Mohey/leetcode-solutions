List<String> validateCoupons(
  List<String> code,
  List<String> businessLine,
  List<bool> isActive,
) {
  List<int> checkIndex = List.filled(code.length, code.length * 100);
  List<String> result = [];
  RegExp regex = RegExp(r'^[a-zA-Z0-9_]+$');
  for (int i = 0; i < code.length; i++)
    if (code[i].isNotEmpty && regex.hasMatch(code[i]))
      checkIndex[i] = i; // 0 - 2
  for (var i in checkIndex)
    if (i < code.length) {
      if (businessLine[i] == 'electronics' ||
          businessLine[i] == 'grocery' ||
          businessLine[i] == 'pharmacy' ||
          businessLine[i] == 'restaurant')
        continue;
      else
        checkIndex[i] = code.length * 100;
    }
  for (var i in checkIndex)
    if (i < code.length)
      if (isActive[i] == true) result.add(code[checkIndex[i]]);

  return result;
}

void main() {
  print(
    validateCoupons(
      ["SAVE20", "", "PHARMA5", "SAVE@20"],
      ["restaurant", "grocery", "pharmacy", "restaurant"],
      [true, true, true, true],
    ),
  );
  print(
    validateCoupons(
      ["GROCERY15", "ELECTRONICS_50", "DISCOUNT10"],
      ["grocery", "electronics", "invalid"],
      [false, true, true],
    ),
  );
  // print(
  //   validateCoupons(
  //     ["GROCERY15", "ELECTRONICS_50", "DISCOUNT10"],
  //     ["grocery", "electronics", "invalid"],
  //     [false, true, true],
  //   ),
  // );
}
