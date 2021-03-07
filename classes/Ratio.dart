class RatioD {
  int _a = 0; // the first element of the ratio
  int _b = 0; // the second element of the ratio

  RatioD(int firstElement, int secondElement) {
    if (firstElement >= 1 && secondElement >= 1) {
      this._a = firstElement;
      this._b = secondElement;
    }
  }

  int getFirstElement() {
    return this._a;
  }

  int getSecondElement() {
    return this._b;
  }
}
