import 'dart:io';

class Board {
  List _row1 = ["-", "-", "-"];
  List _row2 = ["-", "-", "-"];
  List _row3 = ["-", "-", "-"];

  List _board = [];

  void _completeBoard() {
    this._board = this._row1 + this._row2 + this._row3;
  }

  void dispBoard() {
    print("");
    print("");
    print(this._board[0] +
        " | " +
        this._board[1] +
        " | " +
        this._board[2] +
        "        1 | 2 | 3");
    print(this._board[3] +
        " | " +
        this._board[4] +
        " | " +
        this._board[5] +
        "        4 | 5 | 6");
    print(this._board[6] +
        " | " +
        this._board[7] +
        " | " +
        this._board[8] +
        "        7 | 8 | 9");
    print("");
    print("");
  }

  bool changeBoardElement(String playerName, int pos) {
    if (playerName != "X" && playerName != "O") {
      exit(0);
    }

    while (true) {
      if (this._board[pos - 1] == "X" || this._board[pos - 1] == "O") {
        print("");
        print("You cant place '$playerName' there. Try again");
        print("");
        return true;
      } else {
        this._board[pos - 1] = playerName;
        return false;
      }
    }
  }

  void completeBoardSetup() {
    this._completeBoard();
  }

  void checkDash() {
    if (!(this._board.contains("-"))) {
      print("");
      print("");
      print("**********");
      print("   |     |");
      print("   |     |");
      print("   |     |");
      print("   |     |");
      print("**********");
      print("");
      print("");
      exit(0);
    }
  }
}

List copyList(List originList, List copyTo) {
  copyTo.clear();
  for (dynamic i in originList) {
    copyTo += [i];
  }

  return copyTo;
}

bool checkAll(List list, dynamic element) {
  int length = list.length;
  int count = 0;

  for (dynamic i in list) {
    if (i == element) {
      count = count + 1;
    }
  }

  if (count == length) {
    return true;
  } else {
    return false;
  }
}

String checkForWin(Board boardObj, String playerName) {
  List column1 = [boardObj._board[0], boardObj._board[3], boardObj._board[6]];
  List column2 = [boardObj._board[1], boardObj._board[4], boardObj._board[7]];
  List column3 = [boardObj._board[2], boardObj._board[5], boardObj._board[8]];

  List row1 = [boardObj._board[0], boardObj._board[1], boardObj._board[2]];
  List row2 = [boardObj._board[3], boardObj._board[4], boardObj._board[5]];
  List row3 = [boardObj._board[6], boardObj._board[7], boardObj._board[8]];

  List diag1 = [boardObj._board[0], boardObj._board[4], boardObj._board[8]];
  List diag2 = [boardObj._board[2], boardObj._board[4], boardObj._board[6]];

  List cols = [
    checkAll(column1, playerName),
    checkAll(column2, playerName),
    checkAll(column3, playerName)
  ];

  List rows = [
    checkAll(row1, playerName),
    checkAll(row2, playerName),
    checkAll(row3, playerName)
  ];

  List diags = [checkAll(diag1, playerName), checkAll(diag2, playerName)];

  if (cols.contains(true)) {
    print("$playerName wins");
    exit(0);
  } else if (rows.contains(true)) {
    print("$playerName wins");
    exit(0);
  } else if (diags.contains(true)) {
    print("$playerName wins");
    exit(0);
  } else {
    boardObj.checkDash();
  }
}
