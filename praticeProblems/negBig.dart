void negBig(double x) {
  /* A program that determines whether an integer is positive, negative or 0 and 
  also tells if the number is less than 1 or more than 1,000,000. */

  if (x == 0.0) {
    print("X is 0");
  } else if (x < 0) {
    print("X is a negative number");
  } else {
    if (x < 1) {
      print("X is positive and less than 1");
    } else if (x > 1000000) {
      print("X is positive and more than 1000000");
    }
  }
}
