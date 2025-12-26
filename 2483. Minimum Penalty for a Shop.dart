int bestClosingTime(String customers) {
  int minPenalty = 0, curPenalty = 0;
  int earliestHour = 0;
  for (int i = 0; i < customers.length; i++) {
    var ch = customers[i];
    if (ch == 'Y')
      curPenalty--;
    else
      curPenalty++;
    if (curPenalty < minPenalty) {
      earliestHour = i + 1;
      minPenalty = curPenalty;
    }
  }

  return earliestHour;
}

void main() {
  print(bestClosingTime("YYNY")); // Output: 2
  print(bestClosingTime("NNNNN")); // Output: 0
  print(bestClosingTime("YYYY")); // Output: 4
}
