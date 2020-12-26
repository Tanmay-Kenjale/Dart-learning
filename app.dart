import 'dart:io';

class student {
  int m1;
  int m2;
  int std;
  String div;
  int rollNo;
  Student(int m1, int m2, int std, String div, int rollNo) {
    if (m1 > 100) {
      print("Maths marks cannot be more than 100");
      exit(0);
    }
    if (m2 > 100) {
      print("Science marks cannot be more than 100");
      exit(0);
    }
    this.m1 = m1;
    this.m2 = m2;
    this.std = std;
    this.div = div;
    this.rollNo = rollNo;
  }

  int returnM1() {
    return this.m1;
  }

  int average() {
    return (this.m1 + this.m2) ~/ 2;
  }

  String predict() {
    if (this.average() > 75) {
      return "good";
    } else if (this.average() > 85) {
      return "best";
    } else if (this.average() < 75) {
      return "bad";
    }
  }

  String info() {
    return "Std: ${this.std}\nDiv: ${div}\nRollNo: ${this.rollNo}\nRecent exam performance: ${this.predict()}";
  }
}

class mammal {
  void walk() {
    print("Walk-Walk-Walk");
  }

  void run() {
    print("Run-Run-Run");
  }

  void angry() {
    print("😠️👿️");
  }
}

// inheritance
class dog extends mammal {
  /// we wont write anything over here///
}

class methods {
  void closed() {
    print("Closed");
  }

  void open() {
    print("Open");
  }

  void pending() {
    print("Pending");
  }

  void approved() {
    print("Approved");
  }

  void denied() {
    print("Denied");
  }

  void unknown() {
    print("Unknown");
  }
}

class weighingMachine {
  void throwSomeError() {
    throw FormatException("Kutra aahes tu");
  }
}

class tooMuchWeightException implements Exception {
  String message;
  tooMuchWeightException(message) {
    this.message = message;
  }
  String assignErrorMessage() {
    return message;
  }
}

class errorAndException {
  void raiseError() {
    throw FormatException("Gonecase");
  }

  void acceptError() {
    try {
      raiseError();
    } on FormatException {
      print("Nooooooob!");
    } finally {
      print("Exception handled!");
    }
  }
}


