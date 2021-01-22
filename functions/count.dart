dynamic div(int number, int toCount) {
  /* A division algorithm */
  int result = 0;

  if (number < toCount) {
    return "Number is smaller";
  } else {
    for (int i = 0; i <= number;) {
      result = result + 1;
      i = i + toCount;
    }
  }
  return result - 1;
}

void main(List<String> args) {
  print(div(100, 1));
}
