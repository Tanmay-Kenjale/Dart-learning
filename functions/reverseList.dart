List reverseList(List<int> list) {
  int i = list.length - 1;
  List result = [];
  while (i >= 0) {
    result.add(list[i]);
    i -= 1;
  }
  return result;
}