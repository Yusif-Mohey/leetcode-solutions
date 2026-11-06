void main(List<String> args) {
  print(
    Solution().countServers(
      3,
      [
        [1, 3],
        [2, 6],
        [1, 5],
      ],
      5,
      [10, 11],
    ),
  ); // [1,2]
  print(
    Solution().countServers(
      3,
      [
        [2, 4],
        [2, 1],
        [1, 2],
        [3, 1],
      ],
      2,
      [3, 4],
    ),
  ); // [0,1]
}

class Solution {
  List<int> countServers(
    int n,
    List<List<int>> logs,
    int x,
    List<int> queries,
  ) {
    // 1. فرز السجلات حسب الوقت
    logs.sort((a, b) => a[1].compareTo(b[1]));

    // 2. فرز الاستعلامات مع الاحتفاظ بالترتيب الأصلي
    List<List<int>> indexedQueries = [];
    for (int i = 0; i < queries.length; i++) {
      indexedQueries.add([queries[i], i]);
    }
    indexedQueries.sort((a, b) => a[0].compareTo(b[0]));

    List<int> result = List.filled(queries.length, 0);

    // 3. النافذة المنزلقة: تسجيل عدد الطلبات لكل خادم في النافذة الحالية
    Map<int, int> serverCount = {};
    int activeServers =
        0; // عدد الخوادم التي استقبلت طلبات على الأقل مرة واحدة في النافذة
    int left = 0;
    int right = 0;

    for (var query in indexedQueries) {
      int qTime = query[0];
      int originalIndex = query[1];
      int windowStart = qTime - x;

      // قم بتوسيع الحد الأيمن: أضف جميع السجلات التي وقتها <= qTime
      while (right < logs.length && logs[right][1] <= qTime) {
        int serverId = logs[right][0];
        if ((serverCount[serverId] ?? 0) == 0) {
          activeServers++;
        }
        serverCount[serverId] = (serverCount[serverId] ?? 0) + 1;
        right++;
      }

      // قم بتقليص الحد الأيسر: أزل جميع السجلات التي وقتها < windowStart
      while (left < logs.length && logs[left][1] < windowStart) {
        int serverId = logs[left][0];
        serverCount[serverId] = serverCount[serverId]! - 1;
        if (serverCount[serverId] == 0) {
          activeServers--;
          serverCount.remove(serverId); // اختياري: حذف المفتاح لتوفير الذاكرة
        }
        left++;
      }

      // الخوادم التي لم تستقبل أي طلب = العدد الإجمالي - الخوادم النشطة
      result[originalIndex] = n - activeServers;
    }

    return result;
  }
}
