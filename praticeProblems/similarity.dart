void checkSimilarity(int x, int y, int z) {
  if (x == y && y == z) {
    print("all the same");
  } else if (x != y && y != z && x != z) {
    print("all are different");
  } else {
    print("neither");
  }
}


