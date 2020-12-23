bool sleepIn(String weekday, bool vacation) {
  List weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];
  bool ver = false;
  for (dynamic i in weekdays) {
    if (i == weekday) {
      ver = true;
    }
  }
  if (ver == false) {
    if (vacation == true) {
      return true;
    } else {
      return true;
    }
  } else {
    if (vacation == true) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  print(sleepIn("Saturday", false));
}
