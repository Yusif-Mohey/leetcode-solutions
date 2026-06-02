import 'dart:math';

int earliestFinishTime(
  List<int> landStartTime,
  List<int> landDuration,
  List<int> waterStartTime,
  List<int> waterDuration,
) {
  int minFinishTime = double.maxFinite.toInt();

  for (int i = 0; i < landStartTime.length; i++)
    for (int j = 0; j < waterStartTime.length; j++) {
      int landStart = landStartTime[i];
      int landFinish = landStart + landDuration[i];
      int waterStart = max(landFinish, waterStartTime[j]);
      int waterFinish = waterStart + waterDuration[j];
      int finishTime1 = waterFinish;
      int waterStart2 = waterStartTime[j];
      int waterFinish2 = waterStart2 + waterDuration[j];
      int landStart2 = max(waterFinish2, landStartTime[i]);
      int landFinish2 = landStart2 + landDuration[i];
      int finishTime2 = landFinish2;
      minFinishTime = min(minFinishTime, min(finishTime1, finishTime2));
    }

  return minFinishTime;
}

void main() {
  print(earliestFinishTime([2, 8], [4, 1], [6], [3])); // 9
  print(earliestFinishTime([5], [3], [1], [10])); // 14
}
