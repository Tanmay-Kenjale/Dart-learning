import 'dart:io';

class Rectangle {
  double _hieght;
  double _width;

  Rectangle(double hieght, double width) {
    this._hieght = hieght;
    this._width = width;
  }

  double getHieght() {
    return this._hieght;
  }

  double getWidth() {
    return this._width;
  }

  double calcArea() {
    return this._hieght * this._width;
  }

  double perimeter() {
    return 2 * (this._hieght + this._width);
  }
}

///////////////////////////////////////////////////////////////////////////////
String replaceOne(String str, String subject, String replacer) {
  Iterable<String> str1 = str.split('');
  String result = "";
  for (String i in str1) {
    if (i == subject) {
      result = result + replacer;
    } else {
      result = result + i;
    }
  }
  return result;
}

///////////////////////////////////////////////////////////////////////////////
void opMissis() {
  String str = "Mississippi";
  List list = str.split('');
  String result = "";

  for (int k = 0; k < list.length;) {
    if (list[k] == "i") {
      list[k] = "ii";
    }
    k = k + 1;
  }

  for (String k in list) {
    result = result + k;
  }

  print(result.length);

  for (int k = 0; k < list.length;) {
    if (list[k] == "s") {
      if (list[k - 1] == "s") {
        list[k] = "";
      }
    }
    k = k + 1;
  }

  list.remove("");
  result = "";

  for (String k in list) {
    result = result + k;
  }
  print(result.length);
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

bool funcTester(var func, var resultExpected) {
  if ((func()) == resultExpected) {
    return true;
  } else {
    return false;
  }
}

int ret3() {
  return 3;
}

void main() {
  print(funcTester(ret3, 3));
}
