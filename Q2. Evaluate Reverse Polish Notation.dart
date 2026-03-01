// https://leetcode.com/problems/evaluate-reverse-polish-notation/?envType=problem-list-v2&envId=dsa-linear-shoal-stack
int evalRPN(List<String> tokens) {
  List<int> listOfNumbers = [];
  for (var token in tokens) {
    if (token == '+' || token == '-' || token == '*' || token == '/') {
      int result = 0;
      int lNumber = listOfNumbers.removeLast(),
          fNumber = listOfNumbers.removeLast();
      switch (token) {
        case '+':
          result = fNumber + lNumber;
          break;
        case '-':
          result = fNumber - lNumber;
          break;
        case '*':
          result = fNumber * lNumber;
          break;
        case '/':
          result = (fNumber / lNumber).truncate();
          break;
        default:
          result = 0;
      }
      listOfNumbers.add(result);
    } else
      listOfNumbers.add(int.parse(token));
  }
  return listOfNumbers.last;
}

void main(List<String> args) {
  print(evalRPN(["2", "1", "+", "3", "*"])); // 9
  print(evalRPN(["4", "13", "5", "/", "+"])); // 6
  print(evalRPN(["4", "3", "-"])); // 1
  print(
    evalRPN([
      "10",
      "6",
      "9",
      "3",
      "+",
      "-11",
      "*",
      "/",
      "*",
      "17",
      "+",
      "5",
      "+",
    ]),
  ); // 22
}
