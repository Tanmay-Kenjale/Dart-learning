class Paise {
  double _val = 0;

  Paise(double val) {
    this._val = val;
  }

  double convertToRupees() {
    return this._val / 100;
  }

  double getVal() {
    return this._val;
  }
}