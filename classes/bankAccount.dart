class BankAccount {
  int _balance = 0;

  int getBalance() {
    return this._balance;
  }

  void withdraw(int amount) {
    if (amount > 0) {
      if (amount <= this._balance) {
        this._balance = this._balance - amount;
      } else {
        print("Account balance is less than withdrawal amount");
      }
    } else {
      print("Amount cannot be less than 0");
    }
  }

  void deposit(int amount) {
    if (amount > 0) {
      this._balance = this._balance + amount;
    } else {
      print("Amount cant be less tan 0");
    }
  }
}
