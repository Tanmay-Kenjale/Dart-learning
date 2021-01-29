import 'range.dart';

String removeString(String str, String object) {
  /* Removes a character from a string */

  String result = "";

  for (int i in range(0, str.length)) {
    if (str[i] != object) {
      result = result + str[i];
    }
  }

  return result;
}

void main() {
  print(removeString("9999,999,9,9,99,99", ","));
}
