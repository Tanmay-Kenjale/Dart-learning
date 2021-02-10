List range(int min, int max) {
  /* returns a list which starts from the 'min' and ends with the 'max' */
  List l = [];

  for (int i = min; i < max;) {
    l.add(i);
    i = i + 1;
  }

  return l;
}


