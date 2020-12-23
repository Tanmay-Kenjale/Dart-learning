bool prime(int n, {bool ver = false}) {
  dynamic x = true;
  for (dynamic i = 2; i < n;) {
    if ((n % i) == 0) {
      x = false;
      break;
    }
    i = i + 1;
  }

  bool check() {
    if (x == true) {
      return true;
    } else {
      return false;
    }
  }

  return check();
}
