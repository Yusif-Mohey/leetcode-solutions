class MyHashMap {
  MyHashMap();
  final Map<int, int> _m = {};

  void put(int key, int value) {
    _m[key] = value;
  }

  int get(int key) {
    return _m.containsKey(key) ? _m[key]! : -1;
  }

  void remove(int key) {
    _m.remove(key);
  }
}
/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap obj = MyHashMap();
 * obj.put(key,value);
 * int param_2 = obj.get(key);
 * obj.remove(key);
 */