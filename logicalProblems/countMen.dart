import 'dart:io';

void countMen(int maximum) {
  /* A simple counter */
  for (int count = 0; count < maximum;) {
    print(count);
    stdin.readLineSync();
    count = count + 1;
  }
  print("Maximum number of people reached!");
  exit(0);
}
