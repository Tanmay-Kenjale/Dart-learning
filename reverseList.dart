List reverseList(List<int> list) {
  int i = list.length - 1;
  List result = [];
  while (i >= 0) {
    result.add(list[i]);
    i -= 1;
  }
  return result;
}

void main() {
  print(reverseList([1, 3, 2, 4, 6, 5, 8, 7, 9, 8, 0, 10, 32, 45, 67, 41, 68, 87, 54])); 
}
