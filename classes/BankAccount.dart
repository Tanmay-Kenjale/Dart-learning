import '../math/range.dart';

class BankAccount {
  double _balance = 0;

  // account activity(withdrawing or depositing) should atleat be done 7 times before adding savings interest.
  int _count = 0;

  // creation of fds cant be more than 5
  int _fdCount = 0;

  double _fd1 = 0; // the fd's amount.
  double _fd2 = 0;
  double _fd3 = 0;
  double _fd4 = 0;
  double _fd5 = 0;

  List _fds = [];

  BankAccount(double balance) {
    this._balance = this._balance + balance;
    this._fds = [this._fd1, this._fd2, this._fd3, this._fd4, this._fd5];
  }

  double getBalance() {
    return this._balance;
  }

  String getFdAmount(int fdNo) {
    double fd = this._fds[fdNo - 1];
    return "\n$fd";
  }

  void _updateFds() {
    this._fd1 = this._fds[0];
    this._fd2 = this._fds[1];
    this._fd3 = this._fds[2];
    this._fd4 = this._fds[3];
    this._fd5 = this._fds[4];
  }

  String deposit(double amount) {
    /* to add some money */
    String result = "";
    if (amount > 0) {
      this._balance = this._balance + amount;
      result =
          "\nAmount deposited: $amount \nAccount balance: ${this._balance}";
      this._count = this._count + 1;
    } else {
      result = "Money failed to deposit because amount is 0 or less than 0...";
    }

    return result;
  }

  String withdraw(double amount) {
    /* to remove some money */
    String result = "";
    if (amount > 0) {
      if (this._balance > amount) {
        this._balance = this._balance - amount;
        result =
            "\nAmount withdrawn: $amount \nAccount balance: ${this._balance}";
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
    /* add interest to savings */
    String result = "";
    // for quick solution
    if (this._count >= 0) {
      if (this._balance > 0) {
        double percentOf = (interestRate / 100) * this._balance;
        this._balance = this._balance + percentOf;
        result = "\nInterest: $percentOf \nAccount Balance: ${this._balance}";
      } else {
        result = "Account balance should be more than 0";
      }
    } else {
      result = "Account activity should be more than 7 times";
    }

    return result;
  }

  String makeFd(double amount) {
    String result = "";

    this._fds[this._fdCount] = amount;
    this._fdCount = this._fdCount + 1;

    this._updateFds();
    result = "\nMade an fd successfully";

    return result;
  }

  String addFdsinterestToAccount(int fdNo, double interest) {
    String result = "";

    if (fdNo <= 4) {
      double fd = this._fds[fdNo - 1];
      if (fd > 0) {
        double percentOf = (interest / 100) * fd;
        this._balance = this._balance + percentOf;
        result =
            "\nFdAmount: $fd \nInterest upon that fd: $percentOf \nAccount balance: ${this._balance}";
      } else {
        result = "Value of fd is 0";
      }
    } else {
      result = "There can only be 5 fds";
    }

    return result;
  }

  String addFdsInterestToFd(int fdNo, double interest) {
    String result = "";

    if (fdNo <= 4) {
      double fd = this._fds[fdNo - 1];
      if (this._fds[fdNo - 1] > 0) {
        double percentOf = (interest / 100) * this._fds[fdNo - 1];
        this._fds[fdNo - 1] = this._fds[fdNo - 1] + percentOf;
        this._updateFds();
        result =
            "\nFd Amount before interest: $fd \nInterest upon that fd: $percentOf \nFd amount now: ${this._fds[fdNo - 1]}";
      } else {
        result = "Value of fd is 0";
      }
    } else {
      result = "There can only be 5 fds";
    }

    return result;
  }
}

void main(List<String> args) {
  BankAccount myAccount = BankAccount(1000);
  for (int i in range(0, 8)) {
    print(myAccount.deposit(10000));
  }

  for (int i in range(0, 3)) {
    print(myAccount.makeFd(3000));
  }

  for (int i in range(0, 8)) {
    print(myAccount.withdraw(1000));
  }

  for (int i in range(0, 8)) {
    print(myAccount.savingsInterest(7));
  }

  for (int i in range(0, 10)) {
    print(myAccount.deposit(10000));
  }

  for (int i in range(1, 4)) {
    print(myAccount.addFdsinterestToAccount(i, 7));
  }

  for (int i in range(1, 4)) {
    print(myAccount.addFdsInterestToFd(i, 7));
  }

  for (int i in range(1, 4)) {
    print(myAccount.getFdAmount(i));
  }

  for (int i in range(1, 4)) {
    print(myAccount.addFdsInterestToFd(1, 7));
  }
}
