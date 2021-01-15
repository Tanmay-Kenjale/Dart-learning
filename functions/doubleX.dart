bool doubleX(String str) {
  List fromStr = str.split('');
  String lastNumber = "";
  bool result = false;
  for (String i in fromStr) {
    if (i == "x") {
      if (lastNumber == "x") {
        result = true;
        return true;
      }
    } else {
      result = false;
    }
    lastNumber = i;
  }
  return result;
}

void main() {
  print(doubleX("axxb"));
}
