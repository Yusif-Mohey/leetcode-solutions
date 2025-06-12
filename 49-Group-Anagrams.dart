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
