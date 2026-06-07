// https://leetcode.com/problems/odd-even-linked-list/description/?envType=problem-list-v2&envId=dsa-association-slope-linked-list

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? oddEvenList(ListNode? head) {
    if (head == null || head.next == null) return head;

    ListNode? odd = head;
    ListNode? even = head.next;
    ListNode? evenHead = even;

    while (even != null && even.next != null) {
      odd?.next = even.next;
      odd = odd?.next;
      even.next = odd?.next;
      even = even.next;
    }

    odd?.next = evenHead;

    return head;
  }
}

void main() {}
