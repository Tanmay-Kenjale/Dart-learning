void incDec(int x, int y, int z) {
  if (x < y && y < z) {
    print("increasing");
  }
  else if (x > y && y > z) {
    print("decreasing");
  } else {
    print("neither")
  }
}

