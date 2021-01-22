import '../functions/stringCount.dart';

class romanNumber {
  // al the essential roman numerals
  String _one = "I";
  String _five = "V";
  String _ten = "X";
  String _fifty = "L";
  String _hundred = "C";
  String _fiveHs = "D";
  String _thousand = "M";

  dynamic toDigit(String numeral) {
    /* This will covert a roman numeral to a digit. 
    eg: x.toDigit("MDC") -> 1600 */

    int result = 0;

    // The strCount method will take 
    int countM = strCount(numeral, "M");
    int countD = strCount(numeral, "D");
    int countC = strCount(numeral, "C");
    int countL = strCount(numeral, "L");
    int countX = strCount(numeral, "X");
    int countV = strCount(numeral, "V");
    int countI = strCount(numeral, "I");

    // To see if it is framed correctly. 
    if (countD >= 2 ||
        countC >= 5 ||
        countL >= 2 ||
        countX >= 5 ||
        countV >= 2 ||
        countI >= 5) {
      return "Number not framed correctly";
    }

    // Implementing the addition without a loop. 
    result = result + (1000 * countM);
    result = result + (500 * countD);
    result = result + (100 * countC);
    result = result + (50 * countL);
    result = result + (10 * countX);
    result = result + (5 * countV);
    result = result + (1 * countI);

    return result;
  }
}
