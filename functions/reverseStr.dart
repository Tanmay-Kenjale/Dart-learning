String reverseString(String subj) {
  /* Reverses a string completely.  */
  String result = "";

  // for avoiding range errors
  for (int i = subj.length - 1; i > 0;) {
    result = result + subj[i];
    // To get the elements of the string in a reverse order. 
    i = i - 1;
  }

  // The first letter of the subject wont be added in the loop. 
  return result + subj[0];
}


