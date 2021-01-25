List range(int min, int max) {
  List l = [];

  for (int i = min; i < max;) {
    l.add(i);
    i = i + 1;
  }

  return l;
}


