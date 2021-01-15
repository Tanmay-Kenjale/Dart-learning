void main() {
  double x = 5;
  // use of the toString method for making the variable x in a string form
  var y = x.toString();
  // #check
  if (y is String) {
    print("Yes it is a string");
  } else {
    print("No its not a string");
  }
}
