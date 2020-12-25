void main() {
  // Translating 'I am happy' to 'You am happy'...
  String test = "I am happy";
  List fromStr = test.split(' ');
  fromStr[0] = "You";
  String result = "";
  for (dynamic i in fromStr) {
    result = result + i + " ";
  }
  print(result);
}