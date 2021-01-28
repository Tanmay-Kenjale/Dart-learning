import 'dart:io';


void timer(int noOfMinutes) {
  /* Be focused with a pomodoro */
  if (noOfMinutes > 180) {
    print("Maximum timing can be 3 hrs");
    exit(1);
  } else if (noOfMinutes < 10) {
    print("Common! You can be focused for atleast 10 mins");
    exit(1);
  } else if (noOfMinutes < 0) {
    print("Invalid value");
  }

  int seconds = 59;
  int minutes = noOfMinutes - 1;
  int hours = noOfMinutes ~/ 60;

  while (true) {
    if (noOfMinutes <= 60) {
      print("$minutes:$seconds");
      sleep(Duration(seconds: 1));
      seconds = seconds - 1;
      if (seconds == -1) {
        minutes = minutes - 1;
        seconds = 59;
      }
    } else {
      print("$hours:$minutes:$seconds");
      sleep(Duration(seconds: 1));
      seconds = seconds - 1;
      if (seconds == -1) {
        minutes = minutes - 1;
        seconds = 59;
      } else if (minutes == 0) {
        if (seconds == -1) {
          minutes = 59;
          seconds = 59;
          hours = hours - 1;
        }
      }
    }
    if (hours == 0 && minutes == 0 && seconds == 1) {
      print("Pomodoro over!");
      break;
    }
  }
}

void main() {
  timer(12);
}
