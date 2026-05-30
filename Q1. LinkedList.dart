// https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/?envType=problem-list-v2&envId=dsa-association-slope-linked-list

class ListNode {
  // Definition for singly-linked list.
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null; // if the list has not any item
    ListNode? current = head; // calling the head of the list as a start point
    while (current?.next != null) {
      // looping on the list
      // the codition of the problem
      if (current?.val == current?.next!.val)
        current?.next = current.next!.next;
      else
        current = current?.next;
    }
    return head;
  }
}

void main() {}
