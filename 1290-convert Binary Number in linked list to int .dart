void main() {
  print(getDecimalValue(ListNode(1, ListNode(0, ListNode(1))))); // Output: 5
  print(getDecimalValue(ListNode(0))); // Output: 0
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

int getDecimalValue(ListNode? head) {
  int decimalValue = 0;
  while (head != null) {
    decimalValue = (decimalValue << 1) | head.val;
    head = head.next;
  }
  return decimalValue;
}
