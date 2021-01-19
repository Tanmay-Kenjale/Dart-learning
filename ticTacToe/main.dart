import 'utils.dart';
import 'dart:io';

void main() {
  Board gameBoard = Board();
  gameBoard.completeBoardSetup();
  String player = "O";
  int count = 0;
  gameBoard.dispBoard();

  bool isException = false;

  while (true) {
    if (!isException) {
      if (player == "O") {
        player = "X";
      } else {
        player = "O";
      }
    }

    print("Enter numbers only between 1...9");
    stdout.write("$player's turn: ");
    dynamic position = stdin.readLineSync();
    position = int.parse(position);
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
