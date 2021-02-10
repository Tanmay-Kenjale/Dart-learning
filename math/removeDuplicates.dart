List removeDuplicates(List subj) {
  /* Removes duplicates from a list */
  List result = [];

  for (dynamic i in subj) {
    if (!(result.contains(i))) {
      result.add(i);
    }
  }

  return result;
}

void main() {
}