import 'dart:io';

class Board {
  List _board = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];

  void dispBoard() {
    /* displays the board in a more adorable form */
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
    /* It will change the element of the board to X or Y; after checking if the 
    element itself is not one of them.  */
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


  void checkDash() {
    /* It will check if the game is a draw */
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
  /* To copy a list */
  copyTo.clear();
  for (dynamic i in originList) {
    copyTo += [i];
  }

  return copyTo;
}

bool checkAll(List list, dynamic element) {
  /* To check if the element provided is the only element in the list.  */
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
  /* Checks if the game is over and declares who wins */
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
