List calcLB(int diagonal, List<int> ratio) {
  if (!(ratio.length == 2)) {
    print("Ratio should contain only 2 elements");
  }

  int diagSq = diagonal ^ 2;

  int ratio1 = ratio[0];
  int ratio2 = ratio[1];

  int sumSq = (ratio1 ^ 2) + (ratio2 ^ 2);

  double resultX1 = diagSq / sumSq;

  return [resultX1 * ratio1, resultX1 * ratio2];
}

void main() {
  
}
