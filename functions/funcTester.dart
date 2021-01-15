bool methodTester(var func, var resultExpected) {
  if ((func()) == resultExpected) {
    return true;
  } else {
    return false;
  }
}