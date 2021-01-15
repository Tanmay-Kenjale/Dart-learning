String replaceOne(String str, String subject, String replacer) {
  Iterable<String> str1 = str.split('');
  String result = "";
  for (String i in str1) {
    if (i == subject) {
      result = result + replacer;
    } else {
      result = result + i;
    }
  }
  return result;
}