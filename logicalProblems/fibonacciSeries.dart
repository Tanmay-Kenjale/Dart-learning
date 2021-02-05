import '../functions/range.dart';

List fibonacci(int listLength) {
  int firstNo = 0;
  int secondNo = 1;

  List result = [];

  if (listLength <= 2) {
    return result;
  } else {
    result.add(firstNo);
    result.add(secondNo);
    int sum = 0;
    for (int i in range(0, listLength)) {
      sum = firstNo + secondNo;
      firstNo = secondNo;
      secondNo = sum;
      result.add(sum);
    }
  }

  return result;
}


