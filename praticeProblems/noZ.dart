List<String> noZ(List<String> list) {
  List<String> result = [];

  for (String i in list) {
    if (i.contains("z")) {
      continue;
    }
    result.add(i);
  }
  return result;
}

