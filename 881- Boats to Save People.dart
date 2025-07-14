void main() {
  print(numRescueBoats([1, 2], 3)); //Expected output: 1
  print(numRescueBoats([3, 2, 2, 1], 3)); //Expected output: 3
  print(numRescueBoats([3, 5, 3, 4], 5)); //Expected output: 4
}

int numRescueBoats(List<int> people, int limit) {
  people.sort();
  int boatsNumber = 0;
  int left = 0, right = people.length - 1;
  while (left <= right) {
    if (people[left] + people[right] <= limit) {
      left++;
      right--;
    } else
      right--;
    boatsNumber++;
  }
  return boatsNumber;
}
