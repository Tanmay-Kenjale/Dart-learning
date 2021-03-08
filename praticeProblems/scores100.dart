bool scores100(List<int> scores) {
  bool result = false;

  for (int i = 0; i < scores.length;) {
    if (scores[i] == 100) {
      i++;
      if (scores[i] == 100) {
        result = true;
        break;
      } else {
        continue;
      }
    }
    i++;
  }

  return result;
}


