ascdesc(int dig1, int dig2, int dig3) {
  /* will check if the three digits are in ascending or descending order */

  if (dig1 <= dig2 && dig2 <= dig3) {
    print("in order");
  } else if (dig1 >= dig2 && dig2 >= dig3) {
    print("in order");
  } else {
    print("not in order");
  }
}