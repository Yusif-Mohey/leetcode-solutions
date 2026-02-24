// From the (https://leetcode.com/problems/shuffle-the-array/description/?envType=problem-list-v2&envId=dsa-linear-shoal-array-i)

fun shuffle(nums: IntArray, n: Int): IntArray {
    val result = mutableListOf<Int>()
    for (i in 0 until n) {
        result.add(nums[i])
        result.add(nums[i + n])
    }
    return result.toIntArray()
}

fun main() {
    println(shuffle(intArrayOf(2, 5, 1, 3, 4, 7), 3).contentToString()) // output: [2, 3, 5, 4, 1, 7]
    println(shuffle(intArrayOf(1, 2, 3, 4, 4, 3, 2, 1), 4).contentToString()) // output: [1, 4, 2, 3, 3, 2, 4, 1]
    println(shuffle(intArrayOf(1, 1, 2, 2), 2).contentToString()) // output: [1, 2, 1, 2]
}