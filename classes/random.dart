import 'dart:math';

class Rand {
  var _dt = DateTime.now();

  int randint(int max) {
    /* Provides a random number which is smaller than max.  */
    int result = _dt.microsecond;
    if (result > max) {
      bool done = false;
      while (!done) {
        result = result - (max);
        if (result < max) {
          done = true;
        }
      }
    }
    return result;
  }

  int random() {
    // Provides a totally random number. 
    return _dt.microsecond * 2;
  }

  List randRange(int min, int max, int skip) {
    /* Provides a list of numbers which starts with min and ends with max.  */
    int i = min;
    List list = [];
    while (i < max) {
      list.add(i);
      // To skip the mid numbers
      i = i + skip;
    }
    return list;
  }

  dynamic choice(List list) {
    /* Make a random choice from a list */
    int lengthList = list.length;
    int std = _dt.microsecond;
    if (list.length < std) {
      while (true) {
        std = std - lengthList;
        if (std < lengthList) {
          break;
        }
      }
    }
    return list[std];
  }

  void shuffle(List list) {
    /* Shuffle a list */
    var rd = Random();
    int listLength = list.length;
    for (int i = 0; i < 30;) {
      dynamic choice1 = rd.nextInt(listLength - 1);
      dynamic choice2 = rd.nextInt(listLength - 1);
      dynamic temp = list[choice1];
      list[choice1] = list[choice2];
      list[choice2] = temp;
      i = i + 1;
    }
  }
}