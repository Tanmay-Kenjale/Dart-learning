String carTrain(
    int costPerGallon,
    double carMaintenancePerMile,
    int trainTicketPrice,
    int oneWayDistanceToTravel,
    int fuelEfficiencyPerGallon) {
  double totalMaintenance = oneWayDistanceToTravel * carMaintenancePerMile;
  double totalCost = (costPerGallon * oneWayDistanceToTravel) + totalMaintenance;
  if ((trainTicketPrice * 2) < (totalCost * 2)) {
    return 'Train';
  } else if ((trainTicketPrice * 2) == (totalCost * 2)) {
    return "Train";
  } else {
    return "Car";
  }
}

///////////////////////////////////////////////////////////////////////////////

void countMen(int maximum) {
  for (int count = 0; count < maximum;) {
    print(count);
    stdin.readLineSync();
    count = count + 1;
  }
  print("Maximum number of people reached!");
  exit(0);
}

///////////////////////////////////////////////////////////////////////////////

bool methodTester(var func, var resultExpected) {
  if ((func()) == resultExpected) {
    return true;
  } else {
    return false;
  }
}

///////////////////////////////////////////////////////////////////////////////

void opMissis() {
  String str = "Mississippi";
  List list = str.split('');
  String result = "";

  for (int k = 0; k < list.length;) {
    if (list[k] == "i") {
      list[k] = "ii";
    }
    k = k + 1;
  }

  for (String k in list) {
    result = result + k;
  }

  print(result.length);

  for (int k = 0; k < list.length;) {
    if (list[k] == "s") {
      if (list[k - 1] == "s") {
        list[k] = "";
      }
    }
    k = k + 1;
  }

  list.remove("");
  result = "";

  for (String k in list) {
    result = result + k;
  }
  print(result.length);
}

///////////////////////////////////////////////////////////////////////////////

String replaceOne(String str, String subject, String replacer) {
  Iterable<String> str1 = str.split('');
  String result = "";
  for (String i in str1) {
    if (i == subject) {
      result = result + replacer;
    } else {
      result = result + i;
    }
  }
  return result;
}
