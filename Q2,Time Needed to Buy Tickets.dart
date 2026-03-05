// https://leetcode.com/problems/time-needed-to-buy-tickets/description/?envType=problem-list-v2&envId=dsa-sequence-valley-queue
int timeRequiredToBuy(List<int> tickets, int k) {
  int waitedTime = 0;
  while (tickets[k] > 0)
    for (int i = 0; i < tickets.length; i++)
      if (tickets[i] > 0) {
        tickets[i]--;
        waitedTime++;
        if (i == k && tickets[k] == 0) return waitedTime;
      }
  return waitedTime;
}

void main(List<String> args) {
  print(timeRequiredToBuy([2, 3, 2], 2)); // 6
  print(timeRequiredToBuy([5, 1, 1, 1], 0)); // 8
}
