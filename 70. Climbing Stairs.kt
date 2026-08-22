// int climbStairs(int n) {
//   if (n == 1) return 1;
//   int left = 1;
//   int right = 2;
//   for (int i = 3; i <= n; i++) {
//     int temp = right + left;
//     left = right;
//     right = temp;
//   }
//   return right;
// }

fun climbStairs(n: Int): Int {
    if (n == 1) return 1
    var left = 1
    var right = 2
    for(var i = 3;i <= n;i++){
        int temp = right + left 
        left = right
        right = temp
    }
    return right 
}

fun main() {
    printf(climbStairs(2)) // 2
    printf(climbStairs(3)) // 3
}