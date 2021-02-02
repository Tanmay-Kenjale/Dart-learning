class Rupee {
  double _val = 0;

  Rupee(double val) {
    this._val = val;
  }

  double covertToPaise() {
    return this._val * 100;
  }

  double getVal() {
    return this._val;
  }
}
