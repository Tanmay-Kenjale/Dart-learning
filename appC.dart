import 'dart:io';

///////////////////////////////////////////////////////////////////////////////

class Rectangle {
  double _height;
  double _width;

  Rectangle(double height, double width) {
    this._height = height;
    this._width = width;
  }

  double getHeight() {
    return this._height;
  }

  double getWidth() {
    return this._width;
  }

  double calcArea() {
    return this._height * this._width;
  }

  double perimeter() {
    return 2 * (this._height + this._width);
  }
}

///////////////////////////////////////////////////////////////////////////////

class nameDob {
  String _name;
  String _dob;

  nameDob(String name, String dob) {
    this._name = name;
    this._dob = dob;
  }

  String getName() {
    return this._name;
  }

  String getDob() {
    return this._dob;
  }

  String getData() {
    return "${this._name}: ${this._dob}";
  }
}

void nameDobUser() {
  var listNames = [
    nameDob('Tanmay', '9 august').getData(),
    nameDob('Aditya', '23 March').getData(),
    nameDob('Shaunak', '29 March').getData(),
    nameDob('Kanak', '16 December').getData(),
    nameDob('Rohan', '18 May').getData(),
    nameDob('Parth', '13 May').getData()
  ];
  for (String i in listNames) {
    print(i);
  }
}

///////////////////////////////////////////////////////////////////////////////

class HllLigtCirc {
  int _switch1State;
  int _switch2State;
  int _lampState;

  HllLigtCirc(int switch1State, int switch2State, int lampState) {
    if ((switch1State == 0 || switch1State == 1) &&
        (switch2State == 0 || switch2State == 1) &&
        (lampState == 0 || lampState == 1)) {
    } else {
      print("All parameters should be only 0 or 1");
    }
    this._switch1State = switch1State;
    this._switch2State = switch2State;
    this._lampState = lampState;
  }

  int getFirstSwitchState() {
    return this._switch1State;
  }

  int getSecondSwitchState() {
    return this._switch2State;
  }

  int getLampState() {
    return this._lampState;
  }

  void toggleFirstSwitch() {
    if (this._switch1State == 0) {
      this._switch1State = 1;
    } else {
      this._switch1State = 0;
    }
  }

  void toggleSecondSwitch() {
    if (this._switch2State == 0) {
      this._switch2State = 1;
    } else {
      this._switch2State = 0;
    }
  }
}

///////////////////////////////////////////////////////////////////////////////
