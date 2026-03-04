// https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/description/?envType=problem-list-v2&envId=dsa-sequence-valley-queue

///// its works but leeCode not Accepted it /////////////////
/*
import 'dart:collection';
int countStudents(List<int> students, List<int> sandwiches) {
  var studentQueue = Queue<int>.from(students);
  var sandwichQueue = Queue<int>.from(sandwiches);
  int consecutiveFailures = 0;
  while (studentQueue.isNotEmpty && consecutiveFailures < studentQueue.length) {
    if (studentQueue.first == sandwichQueue.first) {
      studentQueue.removeFirst();
      sandwichQueue.removeFirst();
      consecutiveFailures = 0;
    } else {
      var student = studentQueue.removeFirst();
      studentQueue.add(student);
      consecutiveFailures++;
    }
  }
  return studentQueue.length;
}
*/

int countStudents(List<int> students, List<int> sandwiches) {
  int count0 = students.where((s) => s == 0).length;
  int count1 = students.length - count0;
  for (int sandwich in sandwiches) {
    if (sandwich == 0) {
      if (count0 > 0)
        count0--;
      else
        break;
    } else {
      if (count1 > 0)
        count1--;
      else
        break;
    }
  }
  return count0 + count1;
}

/*
1- 
  1,1,0,0,1 ==> 0,0,0,1,1
2- 
  1,0,0,1,1 ==> 0,0,1,1
3- 
  0,0,1,1,1 ==> 0,1,1
4- 
  0,0,1,1,1 ==> 1,1
5- 
  0,0,1,1,1 ==> 1
6-
  0,0,1,1,1 ==> []
 */

void main(List<String> args) {
  print(countStudents([1, 1, 0, 0], [0, 1, 0, 1])); // 0
  print(countStudents([1, 1, 1, 0, 0, 1], [1, 0, 0, 0, 1, 1])); // 3
}
