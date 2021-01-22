import 'bankAccount.dart';

class CashRegister {
  var _money = BankAccount();
  String _records = "";

  void deposit(int amount) {
    this._money.deposit(amount);
    this._records = this._records + "deposited: ${amount}\n";
  }

  void withdraw(int amount) {
    this._money.withdraw(amount);
    this._records = this._records + "withdrawn: ${amount}\n";
  }

  void showRecords() {
    print(this._records);
  }
}

void main() {
  // The CashRegister is the user of the bankAccount class. 
  CashRegister reg = CashRegister();
  for (int i = 0; i < 10;) {
    reg.deposit(1000);
    reg.withdraw(400);
    i = i + 1;
  }
  reg.showRecords();
}
