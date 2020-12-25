import 'sortedTest.dart';

List swap(dynamic list) {
  for (dynamic i in list) {
    if (i is int) {
    } else {
      print("The lists should only consist of digits");
    }
  }
  int lastNumber = 0;
  for (dynamic i = 0; i < list.length;) {
    if (i < lastNumber) {
      if (i == 0) {
        int tmp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = tmp;
      } else {
        int temp = list[i];
        list[i] = lastNumber;
        list[i - 1] = temp;
      }
    }
    lastNumber = list[i];
    i = i + 1;
  }
  return list;
}

void main() {
  List<dynamic> subjectList = [1, 3, 2, 5, 4, 6, 9, 7, 8, 10, 12, 11, 14, 13, 16, 15];
  while (true) {
    subjectList = swap(subjectList);
    bool decBreak = sorted(subjectList);
    if (decBreak == true) {
      break;
    }
  }
  print(subjectList);
}