import 'utils.dart';
import 'dart:io';

void main() {
  Board gameBoard = Board();
  String player = "O";
  int count = 0;
  gameBoard.dispBoard();

  bool isException = false;

  // A nested loop.
  while (true) {
    // If exception is not thier then only change player.
    if (!isException) {
      if (player == "O") {
        player = "X";
      } else {
        player = "O";
      }
    }

    // Taking the user input.
    print("Enter numbers only between 1...9");
    stdout.write("$player's turn: ");
    dynamic position = stdin.readLineSync();
    if (position.length == 0) {
      isException = true;
      continue;
    }

    position = int.parse(position);

    // This will avoid RangeErrors
    if (position > 9) {
      isException = true;
      continue;
    }

    isException = gameBoard.changeBoardElement(player, position);
    if (isException) {
      continue;
    }

    gameBoard.dispBoard();
    checkForWin(gameBoard, player);
  }
}
