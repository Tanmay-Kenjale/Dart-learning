class RatioD {
  double _a; // the first element of the ratio
  double _b; // the second element of the ratio

  Ratio(double firstElement, double secondElement) {
    if (firstElement >= 1 && secondElement >= 1) {
      this._a = firstElement;
      this._b = secondElement;
    }
  }

  double getFirstElement() {
    return this._a;
  }

  double getSecondElement() {
    return this._b;
  }
}
