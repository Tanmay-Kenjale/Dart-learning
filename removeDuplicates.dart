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

bool checkForDuplicates(List list) {
  List utilList = [];
  bool utilBool = false;
  for (dynamic i in list) {
    for (dynamic char in utilList) {
      if (char == i) {
        return true;
      } else {
        utilBool = true;
      }
      if (utilBool == true) {
        return false;
      }
    }
    utilList.add(i);
  }
}

