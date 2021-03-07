List<int> noTeen(List<int> nums) {
  List<int> result = [];
  for (int i in nums) {
    if (i >= 13 && i <= 19) {
      continue;
    }
    result.add(i);
  }
  return result;
}

void main() {
  print(noTeen([12, 13, 19, 20]));
}
