void main() {
  Map<String, String> Birthdays = {
    'Tanmay': '9 august',
    'Aditya': '23 March',
    'Shaunak': '29 March',
    'Kanak': '16 December',
    'Rohan': '18 May',
    'Parth': '13 May'
  };

  int count = 0;
  print("Friends and Birthdays\n---------------------");
  for (String i in Birthdays.keys) {
    count = count + 1;
    print("${i} | ${Birthdays[i]}");
  }
}
