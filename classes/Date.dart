import 'Day.dart';
import 'Month.dart';

class Date {
  Month _month;
  Day _day;

  Date(Month month, Day day) {
    this._month = month;
    this._day = day;
  }

  String getDate() {
    return "${this._month.getMonth()} ${this._day.getDay()}";
  }
}

