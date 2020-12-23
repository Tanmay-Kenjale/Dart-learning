int factorial(int n) {
  dynamic result = 1;
  for (dynamic i = 1; i <= n;) {
    result = result * i;
    i += 1;
  }
  return result;
}


