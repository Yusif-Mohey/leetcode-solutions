class Solution:
    def minCost(self, grid: list[list[int]]) -> int:
        m, n = len(grid), len(grid[0])

        dp = [set() for _ in range(n)]
        dp[0].add(grid[0][0])

        for i in range(m):
            for j in range(n):
                if i == 0 and j == 0:
                    continue

                value = grid[i][j]
                reachable = dp[j] | (dp[j - 1] if j > 0 else set())

                dp[j] = {k ^ value for k in reachable}

        return min(dp[-1])


output1 = Solution().minCost([[1,2],[3,4]]) # Output: 6
output2 = Solution().minCost([[6,7], [5,8]]) # Output: 9
output3 = Solution().minCost([[2, 7, 5]]) # Output: 0
output4 = Solution().minCost([[26, 24, 3], [2, 22, 17]])  # Output: 5

print(output1)  # Output: 6
print(output2)  # Output: 9
print(output3)  # Output: 0
print(output4)  # Output: 5
