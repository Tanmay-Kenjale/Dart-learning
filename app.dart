int index(dynamic list, dynamic subject) {
  for (dynamic i = 0; i <= list.length;) {
    if (list[i] == subject) {
      return i;
    }
    i = i + 1;
  }
}

bool sorted(dynamic list) {
  bool result = false;
  int button = min();


void main() {
  print(sorted([1, 3, 2, 5, 4, 6]));
}
