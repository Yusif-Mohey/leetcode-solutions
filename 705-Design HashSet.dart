class MyHashSet {
  List<int> res = [];
  void add(int key) {
    if (!res.contains(key)) res.add(key);
  }

  void remove(int key) {
    if (res.contains(key)) res.remove(key);
  }

  bool contains(int key) {
    if (res.contains(key))
      return true;
    else
      return false;
  }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */
