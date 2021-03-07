List<int> no9(List<int> nums) {
  List<int> result = [];
  for (int i in nums) {
    // Convert it to string to make it iterable
    String ele = (i.toString()[i.toString().length - 1]);

    if (ele == "9") {
      continue;
    }
    result.add(i);
  }

  return result;
}

void main(List<String> args) {
  print(no9([1, 2, 19]));
}
