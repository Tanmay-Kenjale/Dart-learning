int length(dynamic dataset) {
  dynamic count = 0;
  for (dynamic i in dataset) {
    count = count + 1;
  }
  return count;
}
