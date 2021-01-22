int strCount(String sub, String element) {
  /* It will take a string and count the no of occurences of the element in it. 
   */
  // This is the variable that will be the output.
  int result = 0;

  if (!(sub.contains(element))) {
    return result;
  }

  // For implimenting iterable.
  for (int i = 0; i < sub.length;) {
    if (sub[i] == element) {
      // Adding 1 to the result as per elements found.
      result = result + 1;
    }
    i = i + 1;
  }

  return result;
}
