List<String> noYY(List<String> list) {
  List<String> result = [];

  for (String i in list) {
    if (i.contains("yy")) {
      continue;
    } else {
      result.add(list[list.indexOf(i)] + "y");
    }
  }

  return result;
}

void main() {
  print(noYY(["yy", "c", "a", "b"]));
}
