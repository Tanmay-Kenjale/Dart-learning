import 'dart:io';

class VotingMachine {
  // there are 2 contestants that have stood up.
  int _demVal = 0;
  int _repVal = 0;
  String _democrat;
  String _republican;

  VotingMachine(String democrat, String republican) {
    this._democrat = democrat;
    this._republican = republican;
  }

  void vote() {
    bool done = false;
    while (!done) {
      print("Enter 'd' for democrat and 'r' for republican");
      stdout.write("Enter vote: ");
      String opinion = stdin.readLineSync();
      if (opinion == "quit") {
        done = true;
      } else if (opinion != "r" && opinion != "d") {
        print("You have entered wrong value");
        print("Only enter 'd' or 'r'");
        continue;
      }

      if (opinion == "r") {
        print(
            "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYour turn is over\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        this._repVal = this._repVal + 1;
      }

      if (opinion == "d") {
        print(
            "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYour turn is over\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        this._demVal = this._demVal + 1;
      }
    }
  }

  String showResults() {
    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    return "${this._republican}: ${this._repVal}\n${this._democrat}: ${this._demVal}";
  }
}

void main() {
  VotingMachine mac = VotingMachine("Tanmay", "nAN");
  mac.vote();
  print(mac.showResults());
}
