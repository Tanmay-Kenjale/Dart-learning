int index(dynamic list, dynamic subject) {
  for (dynamic i = 0; i <= list.length;) {
    if (list[i] == subject) {
      return i;
    }
    i = i + 1;
  }
}

bool sorted(dynamic list) {
  bool result = false;
  dynamic lastNum = 0;
  for (dynamic char in list) {
    result = false;
    if (char > lastNum) {
      result = true;
    }
    lastNum = char;
  }
  return result;
}
