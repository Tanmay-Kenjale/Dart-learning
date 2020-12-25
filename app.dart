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

class Mamma