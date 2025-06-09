// class Solution {
//   bool isValidSudoku(List<List<String>> board) {
//     List<Set<String>> rows = List.generate(9, (_) => Set());
//     List<Set<String>> cols = List.generate(9, (_) => Set());
//     List<Set<String>> boxes = List.generate(9, (_) => Set());
//     for (int i = 0; i < 9; i++) {
//       for (int j = 0; j < 9; j++) {
//         String num = board[i][j];
//         if (num == '.') continue;
//         if (rows[i].contains(num)) return false;
//         rows[i].add(num);
//         if (cols[i].contains(num)) return false;
//         cols[i].add(num);
//       }
//     }
//     return true;
//   }
// }

///////////////////////////////////////////////////////////////////////////////////

// class Solution {
//   int maximumTripletValue(List<int> nums) {
//     int firstNumber = 0;
//     int secondNumber = nums.reduce((a, b) => a < b ? a : b);
//     int midPoint = (nums.length - 1) ~/ 2;
//     for (int i = 0; i < midPoint; i++) {
//       if (nums[i] >= firstNumber) {
//         firstNumber = nums[i];
//       }
//     }
//     for (int i = midPoint; i < nums.length - 1; i++) {
//       if (nums[i] <= secondNumber) {
//         secondNumber = nums[i];
//       }
//     }

//     return (firstNumber - secondNumber)  nums[nums.length - 1] < 0
//         ? 0
//         : (firstNumber - secondNumber)  nums[nums.length - 1];
//   }
// }
void main() {
  //   // Test cases
  //   // List<int> nums1 = [12, 6, 1, 2, 7];
  //   // print(Solution().maximumTripletValue(nums1)); // Output: 77
  //   List<int> nums2 = [1, 10, 3, 4, 19];
  //   print(Solution().maximumTripletValue(nums2)); // Output: 133
  //   // List<int> nums3 = [1, 2, 3];
  //   // print(Solution().maximumTripletValue(nums3)); // Output: 0
  //   // Additional test cases
  //   List<int> nums4 = [5, 4, 3, 2, 1];
  //   print(Solution().maximumTripletValue(nums4)); // Output: 0
  //   // List<int> nums5 = [100, 50, 25, 10, 5];
  //   // print(Solution().maximumTripletValue(nums5)); // Output: 475
  // }
  //   print('${5 ^ 1 ^ 6}');
  //   print(subsetXORSum([1, 3])); // سيطبع 6
  //   print(subsetXORSum([5, 1, 6])); // سيطبع 28
  //   print(subsetXORSum([3, 4, 5, 6, 7, 8])); // سيطبع 480
  // print('${5 << 2}');// 0 0 1 0 1
  //--> 1 0 1 0 0
  // print(lengthOfLastWord("fly me   to   the moon  "));
  // print('${5 >>> 3}'); // 0 0 0 0 0 1 0 1
  //--> 0 0 1 0 1 0 0 0
  // print(climbStairs(2)); // الناتج المتوقع: 2
  // print(climbStairs(3)); // الناتج المتوقع: 3
  // print(climbStairs(4)); // الناتج المتوقع: 5
  // print(climbStairs(6)); // الناتج المتوقع: 8
  // print(largestDivisibleSubset([1, 2, 3])); // Output: [1, 2] or [1, 3]
  // print(largestDivisibleSubset([1, 2, 4, 8])); // Output: [1, 2, 4, 8]
  // print(decrypt([5, 7, 1, 4], 3)); // Output: [12, 10, 16, 13]
  // print(decrypt([1, 2, 3, 4], 0)); // Output: [0, 0, 0, 0]
  // print(decrypt([2, 4, 9, 3], -2)); // Output: [12, 5, 6, 13]
  // print(decrypt([1, 2, 3, 4, 5], 2)); // Output: [5, 7, 9, 6, 3]
  // print(checkIfExist([3, 1, 7, 11])); // Output: false
  // print(checkIfExist([10, 2, 5, 3])); // Output: true
  // print(threeSum([-1, 0, 1, 2, -1, -4])); // Output: [[-1, -1, 2], [-1, 0, 1]]
  // print(threeSum([0, 1, 1])); // Output: []
  // print(threeSum([0, 0, 0])); // Output: [[0, 0, 0]]
  // print(canPartition([1, 5, 11, 5])); // true
  // print(canPartition([1, 2, 3, 5])); // false
  // print(countQuadruplets([1, 2, 3, 6])); // 1
  // print(countQuadruplets([3, 3, 6, 4, 5])); // 0
  // print(countQuadruplets([1, 1, 1, 3, 5])); // 4
  // print(minimumOperations([1, 2, 3, 4, 2, 3, 3, 5, 7])); // 2
  // print(minimumOperations([4, 5, 6, 4, 4])); // 2
  // print(minimumOperations([6, 7, 8, 9])); // 0
  // print(minOperations([5, 2, 5, 4, 5], 2)); // 2
  // print(minOperations([1, 2, 1], 2)); // -1
  // print(minOperations([9, 7, 5, 3], 1)); // 4
  // print(numberOfPowerfulInt(1, 6000, 4, "124")); // Output: 5
  // print(numberOfPowerfulInt(15, 215, 6, "10")); // Output: 2
  // print(numberOfPowerfulInt(1000, 2000, 4, "3000")); // Output: 0
  // print(countSymmetricIntegers(1, 100)); // Output: 9
  // print(countSymmetricIntegers(1200, 1230)); // Output: 4
  // print(maximumCount([-2, -1, -1, 1, 2, 3])); // Output: 3
  // print(maximumCount([-3, -2, -1, 0, 0, 1, 2])); // Output: 3
  // print(maximumCount([5, 20, 66, 1314])); // Output: 4
  // print(addBinary('11', '1')); // Output: 100
  // print(addBinary('1010', '1011')); // Output: 10101
  // print(Solution().countGoodNumbers(0)); // Output: 5
  // print(Solution().countGoodNumbers(4)); // Output: 40
  // print(Solution().countGoodNumbers(50)); // Output: 564908303
  // print(removeElement([3, 2, 2, 3], 3)); // Output: [2, 2]
  // print(removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2)); // Output: [0, 1, 4, 0, 3]
  // merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3); // Output: [1, 2, 2, 3, 5, 6]
  // print(countGood([1, 1, 1, 1, 1], 10)); // Output: 1
  // print(countGood([3, 1, 4, 3, 2, 2, 4], 2)); // Output: 4
  // print(countPairs([1, 2, 3, 4], 1)); // Output: 0
  // print(countPairs([3, 1, 2, 2, 2, 1, 3], 2)); // Output: 4
  // print(countAndSay(1)); // Output: "1"
  // print(countAndSay(2)); // Output: "11"
  // print(countAndSay(3)); // Output: "21"
  // print(countAndSay(4)); // Output: "1211"
  // print(countAndSay(5)); // Output: "111221"
  // print(countAndSay(6)); // Output: "312211"
  // print(countAndSay(7)); // Output: "13112221"
  // print(countAndSay(8)); // Output: "1113213211"
  // print(countAndSay(9)); // Output: "31131211131221"
  // print(countAndSay(10)); // Output: "13211311123113112211"
  // print(containsDuplicate([1, 2, 3, 1])); // Output: true
  // print(countFairPairs([0, 1, 7, 4, 4, 5], 3, 6)); // Output: 6
  // print(countFairPairs([1, 7, 9, 2, 5], 11, 11)); // Output: 1
  // print(singleNumber([4, 1, 2, 1, 2])); // Output: 4
  // print(countLargestGroup(13)); // Output: 4
  // print(countLargestGroup(2)); // Output: 2
  // print(countSubarrays([1, 2, 1, 4, 1])); // Output: 1
  // print(countSubarrays([1, 1, 1])); // Output: 0
  // print(findNumbers([12, 345, 2, 6, 7896])); // Output: 2
  // print(findNumbers([555, 901, 482, 1771])); // Output: 1
  print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
  print(groupAnagrams([""])); // Output: [[""]];
  print(groupAnagrams(["a"])); // Output: [["a"]]
}

List<List<String>> groupAnagrams(List<String> strs) {
  // List<List<String>> res = [];
  Map<String, List<String>> anagramMap = {};
  for (String str in strs) {
    List<int> codeUnitsList = List.from(str.codeUnits)..sort();
    String sortedStr = String.fromCharCodes(codeUnitsList);
    if (!anagramMap.containsKey(sortedStr)) {
      anagramMap[sortedStr] = [];
    }
    anagramMap[sortedStr]!.add(str);
  }
  return anagramMap.values.toList();
}
