import 'dart:io';

List<int> pointCopy(List copyFrom, int copyTill, bool fromTo) {
  List<int> copyTo = [];

  if (!(copyFrom.contains(copyTill))) {
    print("Provided element not in list");
  }
  for (int i in copyFrom) {
    if (fromTo) {
      if (i < copyTill) {
        copyTo += [i];
      } else {
        break;
      }
    } else {
      if (i >= copyTill) {
        copyTo += [i];
      }
    }
  }
  return copyTo;
}

void main() {
  List l = [];
  int element = 130;

  for (int i = 0; i < 300 + 1;) {
    l.add(i);
    i = i + 1;
  }
  List lCopy = l.cast();

  while (true) {
    int listMid = lCopy[lCopy.length ~/ 2];
    if (element < listMid) {
      lCopy = pointCopy(lCopy, listMid, true);
    } else if (listMid < element) {
      lCopy = pointCopy(lCopy, listMid, false);
    }

    print(lCopy);

    if (listMid == element) {
      print("$element is in the list");
      break;
    }
  }
}
