def hasCycle(self, head) -> bool:
    """
    :type head: ListNode
    :rtype: bool
    """

    slow,fast = head, head 
    while fast and fast.next:
        fast = fast.next.next
        slow = slow.next
        if slow == fast:
            return True
    return False