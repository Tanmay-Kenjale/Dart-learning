import '../math/range.dart';

String strReplace(String subj, String replaceFrom, String replaceTo) {
  if (subj.contains(replaceFrom)) {
    List fromSubj = subj.split("");
    for (int i in range(0, subj.length)) {
      if (fromSubj[i] == replaceFrom) {
        fromSubj[i] = replaceTo;
        break;
      }
    }
    String result = "";
    for (String i in fromSubj) {
      result += i;
    }
    return result;
  }
}


