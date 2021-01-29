void posNeg(int digit) {
  /* determine whether a number is positive or negative.  */
  if (digit > 0) {
    print("Number is positive");
  } else if (digit < 0) {
    print("Number is negative");
  } else {
    print(null);
  }
}

void main(List<String> args) {
  posNeg(17);
}
