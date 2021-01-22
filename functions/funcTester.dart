bool methodTester(var func, var resultExpected) {
  /* This will test a function.  */
  if ((func()) == resultExpected) {
    return true;
  } else {
    return false;
  }
}