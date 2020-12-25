List removeDuplicates(List<dynamic> list) {
  List result_list = [];
  for (dynamic char in list) {
    bool decAction = result_list.contains(char);
    if (decAction == false) {
      result_list.add(char);
    }
  }
  return result_list;
}

void main() {
  print(removeDuplicates([1, 1, 1, 3, 3, 5]));
}
