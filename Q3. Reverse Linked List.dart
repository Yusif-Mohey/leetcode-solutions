// https://leetcode.com/problems/odd-even-linked-list/description/?envType=problem-list-v2&envId=dsa-association-slope-linked-list

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

ListNode? reverseList(ListNode? head) {
  if (head == null || head.next == null) return head;
  ListNode? newHead = reverseList(head.next);
  head.next?.next = head;
  head.next = null;
  return newHead;
}

void main() {}
