//in this problem i use this theory 
//https://www.geeksforgeeks.org/theory-of-computation/boyer-moore-majority-voting-algorithm/
int majorityElement(List<int> arr) {
  int i, candidate = -1, votes = 0;
  for (i = 0; i < arr.length; i++) {
    if (votes == 0) {
      candidate = arr[i];
      votes = 1;
    } else {
      if (arr[i] == candidate)
        votes++;
      else
        votes--;
    }
  }
  int count = 0;
  for (i = 0; i < arr.length; i++) {
    if (arr[i] == candidate) count++;
  }
  if (count > arr.length / 2) return candidate;
  return -1;
}

void main() {
  print(majorityElement([3, 2, 3]));
  print(majorityElement([2, 2, 1, 1, 1, 2, 2]));
}
