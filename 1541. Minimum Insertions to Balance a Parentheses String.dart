void main(List<String> args) {
  print(Solution().minInsertions('(()))')); // 1
  print(Solution().minInsertions('())')); // 0
  print(Solution().minInsertions('))())(')); // 3
}

class Solution {
  int minInsertions(String s) {
    /*
    if we find  one '(' we should search for '))'
    becasuse foreach ( we have one )) but the ( onleft side of the string
    so first of all we need to check for its complete or not
    second
    */
    int insertionsResult = 0, leftOpenCounter = 0, i = 0;
    while (i < s.length) {
      String c = s[i];
      if (c == '(') {
        leftOpenCounter++;
        ++i;
      } else {
        if (leftOpenCounter > 0)
          leftOpenCounter--;
        else
          insertionsResult++;
        if (i < s.length - 1 && s[i + 1] == ')')
          i += 2;
        else {
          insertionsResult++;
          i++;
        }
      }
    }
    insertionsResult += leftOpenCounter * 2;
    return insertionsResult;
  }

  // int minInsertions(String s) {
  //   /*
  //       r: number of ')' currently needed
  //       res: number of insertions needed
  //       */

  //   int res = 0, r = 0;
  //   for (var c in s.split('')) {
  //     if (c == '(') {
  //       if (r % 2 != 0) res++;
  //       r--; // if r is odd (r&1), an isolated ')' before this '(' was never copmleted. We must close it immediately: res++, r--.
  //       r += 2; // Then add 2 to r (since '(' requires two ')').
  //     } else {
  //       if (--r < 0) res++;
  //       r += 2; // Decrement r. If r < 0, an upexpected ')' appeared without a '(', so insert a '(' before it: res++, and reset r += 2 (1 more ')' needed).
  //     }
  //   }
  //   print('$res and $r \n=======================================');
  //   return res; // insert any remaining required ')': res+r.
  // }
}
