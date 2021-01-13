String opMississippi() {
  String str = "Mississippi";
  // '[]=' operator isn't defined for the string class.
  List list = str.split('');
  String result = "";

  for (int i = 0; i < list.length;) {
    if (list[i] == "i") {
      list += "i";
      print(list[i]);
    }
    i = i + 1;
  }

  print(list);

  for (int k = 0; k < list.length;) {
    if (list[k] == "s") {
      if (list[k - 1] == "s") {
        list[k] = "s";
        list[k - 1] = "";
      }
    }
    result = result + list[k];
    k = k + 1;
  }

  print(result.length);
  print(result);
}

void main() {
  opMississippi();
}
