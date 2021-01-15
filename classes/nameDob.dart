class NameDob {
  String _name;
  String _dob;

  NameDob(String name, String dob) {
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

  void nameDobUser() {
    var listNames = [
      new NameDob('Tanmay', '9 august').getData(),
      new NameDob('Aditya', '23 March').getData(),
      new NameDob('Shaunak', '29 March').getData(),
      new NameDob('Kanak', '16 December').getData(),
      new NameDob('Rohan', '18 May').getData(),
      new NameDob('Parth', '13 May').getData()
    ];
    for (String i in listNames) {
      print(i);
    }
  }
}