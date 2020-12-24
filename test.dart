import "sortedTest.dart";

List swap(dynamic list) {
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
  List<dynamic> subjectList = [1.54, 4.56, 3.54, 9.21, 7.68];
  while (true) {
    subjectList = swap(subjectList);
    bool decBreak = sorted(subjectList);
    if (decBreak == true) {
      break;
    }
  }
  print(subjectList);
}
