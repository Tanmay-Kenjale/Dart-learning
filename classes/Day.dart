class Day {
  int _day = null;

  Day(int day) {
    if (day > 0 && day <= 31) {
      this._day = day;
    }
  }

  int getDay() {
    return this._day;
  }
}
