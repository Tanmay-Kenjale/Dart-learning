import 'dart:math';
import '../math/range.dart';
import 'strReplace.dart';

String strShuffle(String str) {
  Random rand = Random();

  for (int i in range(0, str.length)) {
    String subChar = str[rand.nextInt(str.length)];
    String subChar2 = str[rand.nextInt(str.length)];

    String temp = subChar;
    str = strReplace(str, subChar, subChar2);
    str = strReplace(str, subChar2, temp);
  }

  return str;
}

void main() {
  String name = "Tanmay";
  name = strShuffle(name);
  print(name);
}
