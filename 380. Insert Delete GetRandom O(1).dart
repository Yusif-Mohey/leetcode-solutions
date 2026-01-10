import 'dart:math';

class RandomizedSet {
  late List<int> arr;
  RandomizedSet() {
    arr = [];
  }

  bool insert(int val) {
    if (arr.contains(val)) return false;
    arr.insert(arr.length, val);
    return true;
  }

  bool remove(int val) => arr.remove(val);

  int getRandom() {
    int index = Random().nextInt(arr.length);
    return arr[index];
  }
}

void main(List<String> args) {
  RandomizedSet randomizedSet = RandomizedSet();
  print(randomizedSet.insert(1)); // true
  print(randomizedSet.remove(2)); // false
  print(randomizedSet.insert(2)); // true
  print(randomizedSet.getRandom()); // 1 or 2
  print(randomizedSet.remove(1)); // true
  print(randomizedSet.insert(2)); // false
  print(randomizedSet.getRandom()); // 2
}

/*
*/
