int strIndex(String str, String element) {
  if (str.contains(element)) {
    for (int i = 0; i < str.length;) {
      if (str[i] == element) {
        return i;
      }
      i++;
    }
  }
}

// 1901312