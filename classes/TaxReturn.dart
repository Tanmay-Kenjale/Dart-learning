import 'dart:io';

class TaxReturn {
  static final int _single = 1;
  static final int _married = 2;

  static final double _rate1 = 0.10;
  static final double _rate2 = 0.25;
  static final int _rate1SingleLimit = 32000;
  static final int _rate1MarriedLimit = 64000;

  double _income = 0;
  int _status = 0;

  TaxReturn(double income, int status) {
    /* Constructs a TaxReturn object for a given income 
    and marital status
     */

    this._income = income;
    this._status = status;
  }

  double getTax() {
    double tax1 = 0;
    double tax2 = 0;

    if (this._status == _single) {
      if (this._income <= _rate1SingleLimit) {
        tax1 = _rate1 * this._income;
      } else {
        tax1 = _rate1 * _rate1SingleLimit;
        tax2 = _rate2 * (this._income - _rate1SingleLimit);
      }
    } else {
      if (this._income <= _rate1MarriedLimit) {
        tax1 = _rate1 * this._income;
      } else {
        tax1 = _rate1 * _rate1MarriedLimit;
        tax2 = _rate2 * (this._income - _rate1MarriedLimit);
      }
    }
    return tax1 + tax2;
  }
}

void main(List<String> args) {
  print("Enter your income: ");
  String input = stdin.readLineSync();
  double income = double.parse(input);

  print("\n\nAre you married(Y/N): ");
  String input2 = stdin.readLineSync();
  int status;

  if (input2 == "Y") {
    status = TaxReturn._married;
  } else {
    status = TaxReturn._single;
  }

  TaxReturn incomeTaxReturn = new TaxReturn(income, status);

  stdout.write("\n\nTax: ");
  stdout.write("${incomeTaxReturn.getTax()}\n");
}
