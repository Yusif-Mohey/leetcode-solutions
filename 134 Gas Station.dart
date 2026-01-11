int canCompleteCircuit(List<int> gas, List<int> cost) {
  int sumGas = gas.fold(0, (a, b) => a + b);
  int sumCost = cost.fold(0, (a, b) => a + b);
  if (gas.length != cost.length ||
      gas.isEmpty ||
      cost.isEmpty ||
      sumGas < sumCost)
    return -1;

  int total = 0;
  int start = 0;
  int tank = 0;
  for (int i = 0; i < gas.length; i++) {
    tank += gas[i] - cost[i];
    if (tank < 0) {
      start = i + 1;
      total += tank;
      tank = 0;
    }
  }
  return start;
}

void main(List<String> args) {
  print(canCompleteCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])); // output: 3
  print(canCompleteCircuit([2, 3, 4], [3, 4, 3])); // output: -1
}

/*
*/
