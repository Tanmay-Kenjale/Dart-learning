import '../functions/changeAll.dart';
import '../functions/newLine.dart';

void main(List<String> args) {
  List row1 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  List row2 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  List row3 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  List row4 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  List row5 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  List row6 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  List row7 = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];

  String blackTile = "■";
  String whiteTile = "□";

  for (int i = 0; i < row1.length;) {
    row1[i] = blackTile;
    row7[i] = blackTile;
    i = i + 1;
  }

  row2[0] = blackTile;
  row3[0] = blackTile;
  row4[0] = blackTile;
  row5[0] = blackTile;
  row6[0] = blackTile;

  row2[8] = blackTile;
  row3[8] = blackTile;
  row4[8] = blackTile;
  row5[8] = blackTile;
  row6[8] = blackTile;

  row4[3] = blackTile;
  row4[4] = blackTile;
  row4[5] = blackTile;

  changeAll(row1, "-", whiteTile);
  changeAll(row2, "-", whiteTile);
  changeAll(row3, "-", whiteTile);
  changeAll(row4, "-", whiteTile);
  changeAll(row5, "-", whiteTile);
  changeAll(row6, "-", whiteTile);
  changeAll(row7, "-", whiteTile);

  newLine(row1);
  print("");
  newLine(row2);
  print("");
  newLine(row3);
  print("");
  newLine(row4);
  print("");
  newLine(row5);
  print("");
  newLine(row6);
  print("");
  newLine(row7);
  print("");
}
