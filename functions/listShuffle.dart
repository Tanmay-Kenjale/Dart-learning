import 'dart:math';

void shuffle(List list) {
  /* Shuffle a list */
  var rd = Random();
  int listLength = list.length;
  for (int i = 0; i < 30;) {
    dynamic choice1 = rd.nextInt(listLength - 1);
    dynamic choice2 = rd.nextInt(listLength - 1);
    dynamic temp = list[choice1];
    list[choice1] = list[choice2];
    list[choice2] = temp;
    i = i + 1;
  }
}
