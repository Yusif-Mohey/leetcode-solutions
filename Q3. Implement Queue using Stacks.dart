// https://leetcode.com/problems/time-needed-to-buy-tickets/description/?envType=problem-list-v2&envId=dsa-sequence-valley-queue

class MyQueue {
  late List<int> queue;

  MyQueue() {
    queue = [];
  }

  void push(int x) {
    queue.add(x);
  }

  int pop() {
    return queue.removeAt(0);
  }

  int peek() {
    return queue[0];
  }

  bool empty() {
    return queue.isEmpty;
  }
}

void main(List<String> args) {
  MyQueue obj = MyQueue();
  obj.push(2);
  obj.push(3);
  obj.push(4);
  obj.push(5);
  obj.push(6);
  int param2 = obj.pop();
  int param3 = obj.peek();
  bool param4 = obj.empty();
  print(param2);
  print(param3);
  print(param4);
}
