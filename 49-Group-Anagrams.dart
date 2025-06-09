main() {
  List<String> strs = ["eat", "tea", "tan", "ate", "nat", "bat"];
  List<String> strs2 = [""];
  List<String> strs3 = ["a"];
  List<List<String>> result = groupAnagrams(strs3);
  print(result);
}

List<List<String>> groupAnagrams(List<String> strs) {
  Map<String, List<String>> anagramMap = {};
  for (String str in strs) {
    List<int> unitsList = List.from(str.codeUnits)..sort();
    String sortedStr = String.fromCharCodes(unitsList);
    if (!anagramMap.containsKey(sortedStr)) {
      anagramMap[sortedStr] = [];
    }
    anagramMap[sortedStr]!.add(str);
  }
  return anagramMap.values.toList();
}
