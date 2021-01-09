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

void main() {
  print(carTrain(4, 0.5, 7, 10, 3));
}