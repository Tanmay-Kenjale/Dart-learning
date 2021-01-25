class BankAccount {
  double _balance = 0;
  int _count = 0;

  BankAccount(double balance) {
    this._balance = this._balance + balance;
  }

  double getBalance() {
    return this._balance;
  }

  String deposit(double amount) {
    String result = "";
    if (amount > 0) {
      this._balance = this._balance + amount;
      result = "Money successfully deposited";
      this._count = this._count + 1;
    } else {
      result = "Money failed to deposit because amount is 0 or less than 0...";
    }

    return result;
  }

  String withdraw(double amount) {
    String result = "";
    if (amount > 0) {
      if (this._balance > amount) {
        this._balance = this._balance - amount;
        result = "Money successfully withdrawn...";
        this._count = this._count + 1;
      } else {
        result = "Your account doesn't have sufficient balance";
      }
    } else {
      result = "Amount should be greater than 0";
    }

    return result;
  }

  String savingsInterest(double interestRate) {
    String result = "";
    if (this._count > 7) {
      if (this._balance > 0) {
        double percentOf = (interestRate / 100) * this._balance;
        this._balance = this._balance + percentOf;
        result = "Transaction successfull";
      } else {
        result = "Account balance should be more than 0";
      }
    } else {
      result = "Account activity should be more than 7";
    }

    return result;
  }

  
}
