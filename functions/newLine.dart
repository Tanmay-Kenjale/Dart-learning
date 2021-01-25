import 'dart:io';

void newLine(List l) {
  /* it will print the elements of a list without going to a newline */

  for (dynamic i in l) {
    stdout.write(i);
  }
  print("");
}


