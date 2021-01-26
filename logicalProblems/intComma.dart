/* The purpose of this program is to read an input between 1,000 and 999,999
and it prints the number without a comma */

import 'dart:io';
import '../functions/removeString.dart';

void main() {
  stdout.write("Enter a number with a comma: ");
  String str = stdin.readLineSync();
  str = removeString(str, ",");
  print(str);
}
