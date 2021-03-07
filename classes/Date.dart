import 'Day.dart';
import 'Month.dart';

class Date {
  // for 
  Month _month = Month("");
  Day _day = Day(0);

  Date(Month month, Day day) {
    this._day = day;
    this._month = month;
  }

  String getDate() {
    return "${this._month.getMonth()} ${this._day.getDay()}";
  }
}
