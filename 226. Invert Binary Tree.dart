class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

TreeNode? invertTree(TreeNode? root) {
  if (root == null) return root;
  TreeNode? left = invertTree(root.left);
  TreeNode? right = invertTree(root.right);
  root.left = right;
  root.right = left;
  return root;
}

void main(List<String> args) {}
