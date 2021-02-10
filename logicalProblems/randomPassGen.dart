import 'dart:math';
import '../math/range.dart';
import '../functions/strShuffle.dart';

String randomPassGen() {
  Random rand = Random();

  String lAlphabets = "abcdefghijklmnopqrstuvwxyz";
  String uAlphabets = lAlphabets.toUpperCase();

  String symbols = "~`!@#\\/%^&*-=_+<>?|;:";

  String result = "";

  for (int i in range(0, 4)) {
    result += rand.nextInt(10).toString();
  }

  for (int i in range(0, 4)) {
    result += lAlphabets[rand.nextInt(lAlphabets.length)];
  }

  for (int i in range(0, 4)) {
    result += uAlphabets[rand.nextInt(uAlphabets.length)];
  }

  for (int i in range(0, 4)) {
    result += symbols[rand.nextInt(symbols.length)];
  }

  result = strShuffle(result);
  return result;
}

void main() {
  String va = """
    4 integers
    4 symbols
    4 lower alphabets
    4 upper alphabets
  """;

  print(randomPassGen());
}
