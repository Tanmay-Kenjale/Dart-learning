void opMissis() {
  String str = "Mississippi";
  List list = str.split('');
  String result = "";

  for (int k = 0; k < list.length;) {
    if (list[k] == "i") {
      list[k] = "ii";
    }
    k = k + 1;
  }

  for (String k in list) {
    result = result + k;
  }

  print(result.length);

  for (int k = 0; k < list.length;) {
    if (list[k] == "s") {
      if (list[k - 1] == "s") {
        list[k] = "";
      }
    }
    k = k + 1;
  }

  list.remove("");
  result = "";

  for (String k in list) {
    result = result + k;
  }
  print(result.length);
}