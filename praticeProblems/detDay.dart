import '../classes/Date.dart';

void detDay(Date date) {
  if (date.getDate() == "January 1") {print("New Year’s Day");}
  else if (date.getDate() == "August 15") {print("Independence Day");}
  else if (date.getDate() == "November 11") {print("Veterans Day");}
  else if (date.getDate() == "December 25") {print("Christmas Day");}
}
