String stringTimes(String body, int n) {
  if (n < 0) {
    return "Enter a prositive integer 'n'";
  }
  String result = "";
  for (int i = 0; i < n;) {
    result = result + body;
    i = i + 1;
  }
  return result;
}

void main() {
  print(stringTimes("Hi", 3));
}
