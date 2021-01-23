void changeAll(List l, dynamic changeFrom, dynamic changeTo) {
  /* changes all occurences of 'changeFrom' to 'changeTo' */

  for (int i = 0; i < l.length;) {
    if (l[i] == changeFrom) {
      l[i] = changeTo;
    }
    i = i + 1;
  }
}

