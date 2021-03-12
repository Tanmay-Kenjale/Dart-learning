import 'dart:io';

List<int> pointCopy(List copyFrom, int copyTill, bool fromTo) {
  /* Copies a list up to a certain point.  */
  List<int> copyTo = [];

  if (!(copyFrom.contains(copyTill))) {
    print("Internal error!");
    exit(0);
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

void binarySearch(List<int> l, int element) {
  List lCopy = l.cast();
  bool notFound = false;

  while (true) {
    int listMid = lCopy[lCopy.length ~/ 2];

    // Parting the list. 
    if (element < listMid) {
      lCopy = pointCopy(lCopy, listMid, true);
    } else if (listMid < element) {
      lCopy = pointCopy(lCopy, listMid, false);
    }

    // Ending the loop if the element is found or not found. 
    if (listMid == element) {
      print("$element is in the list");
      break;
    } else {
      if (lCopy.length == 1) {
        print("$element is not in the list");
        break;
      }
    }
  }
}

void main() {
  List<int> l = [];
  for (int i = 0; i < 300 + 1;) {
    l.add(i);
    i = i + 1;
  }
  binarySearch(l, 301);
}
