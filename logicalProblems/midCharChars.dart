String midCharChars(String str) {
  /* Returns a single character if the length of string is odd. 
  If it is even returns 2 characters */

  String result = "";

  if (str.length % 2 != 0) {
    int length = str.length;
    String mid = str[length ~/ 2];
    result = result + mid;
  } else {
    int length = str.length;
    String secChar = str[length ~/ 2];
    String firsChar = str[(length ~/ 2) - 1];
    result = result + firsChar + secChar;
  }

  return result;
}

void main() {
  print(midCharChars("crates"));
}
 