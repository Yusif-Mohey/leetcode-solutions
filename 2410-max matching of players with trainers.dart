void main() {
  print(matchPlayersAndTrainers([4, 7, 9], [2, 5, 8, 8])); //output: 2
  print(matchPlayersAndTrainers([1, 1, 1], [10])); //output: 1
}

int matchPlayersAndTrainers(List<int> players, List<int> trainers) {
  players.sort();
  trainers.sort();
  int maxMatch = 0, indexPlayer = 0, indexTrainers = 0;
  while (indexPlayer < players.length && indexTrainers < trainers.length) {
    if (players[indexPlayer] <= trainers[indexTrainers]) {
      maxMatch++;
      indexPlayer++;
    }
    indexTrainers++;
  }
  return maxMatch;
}
/*
[4,7,9]
[2,5,8,8]
------------
[1,1,1]
[10]

 */