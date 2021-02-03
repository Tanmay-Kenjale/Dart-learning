import 'dart:math';

int min(List<int> lst) {
  /* Calculates the min val of a list */

  int min = lst[0];

  for (int i in lst) {
    if (i <= min) {
      min = i;
    }
  }

  return min;
}


