List<String> noLong(List<String> list) {
  List<String> result = [];

  for (String i in list) {
    if (i.length >= 4) {
      continue;
    }
    result.add(i);
  }

  return result;
}

