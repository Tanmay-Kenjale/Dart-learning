List<int> noNeg(List<int> nums) {
  /* returns a list of all positive numbers from the parameter. */
  List<int> result = [];
  for (int i in nums) {
    if (i > 0) {
      result.add(i);
    }
  }
  return result;
}
