void moveBug(int initialPos) {
  
  if (initialPos < 10 && initialPos >= 0) {
    List list = ["-", "-", "-", "-", "-", "-", "-", "-", "-", "-"];
    String bug = "🐞";
    for (int i = initialPos; i < list.length;) {
      list[i] = bug;
      if (i > initialPos) {
        list[i - 1] = "-";
      }
      i = i + 1;
      print(list);
    }
  }
}