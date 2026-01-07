import 'dart:math';

class Solution {
  int maxLevelSum(TreeNode? root) {
    var sumsByLevel = <int>[];

    binaryTree2List(
      root!,
      doByLevel: (curLevel, siblings) {
        sumsByLevel.add(
          siblings
              .where((e) => e != null)
              .fold<int>(0, (result, node) => result + (node?.val ?? 0)),
        );
      },
      forgetResult: true,
    );
    var maximum = sumsByLevel.reduce(max);

    return sumsByLevel.indexWhere((e) => e == maximum) +
        1; // index is 0-based while level is 1-based
  }
}
