import 'dart:io';

int linearSearch(List subj, dynamic element) {
  /* Returns the index of the element from the list */

  int count = 0;

  if (subj.contains(element)) {
    for (dynamic i in subj) {
      count++;
      if (i == element) {
        break;
      }
    }
  } else {
    exit(1);
  }

  return count--;
}

void main() {
  print(linearSearch([1, 2, 3, 4, 5, 6, 7, 8, 9], 9));
}
