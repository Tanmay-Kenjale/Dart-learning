class Day {
  int _day = 0;

  Day(int day) {
    // for creating an empty object
    if (day >= 0 && day <= 31) {
      this._day = day;
    }
  }

  int getDay() {
    return this._day;
  }
}
