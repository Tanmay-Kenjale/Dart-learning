class Month {
  String _month = null;

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
    }
  }

  String getMonth() {
    return this._month;
  }
}
