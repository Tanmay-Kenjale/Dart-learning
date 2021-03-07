class Month {
  String _month = "";

  Month(String month) {
    List months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    if (months.contains(month)) {
      this._month = month;
    } else if (month == "") {
      // for creating an empty object
      this._month = "";
    }
  }

  String getMonth() {
    return this._month;
  }
}
