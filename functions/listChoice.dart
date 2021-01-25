import 'dart:math';

dynamic choice(List list) {
  Random rand = Random();
  return list[rand.nextInt(list.length)];
}

