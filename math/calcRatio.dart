import 'dart:io';
import '../classes/Ratio.dart';

RatioD calcRatio(int diagonal, RatioD ratio) {
  int diagSq = diagonal ^ 2;

  int ratioPart1 = ratio.getFirstElement();
  int ratioPart2 = ratio.getSecondElement();

  while (true) {
    if (((ratioPart1 ^ 2) + (ratioPart2 ^ 2)) == diagSq) {
      break;
    } else if (ratioPart1 < diagSq && ratioPart2 < diagSq) {
      ratioPart1++;
      ratioPart2++;
    } else {
      print("Invalid ratios");
      exit(0);
    }
  }

  RatioD result = RatioD(ratioPart1, ratioPart2);

  return result;
}

void main() {
  RatioD resultRatios = calcRatio(5, new RatioD(3, 4));
  print(resultRatios.getFirstElement());
  print(resultRatios.getSecondElement());
}
