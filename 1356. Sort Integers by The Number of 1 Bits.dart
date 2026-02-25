List<int> sortByBits(List<int> arr) {
  return arr..sort((a, b) {
    int countA = a.toRadixString(2).split('1').length - 1;
    int countB = b.toRadixString(2).split('1').length - 1;
    if (countA == countB) {
      return a.compareTo(b);
    }
    return countA.compareTo(countB);
  });
}

void main(List<String> args) {
  print(sortByBits([0, 1, 2, 3, 4, 5, 6, 7, 8])); // Output: [0,1,2,4,8,3,5,6,7]
  print(
    sortByBits([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]),
  ); // Output: [1,2,4,8,16,32,64,128,256,512,1024]
}
