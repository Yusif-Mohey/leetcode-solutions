class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isBalanced(TreeNode? root) {
    return checkBalance(root) != -1;
  }

  int checkBalance(TreeNode? node) {
    if (node == null) return 0;

    int leftHeight = checkBalance(node.left);
    if (leftHeight == -1) return -1;

    int rightHeight = checkBalance(node.right);
    if (rightHeight == -1) return -1;

    if ((leftHeight - rightHeight).abs() > 1) return -1;

    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }
}
