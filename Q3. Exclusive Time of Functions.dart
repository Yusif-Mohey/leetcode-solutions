// https://leetcode.com/problems/exclusive-time-of-functions/?envType=problem-list-v2&envId=dsa-linear-shoal-stack

// List<int> exclusiveTime(int n, List<String> logs) {
//   List<int> reuslt = List.filled(n, 0);
//   for (var i = 0; i < logs.length; i++) {
//     int funcId = int.parse(logs[i][0]),
//         timesTamp = int.parse(logs[i][logs[i].length - 1]);

//     if (logs[i] == 'start') {

//     }
//     else {}
//   }
//   return reuslt;
// }

List<int> exclusiveTime(int n, List<String> logs) {
  List<int> executionTimes = List.filled(n, 0), callStack = [];
  int prevStartTime = 0;

  for (String log in logs) {
    List<String> parts = log.split(':');
    String callType = parts[1];
    int funcId = int.parse(parts[0]);
    int timestamp = int.parse(parts[2]);

    if (callType == "start") {
      if (callStack.isNotEmpty) {
        executionTimes[callStack.last] += timestamp - prevStartTime;
      }
      callStack.add(funcId);
      prevStartTime = timestamp;
    } else {
      executionTimes[callStack.removeLast()] += timestamp - prevStartTime + 1;
      prevStartTime = timestamp + 1;
    }
  }
  return executionTimes;
}

void main(List<String> args) {
  print(exclusiveTime(2, ["0:start:0", "1:start:2", "1:end:5", "0:end:6"]));
  print(
    exclusiveTime(1, [
      "0:start:0",
      "0:start:2",
      "0:end:5",
      "0:start:6",
      "0:end:6",
      "0:end:7",
    ]),
  ); // [8]
  print(
    exclusiveTime(2, [
      "0:start:0",
      "0:start:2",
      "0:end:5",
      "1:start:6",
      "1:end:6",
      "0:end:7",
    ]),
  ); // [7,1]
}
